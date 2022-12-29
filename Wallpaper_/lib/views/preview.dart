import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:wallpaper/view/image_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Preview extends StatefulWidget {
  final String imgPath;
  final Widget page;

  Preview({@required this.imgPath, this.page});

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  var time = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: kIsWeb
            ? Image.network(widget.imgPath, fit: BoxFit.cover)
            : CachedNetworkImage(
                imageUrl: widget.imgPath,
                placeholder: (context, url) => Container(
                  color: Color(0xfff5f8fd),
                ),
                fit: BoxFit.cover,
              ),
      ),
      InkWell(
        onTap: () {
          Get.back();
          Get.to(Preview2(imgPath: widget.imgPath),
              transition: Transition.downToUp, duration: Duration(seconds: 1));
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => Preview2(imgPath: widget.imgPath),
          //     ));
        },
        child: Container(
          width: double.infinity,
          color: Colors.black.withOpacity(0.6),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: RichText(
                    text: TextSpan(
                  text: DateFormat("hh : mm").format(DateTime.now()),

                  // text: "${time.hour} : ",
                  // children: [TextSpan(text: "${time.minute}")],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                )),
              ),
              RichText(
                  text: TextSpan(
                text: DateFormat("E,dd MMMM, yyyy").format(DateTime.now()),
                style: GoogleFonts.athiti(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_drop_up_rounded,
                      color: Colors.white.withOpacity(0.50),
                      size: 30,
                    ),
                    Text(
                      "Tap to unlock",
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}

class Preview2 extends StatefulWidget {
  final String imgPath;

  const Preview2({Key key, this.imgPath}) : super(key: key);

  @override
  State<Preview2> createState() => _Preview2State();
}

class _Preview2State extends State<Preview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: kIsWeb
            ? Image.network(widget.imgPath, fit: BoxFit.cover)
            : CachedNetworkImage(
                imageUrl: widget.imgPath,
                placeholder: (context, url) => Container(
                  color: Color(0xfff5f8fd),
                ),
                fit: BoxFit.cover,
              ),
      ),
      InkWell(
        onTap: () {
          Get.back();
          Get.to(
              ImageView(
                imgPath: widget.imgPath,
              ),
              transition: Transition.fadeIn,
              duration: Duration(milliseconds: 1000));
          // Navigator.of(context).pushAndRemoveUntil(
          //     MaterialPageRoute(
          //         builder: (context) => ImageView(imgPath: widget.imgPath)),
          //     (route) => false);
          // Navigator.push(context, MaterialPageRoute(builder:  (context) => ImageView(imgPath: widget.imgPath),));
        },
        child: Container(
          width: double.infinity,
          // color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: RichText(
                  text: TextSpan(
                    text: DateFormat("hh : mm").format(DateTime.now()),
                    // text: "${time.hour} : ",
                    // children: [TextSpan(text: "${time.minute}")],
                    style: GoogleFonts.athiti(
                      textStyle: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset(1, 3),
                                blurRadius: 10)
                          ],
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image(
                          height: MediaQuery.of(context).size.height / 18,
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/685/685681.png")),
                      Image(
                          height: MediaQuery.of(context).size.height / 18,
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/2111/2111463.png")),
                      Image(
                          height: MediaQuery.of(context).size.height / 18,
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/2983/2983067.png")),
                      Image(
                          height: MediaQuery.of(context).size.height / 18,
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/3536/3536445.png")),
                      Image(
                          height: MediaQuery.of(context).size.height / 18,
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/566/566769.png")),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
