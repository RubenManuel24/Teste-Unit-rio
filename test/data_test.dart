import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:unity_test_study/data.dart';

void main() {

 var data = Data(dia: 09, mes: 01, ano: 2023);

  test("Se a data for 09/01/2023 então é TRUE", (){
     expect(data.dataAno(), "09/01/2023");
  });
   
   
  
}