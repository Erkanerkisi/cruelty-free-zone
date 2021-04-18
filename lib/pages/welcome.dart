import 'package:cruelty_free_zone/localization/crueltyfreezone_localization.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<PageViewModel> pages = [
      PageViewModel(
        title: "Cruelty Free Zone",
        body: CrueltyFreeZoneLocalization.of(context).welcomePage1Body,
        image: Center(
          child: Image.asset("assets/images/rabbit3.png", height: 150),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.white,
        ),
      ),
      PageViewModel(
        title: "Save The Animals",
        body: CrueltyFreeZoneLocalization.of(context).welcomePage2Body,
        image: Center(
          child: Image.asset("assets/images/cute-rabbit.jpg", height: 150,),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.white,
        ),
      ),
      PageViewModel(
        title: "Stop Cruelty",
        body: CrueltyFreeZoneLocalization.of(context).welcomePage3Body,
        image: Center(
          child: Image.asset("assets/images/rabbit3.png", height: 150,),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.white,
        ),
      )
    ];

    return IntroductionScreen(
      pages: pages,
      onDone: () {
        Navigator.pushNamed(context, "/home");
      },
      onSkip: () {
        Navigator.pushNamed(context, "/home");
      },
      showSkipButton: true,
      skip: Text("Skip"),
      next: Text("Next"),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.blueAccent,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          )
      ),
    ); //Material App
  }
}
