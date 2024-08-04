import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class CategoryList {
  final String img_url;
  final String tittle;
  final Color color;
  final List<Song> playlist;
  CategoryList(
      {required this.img_url,
      required this.tittle,
      required this.color,
      required this.playlist});
}
