public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{ 
  String bob = onlyLetters(word);
  String bill = bob.toLowerCase();
  String bub = noSpaces(bill);
  
if(bub.equals(reverse(bill))){
  return true;
}
return false;
}

public String noSpaces(String sWord){
return sWord.replaceAll(" ","");
}



public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
  
}


public String reverse(String str)
{
  String result = new String();
  for(int i = str.length()-1; i>=0; i--)
    result=result+str.charAt(i);
  return result;
}
