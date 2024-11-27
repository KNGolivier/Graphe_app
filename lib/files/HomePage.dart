import 'package:facture_app/files/DetailsPage.dart';
import 'package:facture_app/files/Screens/Screens1.dart';
import 'package:facture_app/files/Screens/Screens2.dart';
import 'package:facture_app/files/Screens/Screens3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF07313A),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: const [
              Screens1(),
              Screens2(),
              Screens3(),
            ],
          ),
          Positioned(
            bottom: 50,
            left: 30,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                  spacing: 8.0,
                  dotWidth: 24.0,
                  radius: 12.0,
                  dotHeight: 8.0,
                  strokeWidth: 2,
                  dotColor: Colors.green,
                  // expansionFactor: 3.0,
                  activeDotColor: Color(0XFF018868)),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 30,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                  backgroundColor: Color(0XFF2CD196),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                onPressed: () {
                  if (currentPage < 2) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Detailspage()),
                    );
                  }
                },
                child: Text(
                  currentPage == 2 ? '>' : '>',
                  style: TextStyle(fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
