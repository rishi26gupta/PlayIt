import 'package:flutter/material.dart';
import 'package:music_player/data/const.dart';
import 'package:music_player/data/playlist_1.dart';
import 'package:music_player/models/song.dart';
import 'package:music_player/music_player_screen.dart';

class PlaylistScreen extends StatelessWidget {
  final Color colors;
  final String tittle;
  final List<Song> playlist;

  const PlaylistScreen(
      {super.key,
      required this.colors,
      required this.tittle,
      required this.playlist});
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(bottom: 50),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: backgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: backgroundColor,
            pinned: true,
            snap: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                titlePadding:
                    const EdgeInsets.only(bottom: 10, left: 20, right: 10),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Flexible(
                      child: SizedBox(
                        height: 180,
                      ),
                    ),
                    Text(
                      tittle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${playlist.length} songs",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.shuffle,
                                color: spotify_green,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.play_circle,
                                size: 35,
                                color: spotify_green,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                background: Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          // backgroundColor,
                          colors, backgroundColor,
                        ],
                      ),
                    ),
                  ),
                )),
            expandedHeight: 250,
          ),
          SliverList.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MusicPlayerScreen(
                                  curr: playlist[index],
                                )));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Row(children: [
                      SizedBox(
                          height: 60,
                          width: 60,
                          child: Image.network(playlist[index].img)),
                      const SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Text(
                                playlist[index].song_tittle,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              playlist[index].singer_names,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.grey.shade500,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                );
              },
              itemCount: playlist.length),
        ],
      ),
    );
  }
}
