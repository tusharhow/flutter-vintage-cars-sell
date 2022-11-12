import 'package:flutter/material.dart';
import 'package:flutter_vintage_cars_sell/app/constants.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> carImages = [
      'assets/images/car5.png',
      'assets/images/car4.png',
      'assets/images/car6.png',
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFE3E2D1),
      body: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 5),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffE3E2D1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/logos/logo2.png',
                    height: 110,
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 90,
                  right: 0,
                  child: Text(
                    "Škoda1000MB",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 30,
                  right: 30,
                  child: Text(
                    "The Škoda 1000 MB and Škoda 1100 MB are two rear-engined, rear-wheel drive small family cars that were produced by Czechoslovakian manufacturer AZNP in Mladá Boleslav.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 0,
                  right: -50,
                  bottom: -70,
                  child: Image.asset(
                    'assets/images/car2.png',
                    height: 250,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 4),
          const Text(
            "Similar Cars",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage(carImages[index]),
                    ),
                  );
                }),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                color: const Color(0xFF3C8899),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text(
                  "More Info",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
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
