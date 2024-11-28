import 'package:aplikacja_explore/oneEvent/icon_buttons_row.dart';
import 'package:aplikacja_explore/mainPage/main_page.dart';
import 'package:aplikacja_explore/oneEvent/title_and_img.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OneEvent extends StatefulWidget {
  const OneEvent({super.key});

  @override
  State<OneEvent> createState() => _OneEventState();
}

class _OneEventState extends State<OneEvent> {
  final ScrollController vertical = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 242, 241, 241),
      child: SingleChildScrollView(
        controller: vertical,
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: IconButton(
                splashRadius: 1,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage(
                                isFiltered: false,
                              )));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleAndImg(),
                  const IconButtonsRow(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                        "Wykonawcy:\n • Katarzyna Cerekwicka \n • Mateusz Ziółko \n • Robert Talarczyk - prowadzenie \n • Maciej Sztor - dyrygent\n • Jarosław Wolanin - przygotowanie Chóru \n • Mateusz Kokot - animacje \n • Katarzyna Kroczek-Wasińska - animacje \n • Wojciech Kukuczka - animacje \n • Witold Suchoń - animacje \n • Tomasz Olszewski - wizualizacje \n • Orkiestra Symfoniczna Filharmonii Śląskiej \n • Chór Filharmonii Śląskiej \nProgram: \n • John Williams - Star Wars \n • John Williams - Szczęki \n • John Williams - Harry Potter \n • James Horner - Titanic \n • Hans Zimmer - Batman vs Superman \n • Hans Zimmer - Incepcja \n • Hans Zimmer - Piraci z Karaibów \n • Harry Gregson-Williams - Opowieści z Narnii \n • John Powell - Jak Wytresować Smoka \n • David Arnold - James Bond \n • Ryszard Strauss - Odyseja Kosmiczna \n • James Newton Howard - Igrzyska Śmierci \n • Angelo Badalamenti - Twin Peaks",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5)),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            FontAwesomeIcons.creativeCommonsNc,
                            color: Colors.grey,
                          ),
                        ),
                        Text("Wydarzenie bezpłatne",
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 50),
                    child: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Theme.of(context).primaryColor,
                            size: 40,
                          ),
                          Icon(
                            FontAwesomeIcons.instagram,
                            color: Theme.of(context).primaryColor,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
