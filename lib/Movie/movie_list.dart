import 'package:flutter/material.dart';

import '../movie_list.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Movie"),
      ),
      body: ListView(
        children: movies
            .map((movie) => ListTile(
                  title: Text(movie.name),
                  subtitle: Text(movie.category),
                  trailing: Text('${movie.rating}'),
                  leading: Image.asset(
                    movie.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
