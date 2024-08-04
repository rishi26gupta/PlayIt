import 'package:flutter/material.dart';
import 'package:music_player/data/const.dart';
import 'package:music_player/playlist_screen.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: backgroundColor,
      child: CustomScrollView(
        slivers: [
          const CustomAppBarr(),
          SliverGrid.builder(
              itemCount: category_tile_List.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.7,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12),
              itemBuilder: (context, index) {
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
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    decoration: BoxDecoration(
                        color: tile_colors[index % tile_colors.length],
                        borderRadius: BorderRadius.circular(5)),
                    child: Stack(
                      children: [
                        Text(
                          category_tile_List[index].tittle,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Positioned(
                          right: -35,
                          bottom: -8,
                          child: Transform.rotate(
                            angle: .5,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 80,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  category_tile_List[index].img_url,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}

class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({
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
        titlePadding: const EdgeInsets.only(bottom: 10, left: 0),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Flexible(
              child: SizedBox(
                height: 100,
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "What do you want to listen to?",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
        background: Container(
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.topLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.pink.shade200,
                      child: Text(
                        "R",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Search",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25,
              )
            ],
          ),
        ),
      ),
      expandedHeight: 150,
    );
  }
}
