import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:introduction_screen/introduction_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page(),
    );
  }
}

class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      pages: getpages(),
      onDone: () {
        // When done button is press
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const welcome(),
        ));
      },
      onSkip: () {
        // You can also override onSkip callback
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const welcome(),
        ));
      },
      showBackButton: false,
      showSkipButton: true,
      showNextButton: false,
      skip: const Text("Skip",style:TextStyle(color: Colors.black)),
      backStyle: ,
      next: const Icon(Icons.skip_next),
      done: const Text("Get Started",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.black,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }

  List<PageViewModel> getpages() {
    return [
      PageViewModel(
        //decoration: DecoratedBox(decoration: decoration),
        decoration: const PageDecoration(
          pageColor: Color.fromARGB(255, 243, 140, 140),
        ),
        image: Image.asset("assets/page1.png"),
        title: "Yoga Surge",
        body: "Welcome to Yoga World inhale the future, exale the past",
      ),
      PageViewModel(
        decoration: const PageDecoration(
          pageColor: Color.fromARGB(255, 233, 104, 205),
        ),
        image: Image.asset("assets/page2.png"),
        title: "Healthy Freaks Exercises",
        body: "Letting go is the hardest asana",
      ),
      PageViewModel(
        decoration: const PageDecoration(
          pageColor: Color.fromARGB(255, 120, 166, 242),
        ),
        image: Image.asset("assets/page3.png"),
        title: "Cycling",
        body:
            "You cannot always control what goes on outside. but you can always control what goes inside ",
      ),
      PageViewModel(
        decoration: const PageDecoration(
          pageColor: Color.fromARGB(255, 248, 196, 117),
        ),
        image: Image.asset("assets/page4.png"),
        title: "Meditation",
        body: "The longest journey of any person is the journey inward.",
      ),
    ];
  }
}

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 130, 246, 225),
        appBar: AppBar(
          title: const Text("Welcome"),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  Image(image: AssetImage("assets/welcome.png")),
                  Text("Ankit Sharma", style: TextStyle(fontSize: 20, color:Colors.blue),),
                  Text("I am from nepal", style: TextStyle(fontSize: 20, color: Colors.black))

                ],
              )),
        )
        );
  }
}
