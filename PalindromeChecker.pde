public void setup()
{
  String lines[] = {"test", "rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  //String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
    String backwards = reverse(noCapitals(noSpaces(onlyLetters(word))));
  if(backwards.equals(noCapitals(noSpaces(onlyLetters(word))))){
  return true;
}
  return false;
}
public String reverse(String word){
  String s = "";
  for(int i = word.length();i>0;i--){
    s += word.substring(i-1,i);
  }
  return s;
}
public String noCapitals(String word){
  return word.toLowerCase();
}
public String noSpaces(String word){
  String s = "";
  for(int i = 0;i<word.length();i++){
    if(word.charAt(i)!=' ')
    s += word.charAt(i);
  }
  return s;
}
public String onlyLetters(String sString){
  String s = "";
  for(int i = 0;i<sString.length();i++){
    
    if(Character.isLetter(sString.charAt(i)))
    s += sString.charAt(i);
    
  }
  return s;
}

