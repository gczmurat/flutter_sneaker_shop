import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            // logo
            const SizedBox(height: 55,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                "images/logo.png",
                height: 240,
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            // title

            const Text(
              "Just Do It",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(
              height: 24,
            ),
            // sub title

            const Text("Tarzınızı Sneaker'larla Tamamlayın ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 50,
            ),

            // start now button

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                height: 55,
                width: 240,
                decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Center(
                    child: const Text(
                      "Alışverişe Başla",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
