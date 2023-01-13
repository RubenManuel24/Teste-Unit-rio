import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:unity_test_study/person.dart';

void main() {

  final person = Person(name: "Ruben", age: 24, height: 1.70, weight: 65);

  group("person", (){

        test("IMC deve vir 22.49", (){
          expect(person.imc, equals(22.49));
        });

        test("Nome deve ser Ruben", (){
          expect(person.name, equals("Ruben"));
          expect(person.name, isA<String>());
          expect(person.name, contains("n"));
          expect(person.name, isNotNull);
        });

        test("Nome deve ser Ruben", (){
           expect(person.name, allOf([
            equals("Ruben"),
            isA<String>(),
            contains("n"),
            isNotNull

           ]));
        });

  });
   
   group("isOlder", (){
      
      test("Se a idade for maior que 18, entao isOlder deve ser TRUE", (){
        expect(person.isOlder(), isTrue);
      });

      test("Se a idade for igual que 18, entao isOlder deve ser TRUE", (){
        final person = Person(name: "Ruben", age: 18, height: 1.70, weight: 65);
        expect(person.isOlder(), isTrue);
      }, skip: "Falta terminar os casos deste teste ");

   });
  
  
}