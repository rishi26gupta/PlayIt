import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_player/data/const.dart';
import 'package:music_player/playlist_screen.dart';

class categoryList extends StatelessWidget {
  const categoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category_tile_List.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaylistScreen(
                    colors: category_tile_List[index].color,
                    playlist: category_tile_List[index].playlist,
                    tittle: category_tile_List[index].tittle,
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              height: 30,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 49, 48, 48),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  category_tile_List[index].tittle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
