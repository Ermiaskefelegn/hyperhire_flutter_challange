import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hyperhire_assignement/utils/app_assets.dart';
import 'package:hyperhire_assignement/widgets/bullet_points.dart';
import 'package:hyperhire_assignement/widgets/item_tile2.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          shadowColor: Colors.grey,
          elevation: 0.5,
          centerTitle: true,
          title: const Column(
            children: [
              Text(
                '랭킹 1위',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                // style: ,
              ),
              Text(
                '베스트 리뷰어',
                style: TextStyle(
                    color: Color(0xFF1D1D1D),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                // style: ,
              ),
            ],
          ),
        ),
        body: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: height / 40),
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: width / 8,
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                        color: Color(0xFF1D1D1D),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    // style: ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.icon2,
                        fit: BoxFit.contain,
                      ),
                      const Text(
                        '골드',
                        style: TextStyle(
                            color: Color(0xFFFFD233),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        // style: ,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(
                            5) // Adjust the radius as needed
                        ),
                    child: const Text("조립컴 업체를 운영하며 리뷰를 작성합니다.",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                  Divider(
                    height: height / 12,
                    thickness: 20,
                    indent: 0.0,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  RowWidget(width),
                  Divider(
                    height: height / 20,
                    thickness: 2,
                    indent: 0.0,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  ItemTile2(
                    width: width,
                    image: AppAssets.detail,
                    s1: "AMD 라이젠 5 5600X 버미어 정품 멀티팩",
                  ),
                  Divider(
                    height: height / 20,
                    thickness: 2,
                    indent: 0.0,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  User_List_tile(width),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width / 20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '“가격 저렴해요”',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                          // style: ,
                        ),
                        Text(
                          '“CPU온도 고온”',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                          // style: ,
                        ),
                        Text(
                          '“서멀작업 가능해요”',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                          // style: ,
                        ),
                        Text(
                          '“게임 잘 돌아가요”',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                          // style: ,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BulletPoints(
                    width: width,
                    comment:
                        "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                    image: AppAssets.icon3,
                  ),
                  BulletPoints(
                    width: width,
                    comment: "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
                    image: AppAssets.icon4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width / 1.4,
                    margin: EdgeInsets.symmetric(
                        horizontal: width / 14, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          AppAssets.image1,
                          width: width / 5,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          AppAssets.image2,
                          width: width / 5,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          AppAssets.image3,
                          width: width / 5,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: height / 20,
                        thickness: 2,
                        indent: 20.0,
                        endIndent: 20.0,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: width / 14,
                        ),
                        child: const Text(
                          '💬 댓글 달기..',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                          // style: ,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  ListTile User_List_tile(double width) {
    return ListTile(
      leading: CircleAvatar(
        radius: width / 14,
        child: Image.asset(
          widget.image,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        widget.name,
        style: const TextStyle(
            color: Color(0xFF1D1D1D),
            fontWeight: FontWeight.w600,
            fontSize: 15),
        // style: ,
      ),
      subtitle: Row(
        children: [
          RatingBarIndicator(
            rating: 4.07,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            unratedColor: const Color.fromARGB(255, 226, 223, 223),
            itemCount: 5,
            itemSize: 15.0,
            direction: Axis.horizontal,
          ),
          const Text(
            '2022.12.09',
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 12),
            // style: ,
          ),
        ],
      ),
      trailing: const Icon(
        Icons.bookmark_border_rounded,
        size: 40.0,
        color: Colors.black45,
      ),
    );
  }

  Container RowWidget(double width) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                "작성한 리뷰",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                "총 35개",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Container(
            width: width / 4,
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "최신순",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black54,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
