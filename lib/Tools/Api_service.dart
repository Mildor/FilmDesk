import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../API/Tmdb.dart';
import '../Model/Film.dart';

class ApiService {
  Future<List<Film>?> getFilms() async{
    try{
      var url = Uri.parse(Tmdb.baseUrl);
      var response = await http.get(url);
      if (response.statusCode == 200){
        String jsonTest = jsonEncode(json.decode(response.body)["results"]);
        List<Film> model = filmModelFromJson(jsonTest);
        return model;
      }
    }catch(e){
      log(e.toString());
    }

    return null;
  }
}