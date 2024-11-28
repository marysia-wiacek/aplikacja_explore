import 'package:flutter/material.dart';

class TitleAndImg extends StatelessWidget {
  const TitleAndImg({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0),
          child: Text(
            "Gala muzyki filmowej",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                fontSize: 22),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0),
          child: Text(
            "Cerekwicka | Ziółko | Talarczyk | Sztor | Chór",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Text("03.09.24 r. | g. 18.00",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontSize: 23)),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: size.width * 0.6,
              child: const Text(
                  "Hala widowiskowo-sportowa Spodek al. Korfantego 35, Katowice",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontSize: 15)),
            )),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 12),
            child: Container(
              height: size.width < 450 ? size.height * 0.28 : 300,
              width: size.width < 450 ? size.width * 0.85 : 450,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/img3.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
