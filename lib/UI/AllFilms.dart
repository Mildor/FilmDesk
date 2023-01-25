import 'package:film_desk/UI/FilmDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Film.dart';

class AllFilms extends StatelessWidget {
  const AllFilms({Key? key, required this.title, required this.films}) : super(key: key);
  final String title;
  final List<Film> films;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: films.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          return Card(
            child: TextButton.icon(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return FilmDetails(title: 'Détail de', film: films[index]);} ));}, icon: Image.network("https://image.tmdb.org/t/p/original${films[index].image}", scale:15,), label: Text(films[index].titre)),
          );
        },
      ),
    );
  }
}
