import 'dart:convert';

import 'package:http/http.dart';
import 'package:unity_test_study/person.dart';

class PersonRepository {

   late final Client client;

  PersonRepository(this.client);

  Future<List<Person>> getPerson() async {
    
     final respose = await client.get(Uri.parse("https://63bf20a4e348cb0762219094.mockapi.io/apiv1/person"));
     if(respose.statusCode == 200){

      final jsonList = jsonDecode(respose.body) as List;
      return jsonList.map((e) => Person.fromMap(e)).toList();

     }
     else{
       throw Exception("Erro de internet");
     }
     

  }

}
