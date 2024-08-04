import 'package:flutter/material.dart';
import 'package:music_player/data/playlist_1.dart';
import 'package:music_player/data/playlist_2.dart';
import 'package:music_player/data/playlist_3.dart';
import 'package:music_player/data/playlist_4.dart';
import 'package:music_player/data/playlist_5.dart';
import 'package:music_player/data/playlist_6.dart';
import 'package:music_player/models/category_tile.dart';
import 'package:music_player/models/song.dart';

Color backgroundColor = Color.fromARGB(255, 24, 24, 24);
Color spotify_green = Colors.green;

List<String> category = ["Music", "Podcasts","Bollywood", "Rock"];

List<CategoryList> category_tile_List = [
  CategoryList(
      img_url:
          "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?size=626&ext=jpg&ga=GA1.1.1645449330.1699088562&semt=ais",
      tittle: "Music",
      color: Color(0xffDC148C),
      playlist: PlayList_1),
  CategoryList(
      img_url:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/podcast-poster-design-template-cdba2a9b0278c1e5e30c6b070d137385_screen.jpg?ts=1653450044",
      tittle: "Podcasts",
      color: Color(0xff006450),
      playlist: PlayList_2),
  CategoryList(
      img_url:
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00371645-baexpwyjal-portrait.jpg",
      tittle: "Live Events",
      color: Color(0xff8400E7),
      playlist: PlayList_3),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHBjHTVyqK_LqJNtZEOr-brruOlUVfSyZVYl5Dd34GqHF_LPojHowZw1kcOI0BSltdEZI&usqp=CAU",
      tittle: "Made For you",
      color: Color(0xff1E3264),
      playlist: PlayList_4),
  CategoryList(
      img_url:
          "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?w=360",
      tittle: "New Releases",
      color: Color(0xffE8115B),
      playlist: PlayList_5),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTadhVtZCWmZEGW4NoitSw0YtG2RtkPUs7_bQ&usqp=CAU",
      tittle: "Hindi",
      color: Color(0xffA56752),
      playlist: PlayList_6),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbr8Aj_-xmuS8B9Tfm_zq5c4CcU10EvaIuqA&usqp=CAU",
      tittle: "Punjabi",
      color: Color(0xff1E3264),
      playlist: PlayList_1),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIRT5Dl4EsCSAInTCOrwQxnGVLL43tmCPQxQ&usqp=CAU",
      tittle: "Tamil",
      color: Color(0xff148A08),
      playlist: PlayList_2),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLPkNR8PQabKPxCfo3VsT2YmRKE9g4UGLvCg&usqp=CAU",
      tittle: "Talugu",
      color: Color(0xffE91429),
      playlist: PlayList_3),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTKktW4EemgcxDvv7hVqXESpSzkErtses4gA&usqp=CAU",
      tittle: "Rock",
      color: Color(0xff8D67AB),
      playlist: PlayList_4),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXSEkcVDH74qvZXGmSsvR1bj6YxvH9graMDg&usqp=CAU",
      tittle: "Happy Cristmas",
      color: Color(0xff1E3264),
      playlist: PlayList_5),
  CategoryList(
      img_url:
          "https://m.media-amazon.com/images/I/61c7gYNOJNL._AC_UF1000,1000_QL80_.jpg",
      tittle: "Love",
      color: Color(0xff8C1932),
      playlist: PlayList_6),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaem2fiBAKkMErwnQaFc6k5e4le6haZC0shA&usqp=CAU",
      tittle: "Pop",
      color: Color(0xffBA5D07),
      playlist: PlayList_1),
  CategoryList(
      img_url: "https://i.ytimg.com/vi/6ejvwC165fU/maxresdefault.jpg",
      tittle: "Mood",
      color: Color(0xffDC148C),
      playlist: PlayList_2),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-D38lzG7RyX8F-1VV3ypZtoaABf1HJAFZw&usqp=CAU",
      tittle: "Radio",
      color: Color(0xff8D67AB),
      playlist: PlayList_3),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-D38lzG7RyX8F-1VV3ypZtoaABf1HJAFZw&usqp=CAU",
      tittle: "Last One ",
      color: Color(0xff1E3264),
      playlist: PlayList_4),
  CategoryList(
      img_url:
          "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?size=626&ext=jpg&ga=GA1.1.1645449330.1699088562&semt=ais",
      tittle: "Music",
      color: Color(0xff8C1932),
      playlist: PlayList_5),
  CategoryList(
      img_url:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/podcast-poster-design-template-cdba2a9b0278c1e5e30c6b070d137385_screen.jpg?ts=1653450044",
      tittle: "Podcasts",
      color: Color(0xffBA5D07),
      playlist: PlayList_6),
  CategoryList(
      img_url:
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00371645-baexpwyjal-portrait.jpg",
      tittle: "Live Events",
      color: Color(0xffE8115B),
      playlist: PlayList_1),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHBjHTVyqK_LqJNtZEOr-brruOlUVfSyZVYl5Dd34GqHF_LPojHowZw1kcOI0BSltdEZI&usqp=CAU",
      tittle: "Made For you",
      color: Color(0xffA56752),
      playlist: PlayList_2),
  CategoryList(
      img_url:
          "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?w=360",
      tittle: "New Releases",
      color: Color(0xff148A08),
      playlist: PlayList_3),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTadhVtZCWmZEGW4NoitSw0YtG2RtkPUs7_bQ&usqp=CAU",
      tittle: "Hindi",
      color: Color(0xffE91429),
      playlist: PlayList_4),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbr8Aj_-xmuS8B9Tfm_zq5c4CcU10EvaIuqA&usqp=CAU",
      tittle: "Punjabi",
      color: Color(0xffDC148C),
      playlist: PlayList_5),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIRT5Dl4EsCSAInTCOrwQxnGVLL43tmCPQxQ&usqp=CAU",
      tittle: "Tamil",
      color: Color(0xff006450),
      playlist: PlayList_6),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLPkNR8PQabKPxCfo3VsT2YmRKE9g4UGLvCg&usqp=CAU",
      tittle: "Talugu",
      color: Color(0xff8400E7),
      playlist: PlayList_1),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTKktW4EemgcxDvv7hVqXESpSzkErtses4gA&usqp=CAU",
      tittle: "Rock",
      color: Color(0xffE8115B),
      playlist: PlayList_2),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXSEkcVDH74qvZXGmSsvR1bj6YxvH9graMDg&usqp=CAU",
      tittle: "Happy Cristmas",
      color: Color(0xffA56752),
      playlist: PlayList_3),
  CategoryList(
      img_url:
          "https://m.media-amazon.com/images/I/61c7gYNOJNL._AC_UF1000,1000_QL80_.jpg",
      tittle: "Love",
      color: Color(0xffDC148C),
      playlist: PlayList_4),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaem2fiBAKkMErwnQaFc6k5e4le6haZC0shA&usqp=CAU",
      tittle: "Pop",
      color: Color(0xff1E3264),
      playlist: PlayList_5),
  CategoryList(
      img_url: "https://i.ytimg.com/vi/6ejvwC165fU/maxresdefault.jpg",
      tittle: "Mood",
      color: Color(0xff8D67AB),
      playlist: PlayList_6),
  CategoryList(
      img_url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-D38lzG7RyX8F-1VV3ypZtoaABf1HJAFZw&usqp=CAU",
      tittle: "Radio",
      color: Color(0xff148A08),
      playlist: PlayList_1),
];

List<Color> tile_colors = [
  Color(0xffDC148C),
  Color(0xff006450),
  Color(0xff8400E7),
  Color(0xff1E3264),
  Color(0xffE8115B),
  Color(0xffA56752),
  Color(0xff1E3264),
  Color(0xff148A08),
  Color(0xffE91429),
  Color(0xff8D67AB),
  Color(0xff1E3264),
  Color(0xff8C1932),
  Color(0xffBA5D07),
  Color(0xffDC148C),
  Color(0xff8D67AB),
  Color(0xff1E3264),
  Color(0xff8C1932),
  Color(0xffBA5D07),
  Color(0xffE8115B),
  Color(0xffA56752),
  Color(0xff148A08),
  Color(0xffE91429),
];
