import 'package:film_desk/Tools/Api_service.dart';
import 'package:flutter/material.dart';

import '../Model/Film.dart';
import 'AllFilms.dart';

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  List<Film> filmList = [];

  @override
  void initState(){
    super.initState();
    _getData();
  }

  void _getData() async {
    filmList = (await ApiService().getFilms())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  Film getFilm(index){
    return filmList[index];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Films",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: AllFilms(title: 'AllFilms', films: filmList),
    );
    throw UnimplementedError();
  }
}