// //  const Text(
// //                       "Browser all ",
// //                       style: TextStyle(
// //                           fontSize: 15,
// //                           color: Colors.white,
// //                           fontWeight: FontWeight.bold),
// //                     ),
// //                     const SizedBox(
// //                       height: 15,
// //                     ),





// Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height * 10,
//                       child: GridView.builder(
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemCount: category_tile_List.length,
//                           gridDelegate:
//                               const SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 2,
//                                   childAspectRatio: 1.7,
//                                   crossAxisSpacing: 12,
//                                   mainAxisSpacing: 12),
//                           itemBuilder: (context, index) {
//                             return Container(
//                               padding: const EdgeInsets.only(top: 10, left: 10),
//                               decoration: BoxDecoration(
//                                   color:
//                                       tile_colors[index % tile_colors.length],
//                                   borderRadius: BorderRadius.circular(5)),
//                               child: Stack(
//                                 children: [
//                                   Text(
//                                     category_tile_List[index].tittle,
//                                     style: const TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white),
//                                   ),
//                                   Positioned(
//                                     right: -35,
//                                     bottom: -8,
//                                     child: Transform.rotate(
//                                       angle: .5,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                             color: Colors.grey.shade300,
//                                             borderRadius:
//                                                 BorderRadius.circular(10)),
//                                         height: 80,
//                                         width: 100,
//                                         child: ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                           child: Image.network(
//                                             category_tile_List[index].img_url,
//                                             fit: BoxFit.cover,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             );
//                           }),
//                     ),
//                   ],
//                 ),