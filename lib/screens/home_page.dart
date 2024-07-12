import 'package:flutter/material.dart';
import 'package:hyperhire_assignement/screens/profile_page.dart';
import 'package:hyperhire_assignement/utils/app_assets.dart';
import 'package:hyperhire_assignement/widgets/carousel.dart';
import 'package:hyperhire_assignement/widgets/item_tile.dart';
import 'package:hyperhire_assignement/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.grey,
          elevation: 0.5,
          centerTitle: false,
          title: const Text(
            'LOGO',

            style: TextStyle(
                color: Color(0xFF5D5FEF),
                fontWeight: FontWeight.bold,
                fontSize: 30),
            // style: ,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 30,
                ),
                Container(
                  width: width,
                  height: height / 20,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: width / 1.15,
                    child: CustomTextInputBorder(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xff3e3dc5),
                      ),
                      controller: controller,
                      hintText: "검색어를 입력하세요",
                      validator: (value) {
                        return null;
                      },
                      onChanged: (value) {
                        // phonetext = value!;
                      },
                      keyboardType: TextInputType.text,
                      inputAction: TextInputAction.done,
                      onsaved: (value) {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomCarousel(
                  isFromNetwork: false,
                  images: [
                    AppAssets.slider_one,
                    AppAssets.slider_two,
                    AppAssets.slider_three,
                    AppAssets.slider_four,
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ItemTile(
                    width: width,
                    image: AppAssets.tile_one,
                    s1: "화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.",
                    s2: ". 화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.",
                    s3: ". 스탠바이미는 사랑입니다!️",
                    s4: "  4.89",
                    s5: "  (216)",
                    s6: "LG전자",
                    s7: "편리성"),
                const SizedBox(
                  height: 10,
                ),
                ItemTile(
                    width: width,
                    image: AppAssets.tile_two,
                    s1: "LG전자  울트라HD 75UP8300KNA (스탠드)",
                    s2: ". 화면 잘 나오고... 리모컨 기능 좋습니다.",
                    s3: ". 넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!",
                    s4: "  4.36",
                    s5: "  (136)",
                    s6: "LG전자",
                    s7: "고화질"),
                const SizedBox(
                  height: 10,
                ),
                ItemTile(
                    width: width,
                    image: AppAssets.tile_three,
                    s1: "라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)",
                    s2: ". 반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다",
                    s3: ". 중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고",
                    s4: "  3.98",
                    s5: "  (98)",
                    s6: "라익미",
                    s7: "가성비"),
                Divider(
                  height: height / 15,
                  thickness: 20,
                  indent: 0.0,
                  color: Colors.grey.withOpacity(0.2),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("골드 계급 사용자들이예요",
                        style: TextStyle(color: Colors.black)),
                    Text(
                      "베스트 리뷰어 🏆 Top10",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                userlist(height, width),
                Divider(
                  height: height / 15,
                  thickness: 20,
                  indent: 0.0,
                  color: Colors.grey.withOpacity(0.2),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("커뮤니티가입 어때요?",
                            style: TextStyle(color: Colors.black54)),
                        Text(
                          "커뮤니티 랭킹 💬  top3",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 35,
                    )
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: width,
                  height: height / 4,
                  color: Colors.grey.withOpacity(0.3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "LOGO Inc.",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "회사 소개",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "인재 채용",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "기술 블로그",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "리뷰 저작권",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.icon1,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "review@logo.com",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Container(
                            width: width / 4,
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black54),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "KOR",
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
                      Divider(
                        height: height / 20,
                        thickness: 2,
                        indent: 0.0,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      const Text(
                        "@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  SizedBox userlist(double height, double width) {
    return SizedBox(
      height: height / 7,
      width: width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(
                        image: AppAssets.elpse_1,
                        name: "Name01",
                      ),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(right: 10, top: 10, left: 5),
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: width / 10.5,
                        child: CircleAvatar(
                          radius: width / 12,
                          child: Image.asset(
                            AppAssets.elpse_1,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      AppAssets.icon2,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              const Text("Name01")
            ],
          ),
          Usertile(width, AppAssets.elpse_2, "Name02"),
          Usertile(width, AppAssets.elpse_3, "Name03"),
          Usertile(width, AppAssets.elpse_4, "Name04"),
          Usertile(width, AppAssets.elpse_5, "Name05"),
          Usertile(width, AppAssets.elpse_6, "Name06"),
          Usertile(width, AppAssets.elpse_7, "Name07"),
          Usertile(width, AppAssets.elpse_8, "Name08"),
          Usertile(width, AppAssets.elpse_9, "Name09"),
          Usertile(width, AppAssets.elpse_10, "Name10"),
        ],
      ),
    );
  }

  GestureDetector Usertile(double width, String userimage, String name) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProfilePage(
              image: userimage,
              name: name,
            ),
          ),
        );
      },
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: width / 12,
              child: Image.asset(
                userimage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(name)
        ],
      ),
    );
  }
}
