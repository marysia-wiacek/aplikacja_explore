import 'package:aplikacja_explore/oneEvent/one_event.dart';
import 'package:aplikacja_explore/mainPage/one_tile.dart';
import 'package:flutter/material.dart';

class TileList extends StatefulWidget {
  final bool isFiltered;
  const TileList({super.key, required this.isFiltered});

  @override
  State<TileList> createState() => _TileListState();
}

class _TileListState extends State<TileList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          OneTile(
            image: const AssetImage('assets/img3.png'),
            imageFit: BoxFit.fitHeight,
            imageAlignment: Alignment.center,
            title: 'Gala muzyki filmowej',
            text: 'Spodek, Katowice',
            date: '3.09.2024 r.',
            isHeartPressed: true,
            onTapFunction: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OneEvent()));
            },
          ),
          const OneTile(
            image: AssetImage('assets/img4.jpg'),
            imageFit: BoxFit.fitHeight,
            title: 'Stanisław Bober fotografia',
            text: 'Miejski Ośrodek Kultury, Katowice',
            date: '23.09-12.10.2024 r.',
            isHeartPressed: false,
          ),
          const OneTile(
            image: AssetImage('assets/img5.png'),
            imageFit: BoxFit.fitHeight,
            title: 'Dziedzictwo kultury a proces inwestycyjny',
            text: 'Muzeum Śląskie, Katowice',
            date: '23.09-12.10.2024 r.',
            isHeartPressed: false,
          ),
          if (!widget.isFiltered)
            const Column(
              children: [
                OneTile(
                  image: AssetImage('assets/img6.png'),
                  imageFit: BoxFit.fitHeight,
                  title: 'Gala muzyki filmowej',
                  text: 'Młodzieżowy Dom Kultury, Bielsko-Biała',
                  date: '12.10.2024 r.',
                  isHeartPressed: false,
                ),
                OneTile(
                  image: AssetImage('assets/img7.png'),
                  imageFit: BoxFit.fitHeight,
                  title: 'Gala muzyki filmowej',
                  text: 'Młodzieżowy Dom Kultury, Bielsko-Biała',
                  date: '12.10.2024 r.',
                  isHeartPressed: false,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
