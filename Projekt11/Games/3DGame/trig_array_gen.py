import math

MAX_INT = 2**15-1
MIN_INT = -MAX_INT
def clamp_int(val):
    return max(min(val, MAX_INT), MIN_INT)

def to_jack(name, a):
    assignments = "\n".join(f"let {name}[{i}] = {clamp_int(e)};" for i, e in enumerate(a))
    return f"""let {name} = Array.new({len(a)});
{assignments}
"""

def calc(f, n, fixpoint):
    return [round(fixpoint*f(2*math.pi*i/n)) for i in range(n)]

if __name__ == "__main__":
    pov = 60
    fixpoint = 100
    angle360 = 6 * pov
    with open("trig", 'w') as f:
        f.write("method void initTrigTable(){\n")
        f.write(to_jack("sin", calc(math.sin, angle360, fixpoint)))
        f.write("\n")
        f.write(to_jack("cos", calc(math.cos, angle360, fixpoint)))
        f.write("\n")
        f.write(to_jack("tan", calc(math.tan, angle360, fixpoint)))
        f.write("\n")
        f.write(to_jack("itan", calc(lambda x: 1/math.tan(x) if math.tan(x) != 0 else 2**15-1, angle360, fixpoint)))
        f.write("\n")
        f.write("return;\n}")
