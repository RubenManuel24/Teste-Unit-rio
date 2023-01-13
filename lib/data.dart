class Data {
  final int dia;
  final int mes;
  final int ano;

  Data({required this.dia, required this.mes, required this.ano});

  String dataAno (){
    String? diaString;
    String? mesString;
    
    if(this.dia <= 9){
      diaString ="0" + "${dia.toString()}";
    }
    else{
      diaString = "${dia.toString()}";
    }
    

    if(this.mes <= 9){
      mesString = "0" + "${mes.toString()}";
    }
    else{
      mesString = "${mes.toString()}";
    }

    return "$diaString/$mesString/$ano";
  }

}
