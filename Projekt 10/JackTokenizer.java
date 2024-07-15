import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class JackTokenizer{

    List<String> symbol = List.of("{","}","(",")","[","]",".",",",";","+","-","*","/","&","|","<",">","=","~");
    Scanner tokenFile;
    String currentLine;
    String[] currentWords;
    String currentWord;
    boolean multiComment;
    boolean isString;
    int posistion;

    public JackTokenizer(String fileName){
        posistion = 2;
        multiComment = false;
        isString = false;
        currentWords = "Hallo Schüss".split(" ");
        try{
            tokenFile = new Scanner(new File(fileName)); 
        }catch(FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }  
    }

    public boolean hasMoreTokens(){
        return tokenFile.hasNextLine();
    }

    public void advance(){
        if(!hasMoreTokens()){
            return;
        }
        //schaut ob wir am ende unseres aktuellen Zeile sind
        if(posistion >= currentWords.length){
            currentLine = tokenFile.nextLine().trim();
            if(!checkComment()){
                return;
            }
            currentLine = currentLine.split("//")[0];
            if(currentLine.length() > 1){
                for(int i = 0; i < symbol.size(); i++){
                    if(currentLine.contains(symbol.get(i))){
                        currentLine = currentLine.replace(symbol.get(i), " " + symbol.get(i) + " ");
                    }
                }
            }
            currentWords = currentLine.split(" ");
            posistion = 0;
        }
        //Tests if String
        if(currentWords[posistion].startsWith("\"")){
            currentWord = currentWords[posistion] + " ";
            while(!currentWords[posistion++].endsWith("\"")){
                currentWord = currentWord + currentWords[posistion] + " ";
            }
        }else{
            currentWord = currentWords[posistion++];
        }
    }

    public boolean checkComment(){
        while(currentLine.equals("")||currentLine.startsWith("\\")
        ||currentLine.startsWith("/**")||currentLine.startsWith("*/")
        ||currentLine.endsWith("*/")||currentLine.startsWith("*")){
            if(!hasMoreTokens()){
                return false;
            }
            currentLine = tokenFile.nextLine().trim();
        }
        return true;
    }

    public TType tokenType(){
        for(KWord kWord : KWord.values()){
            if(currentWord.equalsIgnoreCase(kWord.toString())) return TType.KEYWORD;
        }
        if(symbol.stream().anyMatch(s->s.equals(currentWord))) return TType.SYMBOL;
        if(currentWord.matches("\\d+")) return TType.INT_CONST;
        if(currentWord.startsWith("\"")) return TType.STRING_CONST;
        return TType.IDENTIFIER;
    }

    public String keyWord(){
        return currentWord;
    }

    public String symbol(){
        if(currentWord.equals("<")) return "&lt;";
        if(currentWord.equals(">")) return "&gt;";
        if(currentWord.equals("\"")) return "&quot;";
        if(currentWord.equals("&")) return "&amp;";
        return currentWord;
    }

    public String intVal(){
        return currentWord;
    }

    public String stringVal(){
        return currentWord.replaceAll("\"","");
    }

    public String identifier(){
        return currentWord;
    }
}
