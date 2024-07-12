import 'package:flutter/material.dart';

class BulletPoints extends StatelessWidget {
  const BulletPoints({
    super.key,
    required this.width,
    required this.comment,
    required this.image,
  });

  final double width;
  final String comment;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width / 14, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: width / 1.3,
            child: Text(
              comment,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
