import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.width,
    required this.image,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.s4,
    required this.s5,
    required this.s6,
    required this.s7,
  });

  final double width;
  final String image;
  final String s1;
  final String s2;
  final String s3;
  final String s4;
  final String s5;
  final String s6;
  final String s7;

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
              width: width / 1.7,
              child: Text(
                s1,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: width / 1.9,
                  child: Text(
                    s2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: width / 1.9,
                  child: Text(
                    s3,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.star_rate_rounded,
                  size: 20,
                  color: Colors.amber,
                ),
                Text(
                  s4,
                  style: const TextStyle(color: Colors.amber, fontSize: 12),
                ),
                Text(
                  s5,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(
                            5) // Adjust the radius as needed
                        ),
                    child: Text(s6),
                  ),
                  SizedBox(
                    width: width / 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(
                            5) // Adjust the radius as needed
                        ),
                    child: Text(s7),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
