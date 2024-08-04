import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';
import 'package:music_player/music_player_screen.dart';

class SongGrid extends StatelessWidget {
  final List<Song> list;

  const SongGrid({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3.2,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MusicPlayerScreen(
                            curr: list[index],
                          )),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 49, 48, 48),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 55,
                      child: Image.network(
                        list[index].img,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 80,
                      child: Text(
                        list[index].song_tittle,
                        maxLines: 2,
                        softWrap: true,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    // Icon(
                    //   Icons.more_horiz,
                    //   color: Colors.green.shade700,
                    //   size: 20,
                    // )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
