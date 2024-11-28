import 'package:aplikacja_explore/mainPage/see_more_components.dart';
import 'package:flutter/material.dart';

class SeeMore extends StatefulWidget {
  const SeeMore({super.key});

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  final ScrollController horizontal = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 8),
          child: Text(
            "Zobacz także",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          width: size.width < 450 ? 500 : size.width,
          color: const Color.fromARGB(255, 200, 220, 235),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
            child: SingleChildScrollView(
              controller: horizontal,
              scrollDirection: Axis.horizontal,
              child: const Row(
                children: [
                  OneImage(
                    image: AssetImage('assets/planetarium.jpeg'),
                    text: "Planetarium - Śląski Park Nauki",
                  ),
                  OneImage(
                    image: AssetImage('assets/teatr.jpg'),
                    text: "Teatr Śląski w Katowicach",
                  ),
                  OneImage(
                    image: AssetImage('assets/muzeum.jpg'),
                    text: "Muzeum Historyczne w Bielsku-Białej",
                  ),
                ],
              ),
            ),
          ),
        ),
        const Center(
          child: Column(
            children: [
              SeeMoreTile(
                image: AssetImage('assets/img4.jpg'),
                imageFit: BoxFit.fitHeight,
                title: 'Stanisław Bober fotografia',
                text: 'MCK, Katowice',
                date: '23.09-12.10.2024 r.',
              ),
              SeeMoreTile(
                image: AssetImage('assets/img5.png'),
                imageFit: BoxFit.fitHeight,
                title: 'Dziedzictwo kultury a proces inwestycyjny',
                text: 'Muzeum Śląskie, Katowice',
                date: '23.09-12.10.2024 r.',
              ),
            ],
          ),
        )
      ],
    );
  }
}
