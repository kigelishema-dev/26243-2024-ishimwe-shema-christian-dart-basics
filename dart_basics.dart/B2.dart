//reg number 26243/2024 
int countVowels(String text) {
  String lower =text.toLowerCase();
  int count =0;
 int i=0;
 while(i < lower.length){
  if('aeiou'.contains(lower[i])){
    count++;
  }
  i++;
 }
 return count;
}
void main(List<String> args) {
  print('ishimwe shema christian has ${countVowels('ishimwe shema christian')} vowels');
}