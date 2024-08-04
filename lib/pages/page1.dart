import 'package:flutter/material.dart';
import 'package:music_player/data/const.dart';
import 'package:music_player/data/playlist_1.dart';
import 'package:music_player/data/playlist_2.dart';
import 'package:music_player/data/playlist_3.dart';
import 'package:music_player/data/playlist_4.dart';
import 'package:music_player/data/playlist_5.dart';
import 'package:music_player/widget/categoryList.dart';
import 'package:music_player/widget/horizontalList.dart';
import 'package:music_player/widget/songGrid.dart';

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SongGrid(
                      list: PlayList_3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HorizontalList(tittle: "Your Liked", songList: PlayList_2),
                    const SizedBox(
                      height: 20,
                    ),
                    HorizontalList(
                        tittle: "Recent Played", songList: PlayList_1),
                    const SizedBox(
                      height: 20,
                    ),
                    HorizontalList(tittle: "For You", songList: PlayList_4),
                    const SizedBox(
                      height: 25,
                    ),
                    HorizontalList(tittle: "Your Shows", songList: PlayList_5),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        )
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      actions: [Container()],
      backgroundColor: backgroundColor,
      pinned: true,
      snap: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                height: 110,
              ),
            ),
            categoryList(),
          ],
        ),
        background: Padding(
          padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Good Evening",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.history,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.pink.shade200,
                        child: const Text(
                          "R",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      expandedHeight: 120,
    );
  }
}
