import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OneImage extends StatelessWidget {
  final AssetImage image;
  final String text;
  const OneImage({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 3, 5, 8),
      child: Container(
        height: 190,
        width: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            heightFactor: 0.3,
            widthFactor: 1.0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SeeMoreTile extends StatefulWidget {
  final String title;
  final String text;
  final String date;
  final AssetImage image;
  final BoxFit imageFit;
  final AlignmentGeometry? imageAlignment;
  const SeeMoreTile({
    super.key,
    required this.title,
    required this.text,
    required this.date,
    required this.image,
    required this.imageFit,
    this.imageAlignment,
  });

  @override
  State<SeeMoreTile> createState() => _SeeMoreTileState();
}

class _SeeMoreTileState extends State<SeeMoreTile> {
  bool linePressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 8, 8, 5),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: size.width < 450 ? size.width * 0.92 : 500,
          height: size.width < 450 ? size.height * 0.12 : 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            children: [
              Container(
                height: size.width < 450 ? size.height * 0.15 : 120,
                width: size.width < 450 ? size.width * 0.4 : 170,
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
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: SizedBox(
                  width: size.width < 450 ? 155 : 270,
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
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            widget.text,
                            softWrap: true,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Text(
                        widget.date,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        linePressed = !linePressed;
                      });
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.gripLinesVertical,
                    ),
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
