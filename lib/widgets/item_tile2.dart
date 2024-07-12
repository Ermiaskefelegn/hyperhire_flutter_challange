import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemTile2 extends StatelessWidget {
  const ItemTile2({
    super.key,
    required this.width,
    required this.image,
    required this.s1,
  });

  final double width;
  final String image;
  final String s1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: width / 3,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width / 1.6,
              child: RichText(
                maxLines: 2,
                overflow: TextOverflow.visible,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "AMD 라이젠 5 ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold, // Font weight for "Ermias"
                      ),
                    ),
                    TextSpan(
                      text: "5600X 버미어 정품 멀티팩",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                        fontWeight:
                            FontWeight.normal, // Font weight for "Kefelegn"
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                RatingBarIndicator(
                  rating: 4.07,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  unratedColor: const Color.fromARGB(255, 226, 223, 223),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                ),
                const Text(
                  "4.07",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
