import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

import javax.lang.model.util.ElementScanner14;

public class CompilationEngine{

    Scanner readFile;
    FileWriter writeFile;
    String tab;
    String currentLine;
    List<String> unaryOP = List.of("-","~");
    boolean doTerm;
    Integer doCount;

    public CompilationEngine(String input, String output){
        try{
            readFile = new Scanner(new File(input)); 
        }catch(FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        output =  output.substring(0, output.indexOf(".")) + "My.xml";
        try{
            writeFile = new FileWriter(output);
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        tab = "";
        doTerm = false;
        doCount = 0;
    }

    public void move(){
        if(readFile.hasNext()){
            currentLine = readFile.nextLine();
        }
    }

    public void increaseTab(){
        tab += "  "; 
    }

    public void decreaseTab(){
        tab = tab.substring(0, tab.length()-2);
    }

    public void write(String str){
        try{
            writeFile.write(tab + "<"+str+">\n");
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    public void process(String str){
        if(currentLine.contains(str)){
            try{
                writeFile.write(tab + currentLine + "\n");
            }catch (IOException e) {
                System.out.println("An error occurred.");
                e.printStackTrace();
            }
        }else{
            System.err.println("Syntax error");
        }
        move();
    }

    public void compileClass(){
        write("class");
        move();
        move();
        increaseTab();
        process("class");
        process("identifier");//className
        process("{");

        increaseTab();
        compileClassVarDec();

        compileSubroutine();
        decreaseTab();

        process("}");
        decreaseTab();
        write("/class");
        fileClose();
        
    }

    public void compileClassVarDec(){
        while(currentLine.contains("field")||currentLine.contains("static")){
            write("classVarDec");
            increaseTab();
            process(currentLine); //static|field
            process(currentLine); //type
            process("identifier");//varName
            while(currentLine.contains(",")){
                process(",");
                process("identifier");//varName
            }
            process(";");
            decreaseTab();
            write("/classVarDec");
        }
        
    }

    public void compileSubroutine(){
        while(currentLine.contains("constructor")||
                    currentLine.contains("function")||
                        currentLine.contains("method")){
            write("subroutineDec");
            increaseTab();
            process(currentLine);
            process(currentLine); //(void|type)
            process("identifier");//subroutineName

            process("(");
            compileParameterList();
            process(")");

            compileSubroutineBody();

            decreaseTab();
            write("/subroutineDec");
        }
    }

    public void compileParameterList(){
        write("parameterList");
        increaseTab();
        if(!currentLine.contains(")")){
            process(currentLine); //type
            process("identifier");//varName
        }
        while(!currentLine.contains(")")){
            process(",");
            process(currentLine); //type
            process("identifier");//varName
        }
        decreaseTab();
        write("/parameterList"); 
    }

    public void compileSubroutineBody(){
        write("subroutineBody");
        increaseTab();
        process("{");

        compileVarDec();
        compileStatements();

        process("}");
        decreaseTab();
        write("/subroutineBody"); 
    }

    public void compileVarDec(){
        while(currentLine.contains("var")){
            write("varDec");
            increaseTab();
            
            process("var");
            process(currentLine); //type
            process("identifier");//varName
            while(currentLine.contains(",")){
                process(",");
                process("identifier");//varName
            }

            process(";");
            decreaseTab();
            write("/varDec"); 
        }
    }

    public void compileStatements(){
        List<String> sment = List.of("let","if","while","do","return");
        write("statements");
        increaseTab();
        while(sment.stream().anyMatch(s->currentLine.contains(s))){
            if(currentLine.contains("let")) compileLet();
            if(currentLine.contains("if")) compileIf();
            if(currentLine.contains("while")) compileWhile();
            if(currentLine.contains("do")) compileDo();
            if(currentLine.contains("return")) compileReturn();
        }
        
        decreaseTab();
        write("/statements"); 
    }

    public void compileLet(){
        write("letStatement");
        increaseTab();

        process("let");
        process("identifier");//varName
        if(currentLine.contains("[")){
            process("[");
            compileExpression();
            process("]");
        } //expression
        process("=");
        compileExpression();
        process(";");

        decreaseTab();
        write("/letStatement"); 
    }

    public void compileIf(){
        write("ifStatement");
        increaseTab();
        process("if");
        process("(");
        compileExpression();//expression
        process(")");
        process("{");
        compileStatements();
        process("}");

        if(currentLine.contains("else")){
            process("else");
            process("{");
            compileStatements();
            process("}");
        }

        decreaseTab();
        write("/ifStatement"); 
    }

    public void compileWhile(){
        write("whileStatement");
        increaseTab();
        process("while");
        process("(");
        compileExpression();//Expression
        process(")");
        process("{");
        compileStatements();
        process("}");
        decreaseTab();
        write("/whileStatement"); 
    }

    public void compileDo(){
        write("doStatement");
        increaseTab();
        process("do");
        subroutineCall();//subroutineCall
        process(";");
        decreaseTab();
        write("/doStatement"); 
    }

    public void compileReturn(){
        write("returnStatement");
        increaseTab();
        process("return");
        if(currentLine.contains("identifier")||currentLine.contains("(")
            ||currentLine.contains("keyword")
            || currentLine.contains("integerConstant")
            ||currentLine.contains("stringConstant")
            ||unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
              compileExpression();  
        }
        process(";");
        decreaseTab();
        write("/returnStatement"); 
    }

    public void compileExpression(){
        List<String> op = List.of("+","-","*"," / ","&amp;","|","&lt;","&gt;","="); 
        
        write("expression");
        increaseTab();
        compileTerm();

        while(op.stream().anyMatch(o->currentLine.contains(o))){
            process(currentLine);
            compileTerm();
        }
        decreaseTab();
        write("/expression"); 
    }

    public void compileTerm(){
        write("term");
        increaseTab();
        
        if(currentLine.contains("identifier")){
            String lastLine = currentLine;
            move();
            if(currentLine.contains(".")){ //subroutineCall
                writeLastLine(lastLine);
                process(".");
                process("identifier");
                process("(");
                compileExpressionList();
                process(")");
            }else if(currentLine.contains("[")){
                writeLastLine(lastLine);
                process("[");
                compileExpression();
                process("]");
            }else if(currentLine.contains("(")){//subroutineCall
                writeLastLine(lastLine);
                process("(");
                compileExpressionList();
                process(")");
            }else{
                writeLastLine(lastLine);
            }
        }else if(currentLine.contains("(")){ //(expression)
            process("(");
            compileExpression();
            process(")");
        }else if(unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            process(currentLine);
            compileTerm();
        }else if(currentLine.contains("integerConstant")
                ||currentLine.contains("stringConstant")
                ||currentLine.contains("keyword")){
            process(currentLine);
        }
        
        decreaseTab();
        write("/term"); 
    }

    public void subroutineCall(){
        if(currentLine.contains("identifier")){
            String lastLine = currentLine;
            move();
            if(currentLine.contains(".")){ //subroutineCall
                writeLastLine(lastLine);
                process(".");
                process("identifier");
                process("(");
                compileExpressionList();
                process(")");
            }else if(currentLine.contains("(")){//subroutineCall
                writeLastLine(lastLine);
                process("(");
                compileExpressionList();
                process(")");
            }
        }
    }

    public void compileExpressionList(){
        write("expressionList");
        increaseTab();
        if(currentLine.contains("identifier")||currentLine.contains("(")
            ||currentLine.contains("keyword")
            || currentLine.contains("integerConstant")
            ||currentLine.contains("stringConstant")
            ||unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            compileExpression();
            while(currentLine.contains(",")){
                process(",");
                compileExpression();
            }
        } 
        decreaseTab();
        write("/expressionList"); 
    }

    public void writeLastLine(String str){
        try{
            writeFile.write(tab + str +"\n");
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    public void fileClose(){
        try{
            writeFile.close();
        }catch(IOException e){
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        readFile.close();
    }

}