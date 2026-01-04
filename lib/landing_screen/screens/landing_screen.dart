import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:xchat/gen/assets.gen.dart';

import '../../home/screens/home_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late bool isFinished;

  @override
  void initState() {
    isFinished = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.background.path),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text(
                    "Seja você mesmo com Xchat",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Conversar usando avatar com emoji passa uma sensação diferente. Que tal experimentar?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 20),
                  SwipeableButtonView(
                    isFinished: isFinished,
                    onFinish: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()),
                      );

                    },
                    onWaitingProcess: () {
                      setState(() {
                        isFinished = true;
                      });
                    },
                    activeColor: Colors.blue,
                    buttonWidget: Icon(
                      CupertinoIcons.chevron_right_2,
                      color: Colors.grey,
                    ),
                    buttonText: "Arraste para começar",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
