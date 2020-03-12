import 'dart:io';

void main() {
  var n[] ;
  int count = int.parse(stdin.readLineSync());
  for (var i = 0; i < count; i++) {
   n[i] = int.parse(stdin.readLineSync()); 
  }  
   for (var i = 0; i < count; i++) {
     print(n[i]);
   }
    
} 
