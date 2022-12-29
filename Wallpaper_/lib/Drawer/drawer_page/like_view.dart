import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import '../../main.dart';
import '../../Provider/like_provider.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final photos = provider.photos;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        // surfaceTintColor: Colors.black,
        title: Text(
          "My Favorite",
          style: LocalFont,
        ),
        // centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0.5),
        elevation: 2,
        flexibleSpace: ClipRect(
          clipBehavior: Clip.antiAlias,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Container(
              color: Colors.black.withAlpha(80),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: StaggeredGridView.countBuilder(
          staggeredTileBuilder: (index) => StaggeredTile.count(1, 1.6),
          itemCount: photos.length,
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(0.0),
          crossAxisCount: 3,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          itemBuilder: (context, index) {
            final photo = photos[index];
            return GridTile(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                      image: NetworkImage(photo), fit: BoxFit.cover),
                ),
                child: ClipRRect(
                  // color: Colors.black,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {
                        setState(() {});
                        provider.toggleFavorite(photo);
                      },
                      icon: provider.isExist(photo)
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 28,
                              shadows: [
                                Shadow(offset: Offset(1, 1), blurRadius: 10)
                              ],
                            )
                          : Icon(
                              Icons.favorite_border,
                            ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
