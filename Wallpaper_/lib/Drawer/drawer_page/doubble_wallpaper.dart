import 'dart:ui';

import 'package:flutter/material.dart';

import '../../main.dart';

class DoubleWallpaper extends StatefulWidget {
  @override
  State<DoubleWallpaper> createState() => _DoubleWallpaperState();
}

var imageFrame = Builder(builder: (context) {
  return Container(
    height: MediaQuery.of(context).size.height / 1.8,
    width: MediaQuery.of(context).size.width / 1.8,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        // color: Colors.white38,
        image: DecorationImage(
            image: AssetImage("assets/image-removebg-preview (1).png"),
            fit: BoxFit.fill)),
  );
});

class _DoubleWallpaperState extends State<DoubleWallpaper> {
  List<Widget> _list = [
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671545564344-3a09344a4aca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671540329328-ea8411aab405?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671538856783-c0b123a2223f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671485684643-c9f157751007?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671207423882-27730584c46e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671533422496-4a7c5bd39393?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671522636176-b05c298f9963?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671513500083-d9dd6dbc1fec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671469905067-9b15f9335d23?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5MHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
    Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1671521277748-843a8128f7bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                  // color: Colors.black,
                ),
                imageFrame,
              ])
            ],
          ),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        // surfaceTintColor: Colors.black,
        title: Text(
          "Double Wallpaper",
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
      body: PageView(
        children: _list,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
