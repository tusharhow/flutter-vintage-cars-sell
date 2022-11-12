import 'package:flutter/material.dart';
import 'package:flutter_vintage_cars_sell/app/constants.dart';
import 'package:flutter_vintage_cars_sell/app/views/main/homepage.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3C8899),
      body: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 2),
          Image.asset('assets/logos/logo2.png'),
          const SizedBox(height: kDefaultPadding),
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/car3.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const SizedBox(),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MyHomePage();
              }));
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0xffE3E2D1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Color(0xFF3C8899),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
