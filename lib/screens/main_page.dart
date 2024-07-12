import 'package:flutter/material.dart';
import 'package:hyperhire_assignement/screens/home_page.dart';
import 'package:hyperhire_assignement/utils/app_assets.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

int index = 0;
final buildScreens = [
  const HomePage(),
  const HomePage(),
  const HomePage(),
  const HomePage(),
];

class _MainHomePageState extends State<MainHomePage> {
  changescreen(var i) {
    setState(() {
      index = i;
    });
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: false,
      leadingWidth: 8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: buildScreens[index], bottomNavigationBar: buildBottomAppBar());
  }

  Widget buildBottomAppBar() {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      onTap: (indexx) {
        setState(() {
          index = indexx;
          // ref.read(valuestateProvider.notifier).state = indexx;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            AppAssets.icon11,
            fit: BoxFit.contain,
          ),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AppAssets.icon22,
            fit: BoxFit.contain,
          ),
          label: '카테고리',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AppAssets.icon33,
            fit: BoxFit.contain,
          ),
          label: '커뮤니티',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AppAssets.icon44,
            fit: BoxFit.contain,
          ),
          label: '마이페이지',
        ),
      ],
    );
  }
}
