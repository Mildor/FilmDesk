import 'dart:convert';
import 'dart:developer';


List<Film> filmModelFromJson(String str) =>
    List<Film>.from(json.decode(str).map((x)=> Film.fromJson(x)));

String filmModelToJson(List<Film> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Film{
  late String titre, description, date, image;
  late double rating;

  Film({required this.titre, required this.description, required this.rating, required this.date, required this.image});

  factory Film.fromJson(Map<String, dynamic> json) =>
      Film(titre: json["title"], description: json["overview"], rating: json["vote_average"], date: json["release_date"], image:  json["backdrop_path"]);

  Map<String, dynamic> toJson() => {
    "title" : titre,
    "overview" : description,
    "vote_average" : rating,
    "release_date" : date,
    "backdrop_path" : image
  };

  String display(){
    return "Titre : $titre \n Description : $description \n Date de sortie : $date \n Note moyenne : $rating";
  }
}