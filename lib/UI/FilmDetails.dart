import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Film.dart';

class FilmDetails extends StatelessWidget {
  const FilmDetails({Key? key, required this.title, required this.film}) : super(key: key);
  final String title;
  final Film film;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title ${film.titre}"),
      ),
      body: Center(
        child: Text(film.display()),
      ),
    );
  }
}