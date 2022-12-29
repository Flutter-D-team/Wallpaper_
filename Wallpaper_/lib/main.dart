import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper/home.dart';
import 'package:wallpaper/Provider/like_provider.dart';

import 'Provider/Download_Provider.dart';

void main() {
  runApp(ListenableProvider(
    create: (context) => DownloadProvider(),
    child: MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  )
      // MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   home: MyApp(),
      // ),
      );
}

var TitleFont = Text(
  "4k Wallpaper",
  style: GoogleFonts.athiti(
    textStyle: TextStyle(
        fontSize: 27, color: Colors.black, fontWeight: FontWeight.w600),
  ),
);
var LocalFont = GoogleFonts.athiti(
  textStyle:
      TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
);
var Font = Text(
  "4k Wallpaper",
  style: GoogleFonts.athiti(
    textStyle: TextStyle(fontSize: 25, color: Colors.white),
  ),
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _a = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 700), () {
      setState(() {
        _a = !_a;
      });
    });
    Timer(Duration(milliseconds: 2000), () {
      Navigator.of(context)
          .pushReplacement(SlideTransitionAnimation(SecondPage()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn,
            width: _a ? _width : 0,
            height: _height,
            color: Colors.black,
            child: Container(
              child: Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/3881036/pexels-photo-3881036.jpeg?auto=compress&cs=tinysrgb&w=600'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text('4K Wallpaper',
                style: GoogleFonts.athiti(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 45,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class SlideTransitionAnimation extends PageRouteBuilder {
  final Widget page;

  SlideTransitionAnimation(this.page)
      : super(
            pageBuilder: (context, animation, anotherAnimation) => page,
            transitionDuration: Duration(milliseconds: 2000),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
              );
              return SlideTransition(
                position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(animation),
                textDirection: TextDirection.rtl,
                child: page,
              );
            });
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: '/',
    //   getPages: [
    //     GetPage(name: '/', page: () => MyApp()),
    //     GetPage(name: '/HomePage', page: () => Home()),
    //     // GetPage(name: '/SecondScreen', page: () => SecondScreen())
    //   ],
    //   home: Home(),
    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FavoriteProvider(),
        )
        // Provider(create: (context) => FavoriteProvider())
        // Provider(create: (context) => DownloadProvider()),
        // Provider(create: (context) => DownloadProvider())
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
// return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => FavoriteProvider(),
//         )
//       ],
//       child: GetMaterialApp(
//         // routes: {
//         // "/": (context) => Home(),
//         // },
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//           primaryColor: Colors.grey,
//         ),
//         home: Home(),
//   ),
//);
