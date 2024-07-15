import java.util.ArrayList;
import java.util.List;

import javax.sound.sampled.LineUnavailableException;

public class SymbolTable{
    Integer fieldIndex, staticIndex, argumentIndex, localIndex;
    List<Symbol> table;

    public SymbolTable(){
        fieldIndex = 0;
        staticIndex = 0;
        argumentIndex = 0;
        localIndex = 0;
        table = new ArrayList<>();
    }

    public void reset(){
        fieldIndex = 0;
        staticIndex = 0;
        argumentIndex = 0;
        localIndex = 0;
        table.clear();
    }

    public void define(String name, String type, String kind){
        Symbol sy;
        switch (kind) {
            case "static":
                sy = new Symbol(name, type, kind, staticIndex++); 
                break;
            case "field":
                sy = new Symbol(name, type, kind, fieldIndex++); 
                break;
            case "arg":
                sy = new Symbol(name, type, "argument", argumentIndex++); 
                break;
            case "var":
                sy = new Symbol(name, type, "local", localIndex++); 
                break;
            default:
                sy = null;
                break;
        }
        table.add(sy);
    }

    public Integer varCount(String kind){
        Long count = table.stream().filter(s -> s.kind.equals(kind)).count();
        return count.intValue();
    }
    
    public String kindOf(String name){//??
        Symbol sy = table.stream().filter(s -> s.name.equals(name)).findFirst().orElse(null);
        if(sy == null){
            return "none";
        }else{
            return sy.kind;
        }
    }

    public String typeOf(String name){
        Symbol sy = table.stream().filter(s -> s.name.equals(name)).findFirst().get();
        return sy.type;
    }

    public Integer indexOf(String name){
        Symbol sy = table.stream().filter(s -> s.name.equals(name)).findFirst().get();
        return sy.index;
    }

    public Boolean exist(String name){
        return table.stream().filter(s -> s.name.equals(name)).findAny().isPresent();
    }

}