import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class JackAnalyzer{
    
    public static void main(String[] args){
        String fileName = args[0];
        if(fileName.endsWith(".jack")){
            translateFile(fileName);
        }else{
            File dir = new File(fileName);
            File[] listofFiles = dir.listFiles();
            for(int i = 0; i < listofFiles.length; i++){
                if(listofFiles[i].isFile() & listofFiles[i].getName().endsWith(".jack")){
                    translateFile(listofFiles[i].getPath());
                }
            }
        }
    }

    public static void translateFile(String fileName){
        String writeFileName =  fileName.substring(0, fileName.indexOf(".")) + "MyT.xml";
        try{
            FileWriter writeFile = new FileWriter(writeFileName);
            JackTokenizer tokenizer = new JackTokenizer(fileName);
            writeFile.write("<tokens>\n");
            while(tokenizer.hasMoreTokens()){
                tokenizer.advance();
                if(!tokenizer.currentWord.isEmpty()){
                    TType tType = tokenizer.tokenType();
                    String tTypeS = tType.toString().toLowerCase();
                    String r;
                    switch(tType){
                        case KEYWORD:
                            r = tokenizer.keyWord();
                            writeFile.write("<"+tTypeS+"> " + r +" </"+tTypeS+">\n");
                            break;
                        case SYMBOL:
                            r = tokenizer.symbol();
                            writeFile.write("<"+tTypeS+"> " + r +" </"+tTypeS+">\n");
                            break;
                        case INT_CONST:
                            r = tokenizer.intVal();
                            writeFile.write("<integerConstant> " + r +" </integerConstant>\n");
                            break;
                        case STRING_CONST:
                            r  = tokenizer.stringVal();
                            writeFile.write("<stringConstant> " + r +" </stringConstant>\n");
                            break;
                        case IDENTIFIER:
                            r = tokenizer.identifier();
                            writeFile.write("<"+tTypeS+"> " + r +" </"+tTypeS+">\n");
                            break;
                    }
                }
            }
            writeFile.write("</tokens>");
            writeFile.close();
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }

        //Compilation
        CompilationEngine engine = new CompilationEngine(writeFileName, fileName);
        engine.compileClass();
        
    }
}