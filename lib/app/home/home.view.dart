import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dalbergia_id/app/home/home-page/home-page.view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _mainModules = [
    {'icon': Icons.add, 'label': 'Trang chủ', 'widget': HomePageView()},
    {'icon': Icons.list, 'label': 'Tra cứu', 'widget': Container()},
    {'icon': Icons.ac_unit_outlined, 'label': 'Thuật ngữ', 'widget': Container()},
    {'icon': Icons.access_alarm, 'label': 'Hướng dẫn', 'widget': Container()},
    {'icon': Icons.compare_arrows, 'label': 'Giới thiệu', 'widget': Container()},
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
                    (e) => Icon(
                      e.value["icon"] as IconData,
                      size: 30,
                      color: _bottomNavIndex == e.key ? Color(0xFF0D711C) : Color(0xFF707070),
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
