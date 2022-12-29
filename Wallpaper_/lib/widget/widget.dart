import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wallpaper/models/photos_model.dart';

import '../view/image_view.dart';

Widget wallPaper(List<PhotosModel> listPhotos, BuildContext context) {
  return GridView.count(
      crossAxisCount: 3,
      reverse: false,
      childAspectRatio: 0.6,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: listPhotos.map(
        (PhotosModel photoModel) {
          return GridTile(
            child: GestureDetector(
              child: Hero(
                tag: photoModel.src.portrait,
                child: GestureDetector(
                  onTap: () {
                    Get.to(ImageView(imgPath: photoModel.src.portrait));
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: kIsWeb
                          ? Image.network(
                              photoModel.src.portrait,
                              height: 50,
                              width: 100,
                              fit: BoxFit.cover,
                            )
                          : CachedNetworkImage(
                              imageUrl: photoModel.src.portrait,
                              placeholder: (context, url) => Container(
                                    color: Color(0xfff5f8fd),
                                  ),
                              fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ).toList());
  // return GridView.count(
  //     crossAxisCount: 3,
  //     reverse: false,
  //     childAspectRatio: 0.6,
  //     physics: ClampingScrollPhysics(),
  //     shrinkWrap: true,
  //     padding: const EdgeInsets.all(4.0),
  //     mainAxisSpacing: 6.0,
  //     crossAxisSpacing: 6.0,
  //     children: listPhotos.map(
  //       (PhotosModel photoModel) {
  //         return GridTile(
  //           child: GestureDetector(
  //           child: GestureDetector(
  //             child: Hero(
  //               tag: photoModel.src.portrait,
  //               child: GestureDetector(
  //                 onTap: () {
  //                   Get.to(ImageView(imgPath: photoModel.src.portrait));
  //                 },
  //                 child: Container(
  //                   child: ClipRRect(
  //                     borderRadius: BorderRadius.circular(16),
  //                     child: kIsWeb
  //                         ? Image.network(
  //                             photoModel.src.portrait,
  //                             height: 50,
  //                             width: 100,
  //                             fit: BoxFit.cover,
  //                           )
  //                         : CachedNetworkImage(
  //                             imageUrl: photoModel.src.portrait,
  //                             placeholder: (context, url) => Container(
  //                                   color: Color(0xfff5f8fd),
  //                                 ),
  //                             fit: BoxFit.cover),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     ).toList());
  // return StaggeredGridView.countBuilder(
  //   staggeredTileBuilder: (index) => index % 10 == 0
  //       ? StaggeredTile.count(3, 2)
  //       : StaggeredTile.count(1, 1.7),
  //   // : StaggeredTile.count(2, index.isEven ? 1 : 1),
  //   // reverse: true,
  //   physics: ClampingScrollPhysics(),
  //   shrinkWrap: true,
  //   padding: EdgeInsets.all(0.0),
  //   crossAxisCount: 3,
  //   // reverse: true,
  //   crossAxisSpacing: 5,
  //   mainAxisSpacing: 5,
  //   itemCount: listPhotos.length,
  //   // itemCount: 25,
  //   itemBuilder: (context, index) => index % 10 == 0
  //       ? Container(
  //           color: Colors.red,
  //         )
  //       : GestureDetector(
  //           onTap: () {
  //             Get.to(ImageView());
  //           },
  //           child: Container(
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(8),
  //                 image: DecorationImage(
  //                     image: NetworkImage(
  //                       listPhotos[index].src.portrait,
  //                     ),
  //                     fit: BoxFit.cover)),
  //           ),
  //         ),
  // );
}

// Widget brandName() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(
//         "Wallpaper",
//         style: TextStyle(color: Colors.black87, fontFamily: 'Overpass'),
//       ),
//     ],
//   );
// }
// child: StaggeredGridView.countBuilder(
//   staggeredTileBuilder: (index) => index % 10 == 0
//       ? StaggeredTile.count(3, 2)
//       : StaggeredTile.count(1, 1.7),
//   // : StaggeredTile.count(2, index.isEven ? 1 : 1),
//   // reverse: true,
//   physics: ClampingScrollPhysics(),
//   shrinkWrap: true,
//   padding: EdgeInsets.all(0.0),
//   crossAxisCount: 3,
//   // reverse: true,
//   crossAxisSpacing: 5,
//   mainAxisSpacing: 5,
//   itemCount: listPhotos.length,
//   // itemCount: 25,
//   itemBuilder: (context, index) => index % 10 == 0
//       ? Container(
//           color: Colors.red,
//         )
//       : Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               image: DecorationImage(
//                   image: NetworkImage(
//                     listPhotos[index].src.portrait,
//                   ),
//                   fit: BoxFit.cover)),
//         ),
// )
