import java.io.FileWriter;
import java.io.IOException;

public class VMWriter{

    FileWriter writeFile;
    String out;

    public VMWriter(String output){
        String fileName =  output.substring(0, output.indexOf(".")) + ".vm";
        try{
            writeFile = new FileWriter(fileName);
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    public void write(String str){
        try{
            writeFile.write(str +"\n");
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    public void writePush(String segment, Integer index){
        out = "push " + segment + " " + index;
        write(out);
    }

    public void writePop(String segment, Integer index){
        out = "pop " + segment + " " + index;
        write(out);
    }

    public void writeArithmetic(String command){
        switch (command) {
            case "+":
                out = "add";
                break;
            case "-":
                out = "sub";
                break;
            case "*":
                out = "call Math.multiply 2";
                break;
            case "/":
            out = "call Math.divide 2";
                break;
            case "&amp;":
                out = "and";
                break;
            case "|":
                out = "or";
                break;
            case "&lt;":
                out = "lt";
                break;
            case "&gt;":
                out = "gt";
                break;
            case "=":
                out = "eq";
                break;
            case "neg":
                out = "neg";
                break;
            case "~":
                out = "not"; //???
                break;
            case "not":
                out = "not";
                break;
            default:
                break;
        }
        write(out);
    }

    public void writeLabel(String label, int counter){
        out = "label " + label + counter;
        write(out);
    }

    public void writeGoto(String label, int counter){
        out = "goto " + label +counter;
        write(out);
    }

    public void writeIf(String label, int counter){
        out = "if-goto " + label + counter;
        write(out);
    }

    public void writeCall(String name, int nArgs){
        out = "call " + name + " " + nArgs;
        write(out);
    }
    public void writeFunction(String name, int nVars){
        out = "function " + name + " " + nVars;
        write(out);
    }

    public void writeReturn(){
        write("return");
    }

    public void fileClose(){
        try{
            writeFile.close();
        }catch(IOException e){
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }
}