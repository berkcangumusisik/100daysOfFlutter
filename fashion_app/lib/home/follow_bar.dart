import 'package:flutter/material.dart';

class FollowBar extends StatelessWidget {
  const FollowBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listChild(
                  "assets/model1.jpeg",
                  "assets/chanellogo.jpg",
                ),
                listChild(
                  "assets/model2.jpeg",
                  "assets/louisvuitton.jpg",
                ),
                listChild(
                  "assets/model3.jpeg",
                  "assets/chloelogo.png",
                ),
                listChild(
                  "assets/model1.jpeg",
                  "assets/chanellogo.jpg",
                ),
                listChild(
                  "assets/model2.jpeg",
                  "assets/louisvuitton.jpg",
                ),
              ],
            ),
          )
        ],
      ),
    );

    
  }

  Widget listChild(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 60,
              left: 60,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF916144)),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 14, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
