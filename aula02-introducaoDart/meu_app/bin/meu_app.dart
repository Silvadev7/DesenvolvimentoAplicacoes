void main() {
  Roupa camisa = Roupa("Camisa", 100, 10);
  print(camisa.exibirInfo());
  camisa.decrementaRoupa(5);
}


//Criar a classe
class Roupa{

  //Atributos
  String tipo;
  double valor;
  int quantidade;

  //Construtor
  Roupa(this.tipo, this.valor,this.quantidade);


  //Metodos
  //Exibir Valor Total
  double valorTotal(){
    double valorTotal = valor * quantidade;
    return valorTotal;
  }

  //Adicionar Camisa do Estoque
  void incrementaRoupa(int quantidade){
    if(quantidade > 0){
      this.quantidade += quantidade;
      print("inserido com sucesso");
    }

    else{
      print("quantidade invalida");
    }
    
  }
   
  //Remover Camisas do Estoque
  void decrementaRoupa(int quantidade){
    if(quantidade > 0 && this.quantidade >= quantidade){
      this.quantidade -= quantidade;
      print("Quantidade retirada");
    }
    else{
        print("Quantidade invalida");
    }
  }

  //Exibir Informações
  String exibirInfo(){
    return "Tipo: $tipo \n"
           "Valor: R\$ $valor\n"
           "Quantidade: $quantidade\n"
           "Valor total no estoque: R\$ ${valorTotal()}";
  }
}