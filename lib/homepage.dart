import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smoothdotindicator/pages/page1.dart';
import 'package:smoothdotindicator/pages/page2.dart';
import 'package:smoothdotindicator/pages/page3.dart';
import 'package:smoothdotindicator/pages/page4.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
              // verticalOffset: 20,
              jumpScale: 2,
            ),
          )
        ],
      ),
    );
  }
}
