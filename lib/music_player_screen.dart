import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/data/const.dart';
import 'package:music_player/models/song.dart';

class MusicPlayerScreen extends StatefulWidget {
  MusicPlayerScreen({super.key, required this.curr});
  Song curr;
  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerState(curr_song: curr);
}

class _MusicPlayerState extends State<MusicPlayerScreen> {
  bool val = false;
  final Song curr_song;
  final _player = AudioPlayer();
  _MusicPlayerState({required this.curr_song});

  // @override
  // void initState() async {
  //   // TODO: implement initState
  //   try {
  //     // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
  //     await _player.setAudioSource(AudioSource.uri(Uri.parse(
  //         "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3")));
  //   } catch (e) {
  //     print("Error loading audio source: $e");
  //   }

  //   print("Playing the mnusic ");
  //   await _player.play();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // backgroundColor,
            const Color.fromARGB(255, 255, 255, 255).withOpacity(.1),
            backgroundColor,
            Colors.black
          ],
        ),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.expand_more,
                color: Colors.white,
                size: 40,
              ),
              Text(
                "Music",
                style: TextStyle(
                    fontSize: 23,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .17,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.normal,
                  blurRadius: 7)
            ]),
            child: Image.network(
              curr_song.img,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.thumb_down_alt_outlined,
                  color: Colors.white,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 50,
                  // color: Colors.yellow,
                  width: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        curr_song.song_tittle,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 1,
                        style: const TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                        maxFontSize: 19,
                        minFontSize: 16,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      AutoSizeText(
                        curr_song.singer_names,
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          decoration: TextDecoration.none,
                        ),
                        maxFontSize: 12,
                        minFontSize: 10,
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ProgressBar(
              progress: Duration(seconds: 30),
              buffered: Duration(seconds: 60),
              total: Duration(seconds: 150),
              baseBarColor: Colors.grey.shade700,
              bufferedBarColor: Colors.grey.shade500,
              progressBarColor: Colors.white,
              thumbColor: Colors.white,
              barHeight: 4,
              thumbRadius: 7,
              timeLabelTextStyle: TextStyle(color: Colors.white),
              onSeek: (duration) {
                print('User selected a new time: $duration');
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shuffle,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                Icons.skip_previous,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.pause,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.skip_next,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.playlist_add,
                size: 25,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
