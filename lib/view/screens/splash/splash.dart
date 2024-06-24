import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:text_repeater/view/screens/home/home_page.dart';

import '../../../model/utils/images.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    lowerBound: 0.5,
    duration: const Duration(seconds: 1),
    reverseDuration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true,min: 0.5);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () async {
      Get.offAll(() => const HomePage());
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Set your desired color here
        statusBarIconBrightness: Brightness.light,
        // Light or dark icons
      ),
    );
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),



            FadeTransition(
              opacity: _animation,
              child: const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(Images.logo,),
              ),
            ),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),



            FadeTransition(
              opacity: _animation,
              child: const Text("Text Repeater",style: TextStyle(color: Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(),

          ],
        ),
      ),
    );
  }
}
