import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.lang.model.util.ElementScanner14;

public class CompilationEngine{

    Scanner readFile;
    String currentLine;
    List<String> unaryOP = List.of("-","~");
    List<String> os = List.of("Math","Memory","Screen","Output","Keyboard","String","Array","Sys");

    VMWriter writer;
    SymbolTable classTable;
    SymbolTable subroutineTable;
    String className;
    String subroutineName;
    String subroutinefuction;
    Integer labelCounter;

    public CompilationEngine(String input, String output){
        try{
            readFile = new Scanner(new File(input)); 
        }catch(FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        classTable = new SymbolTable();
        subroutineTable = new SymbolTable();
        writer = new VMWriter(output);
        labelCounter = 0;
    }

    public String removeExtraS(String l){
        return l.substring(l.indexOf(">") + 1, l.indexOf("</")).trim();
    }

    public void move(){
        if(readFile.hasNext()){
            currentLine = readFile.nextLine();
        }
    }

    public void process(String str){
        if(!currentLine.contains(str)){
            System.out.println(str);
            System.err.println("Code is Wrong");
        }
        move();
    }

    public void compileClass(){
        move();
        move();
        process("class");
        className = removeExtraS(currentLine);
        process("identifier");//className
        process("{");

        compileClassVarDec();

        compileSubroutine();

        process("}");
        fileClose();
        
    }

    public void compileClassVarDec(){
        String name;
        String type;
        String kind;
        while(currentLine.contains("field")||currentLine.contains("static")){
            kind = removeExtraS(currentLine);
            process(currentLine); //static|field
            type = removeExtraS(currentLine);
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            classTable.define(name, type, kind);
            while(currentLine.contains(",")){
                process(",");
                name = removeExtraS(currentLine);
                classTable.define(name, type, kind);
                process("identifier");//varName
            }
            process(";");
        }
    }

    public void compileSubroutine(){
        while(currentLine.contains("constructor")||
                    currentLine.contains("function")||
                        currentLine.contains("method")){
            subroutineTable.reset(); 
            
            subroutinefuction = currentLine;
            if(currentLine.contains("method")){
                subroutineTable.define("this", className, "arg");
            }
            process(currentLine);
            process(currentLine); //(void|type)
            subroutineName = className + "." 
                + currentLine.substring(currentLine.indexOf(">") + 1, currentLine.indexOf("</")).trim();
            process("identifier");//subroutineName

            process("(");
            compileParameterList();
            process(")");
            
            compileSubroutineBody();
        }
    }

    public void compileParameterList(){
        String name;
        String type;
        if(!currentLine.contains(")")){
            type = removeExtraS(currentLine);
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            subroutineTable.define(name, type, "arg");
        }
        while(!currentLine.contains(")")){
            process(",");
            type = removeExtraS(currentLine);
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            subroutineTable.define(name, type, "arg");
        }
    }

    public void compileSubroutineBody(){
        Integer counter = 0;
        process("{");
        
        counter += compileVarDec();
        //Counter kann benutzt werden für den Limit des Stacks!!!!!!!!!!!!!!!!!!!!!!!!!!S
        if(subroutinefuction.contains("constructor")){
            counter = classTable.varCount("field");
            writer.writeFunction(subroutineName, 0);
            writer.writePush("constant", counter);
            writer.writeCall("Memory.alloc", 1);
            writer.writePop("pointer", 0);
        }else if(subroutinefuction.contains("function")){
            writer.writeFunction(subroutineName, counter);
        }else if(subroutinefuction.contains("method")){
            writer.writeFunction(subroutineName, counter);
            writer.writePush("argument", 0);
            writer.writePop("pointer", 0);
        }
        compileStatements();

        process("}");
    }

    public Integer compileVarDec(){
        String name;
        String type;
        Integer counter = 0;
        while(currentLine.contains("var")){
            process("var");
            type = removeExtraS(currentLine);
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            subroutineTable.define(name, type, "var");
            counter++;
            while(currentLine.contains(",")){
                process(",");
                name = removeExtraS(currentLine);
                process("identifier");//varName
                subroutineTable.define(name, type, "var");
                counter++;
            }

            process(";");
        }
        return counter;
    }

    public void compileStatements(){
        List<String> sment = List.of("let","if","while","for","do","return");
        while(sment.stream().anyMatch(s->currentLine.contains(s))){
            if(currentLine.contains("let")) compileLet();
            if(currentLine.contains("if")) compileIf();
            if(currentLine.contains("while")) compileWhile();
            if(currentLine.contains("for")) compileFor(); 
            if(currentLine.contains("do")) compileDo();
            if(currentLine.contains("return")) compileReturn();
        }
    }

    public void compileLet(){
        Boolean isArray = false;
        process("let");
        String varName = currentLine;
        process("identifier");//varName
        if(currentLine.contains("[")){
            isArray = true;
            pushOutofTable(varName);
            process("[");
            compileExpression();
            process("]");
            writer.writeArithmetic("+");
        } //expression
        process("=");
        compileExpression();
        process(";");
        if(isArray){
            writer.writePop("temp", 0);
            writer.writePop("pointer", 1);
            writer.writePush("temp", 0);
            writer.writePop("that", 0);
        }else{
            popOutofTable(varName);
        }
    }

    public void compileIf(){
        Integer ifCounter = labelCounter + 2;
        labelCounter += 2;
        process("if");
        process("(");
        compileExpression();//expression
        process(")");
        writer.writeArithmetic("not");
        writer.writeIf("ifL", ifCounter);
        process("{");
        compileStatements();
        process("}");
        writer.writeGoto("ifL", ifCounter+1);

        writer.writeLabel("ifL", ifCounter);
        if(currentLine.contains("else")){
            process("else");
            process("{");
            compileStatements();
            process("}");
        }
        writer.writeLabel("ifL", ifCounter+1);
    }

    public void compileWhile(){
        Integer whileCounter = labelCounter + 2;
        labelCounter += 2;
        writer.writeLabel("whileL", whileCounter);
        process("while");
        process("(");
        compileExpression();//Expression
        process(")");
        writer.writeArithmetic("not");
        writer.writeIf("whileL", whileCounter + 1);
        process("{");
        compileStatements();
        process("}");
        writer.writeGoto("whileL", whileCounter);
        writer.writeLabel("whileL", whileCounter + 1);

    }

    public void compileFor(){
        Integer forCounter = labelCounter + 4;
        labelCounter += 4;
        //for (letStatement; expression; letStatement)
        process("for");
        process("(");
        compileLet();
        writer.writeLabel("forL", forCounter);
        compileExpression();
        process(";");
        writer.writeArithmetic("not");
        writer.writeIf("forL", forCounter + 3);
        writer.writeGoto("forL", forCounter + 1);
        writer.writeLabel("forL", forCounter + 2);
        compileLet();
        process(")");
        writer.writeGoto("forL", forCounter);
        
        writer.writeLabel("forL", forCounter + 1);
        process("{");
        compileStatements();
        process("}");
        writer.writeGoto("forL", forCounter + 2);
        writer.writeLabel("forL", forCounter + 3);
    }

    public void compileDo(){
        
        process("do");

        compileExpression();//subroutineCall //Verändert war subroutineCall
        
        process(";");
        
        writer.writePop("temp", 0);
    }

    public void compileReturn(){
        
        process("return");
        if(currentLine.contains("identifier")||currentLine.contains("(")
            ||currentLine.contains("keyword")
            || currentLine.contains("integerConstant")
            ||currentLine.contains("stringConstant")
            ||unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
              compileExpression();  
        }else{
            writer.writePush("constant", 0);
        }
        writer.writeReturn();
        process(";");
    }

    public void compileExpression(){
        List<String> op = List.of("+","-","*"," / ","&amp;","|","&lt;","&gt;","="); 
        compileTerm();
        
        while(op.stream().anyMatch(o->currentLine.contains(o))){
            String operation = removeExtraS(currentLine);
            process(currentLine);
            compileTerm();
            writer.writeArithmetic(operation);            
        }
    }

    public void compileTerm(){
        String name;
        Integer count = 0;
        if(currentLine.contains("identifier")){
            String lastLine = currentLine;
            move();
            if(currentLine.contains(".")){ //subroutineCall
                //Brauchen wir diese if abrfage überhaupt. pushOutOfTable 
                //ignoriert alle identifier die vorher nicht initialisiert wurden
                if(!os.stream().anyMatch(o->lastLine.contains(o))){
                    pushOutofTable(lastLine);
                }
                process(".");
                name = removeExtraS(currentLine);
                process("identifier");
                process("(");
                count += compileExpressionList();
                process(")");
                //Wenn lastLine nicht eine Klasse aus dem Os ist mach...
                if(!os.stream().anyMatch(o->lastLine.contains(o))){
                    //count + 1 weil es eine Methode aufrufen wird
                    if(subroutineTable.exist(removeExtraS(lastLine))){
                        writer.writeCall( subroutineTable.typeOf(removeExtraS(lastLine))+"."+name, count+1);
                    }else if(classTable.exist(removeExtraS(lastLine))){
                        writer.writeCall( classTable.typeOf(removeExtraS(lastLine))+"."+name, count+1);
                    }else{
                        //Hier wirt eine statische Funktion(in Jack function aufgerufen)
                        writer.writeCall(removeExtraS(lastLine) +"."+name, count);
                    }
                }else{
                    writer.writeCall(removeExtraS(lastLine) +"."+name, count);
                }
            }else if(currentLine.contains("[")){
                pushOutofTable(lastLine);
                process("[");
                compileExpression();
                process("]");
                writer.writeArithmetic("+");
                writer.writePop("pointer", 1);
                writer.writePush("that", 0);
            }else if(currentLine.contains("(")){//subroutineCall
                writer.writePush("pointer", 0);//Objekt als erste übergeben
                process("(");
                count += compileExpressionList();
                process(")");
                writer.writeCall(className+"."+removeExtraS(lastLine), count+1);
            }else{
                pushOutofTable(lastLine);
            }
        }else if(currentLine.contains("(")){ //(expression)
            process("(");
            compileExpression();
            process(")");
        }else if(unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            String uOP = removeExtraS(currentLine); 
            process(currentLine);
            compileTerm();
            if(uOP.contains("-")){
                uOP = "neg";
            }
            writer.writeArithmetic(uOP);
        }else if(currentLine.contains("stringConstant")){
            translateAndWriteString(currentLine);
            process(currentLine);
        }else if(currentLine.contains("integerConstant")
                    ||currentLine.contains("keyword")){
            if(currentLine.contains("true")){
                writer.writePush("constant", 1);
                writer.writeArithmetic("neg");
            }else if(currentLine.contains("false")){
                writer.writePush("constant", 0);
            }else if(currentLine.contains("null")){
                writer.writePush("constant", 0);
            }else if(currentLine.contains("this")){
                writer.writePush("pointer", 0);//setzt this als return vlaue
            }else{
                writer.writePush("constant", Integer.parseInt(removeExtraS(currentLine)));
            }
            process(currentLine);
        }
    }

    public Integer compileExpressionList(){
        Integer counter = 0;
        if(currentLine.contains("identifier")||currentLine.contains("(")
            ||currentLine.contains("keyword")
            || currentLine.contains("integerConstant")
            ||currentLine.contains("stringConstant")
            ||unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            counter++;
            compileExpression();
            while(currentLine.contains(",")){
                process(",");
                compileExpression();
                counter++;
            }
        } 
        return counter;
    }

    public void popOutofTable(String varName){
        String vName = removeExtraS(varName);
        if(!subroutineTable.kindOf(vName).equals("none")){
            writer.writePop(subroutineTable.kindOf(vName), subroutineTable.indexOf(vName));
        }else if((!classTable.kindOf(vName).equals("none"))){
            if((subroutinefuction.contains("method") || subroutinefuction.contains("constructor")) && classTable.kindOf(vName).contains("field")){     
                writer.writePop("this", classTable.indexOf(vName));
            }else{
                writer.writePop(classTable.kindOf(vName), classTable.indexOf(vName));
            }
            
        }
    }

    public void pushOutofTable(String varName){
        String vName = removeExtraS(varName);
        if(!subroutineTable.kindOf(vName).equals("none")){
            writer.writePush(subroutineTable.kindOf(vName), subroutineTable.indexOf(vName));
        }else if((!classTable.kindOf(vName).equals("none"))){
            if((subroutinefuction.contains("method") || subroutinefuction.contains("constructor")) && classTable.kindOf(vName).contains("field")){
                writer.writePush("this", classTable.indexOf(vName));
            }else{
                writer.writePush(classTable.kindOf(vName), classTable.indexOf(vName));
            }
        }
    }

    public void translateAndWriteString(String cline){
        String line = removeExtraS(cline).trim() + " ";
        writer.writePush("constant", line.length());
        writer.writeCall("String.new", 1);
        for(int i = 0; i < line.length(); i++){
            int ascii = (int) line.charAt(i);
            writer.writePush("constant", ascii);
            writer.writeCall("String.appendChar", 2);
        }
    }

    public void fileClose(){
        writer.fileClose();
        readFile.close();
    }

}