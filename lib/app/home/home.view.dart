import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dalbergia_id/app/home/home-page/home-page.view.dart';
import 'package:dalbergia_id/app/home/introduction/introduction.view.dart';
import 'package:dalbergia_id/app/home/search/search-page.controller.dart';
import 'package:dalbergia_id/app/home/search/search-page.view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _mainModules = [
    {'icon': "home", 'label': 'Trang chủ', 'widget': HomePageView()},
    {'icon': "search", 'label': 'Tra cứu', 'widget': Container()},
    {'icon': "book", 'label': 'Thuật ngữ', 'widget': Container()},
    {'icon': "intruct", 'label': 'Hướng dẫn', 'widget': Container()},
    {'icon': "intro", 'label': 'Giới thiệu', 'widget': Container()},
  ];
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainModules.elementAt(_bottomNavIndex)["widget"] as Widget,
      bottomNavigationBar: SizedBox(
        height: 75.0,
        child: Stack(
          children: [
            CurvedNavigationBar(
              backgroundColor: Colors.white,
              color: Color(0xFFCAE8D8),
              animationDuration: Duration(milliseconds: 400),
              items: _mainModules
                  .asMap()
                  .entries
                  .map(
                    (e) => Image.asset(
                      "assets/images/home/${e.value["icon"]}${_bottomNavIndex == e.key ? "-active" : "-inactive"}.png",
                    ),
                  )
                  .toList(),
              onTap: (index) => setState(() => _bottomNavIndex = index),
            ),
            Row(
              children: _mainModules
                  .asMap()
                  .entries
                  .map(
                    (e) => Container(
                      width: 20.w,
                      alignment: Alignment.lerp(Alignment.bottomCenter, Alignment.center, 0.3)!,
                      child: Text(
                        "${e.value["label"]}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: _bottomNavIndex == e.key ? 15 : 14,
                              color: _bottomNavIndex == e.key ? Color(0xFF0D711C) : Color(0xFF707070),
                            ),
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
