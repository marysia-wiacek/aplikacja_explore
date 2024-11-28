import 'package:aplikacja_explore/mainPage/active_filters.dart';
import 'package:aplikacja_explore/mainPage/bottom_bar.dart';
import 'package:aplikacja_explore/mainPage/see_more.dart';
import 'package:aplikacja_explore/mainPage/tile_list.dart';
import 'package:aplikacja_explore/components/top_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final bool isFiltered;
  const MainPage({super.key, required this.isFiltered});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController horizontal = ScrollController();
  final ScrollController vertical = ScrollController();
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  bool searchfieldOn = false;

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 242, 241, 241),
          child: SingleChildScrollView(
            controller: vertical,
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                TopBar(
                  icon: Icons.arrow_back,
                  text: "Wydarzenia",
                  rightButtons: true,
                  onPressedFunction: widget.isFiltered
                      ? () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage(
                                        isFiltered: false,
                                      )));
                        }
                      : () {},
                  searchAction: () {
                    setState(() {
                      searchfieldOn = !searchfieldOn;
                    });
                  },
                ),
                if (searchfieldOn)
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                    padding: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: TextField(
                      focusNode: _focusNode,
                      controller: _controller,
                      autofocus: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                if (widget.isFiltered) const ActiveFilters(),
                if (!widget.isFiltered)
                  SingleChildScrollView(
                    controller: horizontal,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 3, 5, 8),
                          child: Container(
                            height: 260,
                            width: 290,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/img1.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 260,
                            width: 290,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/img2.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        )
                      ],
                    ),
                  ),
                TileList(
                  isFiltered: widget.isFiltered,
                ),
                if (widget.isFiltered)
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.5,
                      ),
                      const SeeMore(),
                    ],
                  ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomBar());
  }
}
