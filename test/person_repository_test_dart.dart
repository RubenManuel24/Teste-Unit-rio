
import 'package:http/http.dart' as https;
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:unity_test_study/person_repository.dart';

class ClientMock extends Mock implements https.Client{}

void main() {

  final client = ClientMock();

       test("Deve retornar uma lista de Person", () async {

        final personTest = PersonRepository(client);
         
        when(() => client.get(Uri.parse("https://63bf20a4e348cb0762219094.mockapi.io/apiv1/person"))).thenAnswer((_) async => Response(jsonList.toString(), 200));

        final list = await personTest.getPerson();
         
         expect(list.isNotEmpty, isTrue);
         expect(list.first.name, equals("name 1"));

    });


    test("Deve der um erro FormatException", (){
         
      final personTest = PersonRepository(client);
      when(() => client.get(Uri.parse("https://63bf20a4e348cb0762219094.mockapi.io/apiv1/person"))).thenAnswer((_) async => Response(jsonList.toString(), 200));
      
      expect(() async => await personTest.getPerson(),  throwsFormatException);

    });

    
}


const jsonList = [{"name":"name 1","age":22,"height":64,"weight":51,"id":"1"},{"name":"name 2","age":16,"height":66,"weight":13,"id":"2"},{"name":"name 3","age":13,"height":76,"weight":7,"id":"3"},{"name":"name 4","age":34,"height":8,"weight":77,"id":"4"},{"name":"name 5","age":1,"height":99,"weight":44,"id":"5"},{"name":"name 6","age":9,"height":22,"weight":39,"id":"6"},{"name":"name 7","age":71,"height":81,"weight":55,"id":"7"},{"name":"name 8","age":56,"height":46,"weight":88,"id":"8"},{"name":"name 9","age":49,"height":42,"weight":88,"id":"9"},{"name":"name 10","age":35,"height":55,"weight":50,"id":"10"},{"name":"name 11","age":10,"height":62,"weight":98,"id":"11"},{"name":"name 12","age":29,"height":63,"weight":6,"id":"12"},{"name":"name 13","age":8,"height":46,"weight":2,"id":"13"},{"name":"name 14","age":84,"height":90,"weight":45,"id":"14"},{"name":"name 15","age":47,"height":7,"weight":76,"id":"15"},{"name":"name 16","age":73,"height":7,"weight":59,"id":"16"},{"name":"name 17","age":5,"height":60,"weight":83,"id":"17"},{"name":"name 18","age":11,"height":46,"weight":58,"id":"18"},{"name":"name 19","age":59,"height":30,"weight":61,"id":"19"},{"name":"name 20","age":62,"height":49,"weight":93,"id":"20"},{"name":"name 21","age":56,"height":37,"weight":78,"id":"21"},{"name":"name 22","age":26,"height":63,"weight":14,"id":"22"},{"name":"name 23","age":2,"height":32,"weight":85,"id":"23"},{"name":"name 24","age":5,"height":85,"weight":89,"id":"24"},{"name":"name 25","age":53,"height":84,"weight":79,"id":"25"},{"name":"name 26","age":13,"height":21,"weight":21,"id":"26"},{"name":"name 27","age":6,"height":92,"weight":32,"id":"27"},{"name":"name 28","age":45,"height":26,"weight":17,"id":"28"},{"name":"name 29","age":51,"height":21,"weight":85,"id":"29"},{"name":"name 30","age":56,"height":32,"weight":59,"id":"30"},{"name":"name 31","age":56,"height":92,"weight":1,"id":"31"},{"name":"name 32","age":30,"height":32,"weight":60,"id":"32"},{"name":"name 33","age":4,"height":80,"weight":39,"id":"33"},{"name":"name 34","age":62,"height":61,"weight":81,"id":"34"},{"name":"name 35","age":78,"height":30,"weight":95,"id":"35"},{"name":"name 36","age":62,"height":90,"weight":5,"id":"36"},{"name":"name 37","age":17,"height":59,"weight":77,"id":"37"},{"name":"name 38","age":38,"height":93,"weight":38,"id":"38"},{"name":"name 39","age":40,"height":91,"weight":31,"id":"39"},{"name":"name 40","age":43,"height":60,"weight":59,"id":"40"},{"name":"name 41","age":73,"height":43,"weight":44,"id":"41"},{"name":"name 42","age":88,"height":93,"weight":5,"id":"42"},{"name":"name 43","age":77,"height":95,"weight":22,"id":"43"},{"name":"name 44","age":90,"height":4,"weight":98,"id":"44"},{"name":"name 45","age":15,"height":56,"weight":19,"id":"45"},{"name":"name 46","age":46,"height":66,"weight":73,"id":"46"},{"name":"name 47","age":81,"height":88,"weight":59,"id":"47"},{"name":"name 48","age":95,"height":67,"weight":27,"id":"48"}];