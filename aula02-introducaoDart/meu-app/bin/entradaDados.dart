import 'dart:io';

void main(){
  print("digite o seu nome: ");
  String nome = stdin.readLineSync()!;

  print("digite a sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("digite sua altura: ");
  double altura = double.parse(stdin.readLineSync()!); 

  print("seu nome é $nome");
  print("sua idade é: $idade");
  print("sua altura é: $altura");
}
