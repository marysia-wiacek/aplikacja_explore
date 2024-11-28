import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OneTile extends StatefulWidget {
  final String title;
  final String text;
  final String date;
  final AssetImage image;
  final BoxFit imageFit;
  final AlignmentGeometry? imageAlignment;
  final bool isHeartPressed;
  final Function()? onTapFunction;
  const OneTile({
    super.key,
    required this.title,
    required this.text,
    required this.date,
    required this.image,
    required this.isHeartPressed,
    this.onTapFunction,
    required this.imageFit,
    this.imageAlignment,
  });

  @override
  State<OneTile> createState() => _OneTileState();
}

class _OneTileState extends State<OneTile> {
  bool heartPressed = false;
  bool linePressed = false;

  @override
  void initState() {
    heartPressed = widget.isHeartPressed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 5),
      child: GestureDetector(
        onTap: () {
          if (widget.onTapFunction != null) {
            widget.onTapFunction!();
          }
        },
        child: Container(
          width: size.width < 450 ? size.width * 0.92 : 500,
          height: size.width < 450 ? size.height * 0.14 : 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            children: [
              Container(
                height: size.width < 450 ? size.height * 0.14 : 120,
                width: size.width < 450 ? size.height * 0.14 : 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: widget.image,
                      fit: widget.imageFit,
                      alignment: widget.imageAlignment ?? Alignment.centerLeft),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: size.width < 450 ? size.width * 0.46 : 310,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            softWrap: true,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Text(
                            widget.text,
                            softWrap: true,
                            style: const TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      Text(
                        widget.date,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            overflow: TextOverflow.fade),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        heartPressed = !heartPressed;
                      });
                    },
                    icon: heartPressed
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border),
                    color: heartPressed
                        ? const Color.fromARGB(255, 1, 218, 196)
                        : const Color.fromARGB(255, 236, 236, 236),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        linePressed = !linePressed;
                      });
                    },
                    icon: const FaIcon(FontAwesomeIcons.gripLinesVertical),
                    color: linePressed
                        ? const Color.fromARGB(255, 1, 218, 196)
                        : const Color.fromARGB(255, 236, 236, 236),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
