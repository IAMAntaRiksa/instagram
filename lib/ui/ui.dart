import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/model/dummies_data.dart';

void main() => runApp(const UiInstagramWidget());

class UiInstagramWidget extends StatelessWidget {
  const UiInstagramWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getappbar(),
        bottomNavigationBar: getbottomNavigatoinBar(),
        body: getBody(),
      ),
    );
  }

  Widget getbottomNavigatoinBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white10,
      type: BottomNavigationBarType.fixed,
      elevation: 20,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/home_outline.png',
            scale: 2,
          ),
          activeIcon: Image.asset(
            'assets/icons/home_filled.png',
            scale: 2,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/search_outline.png',
            scale: 2,
          ),
          activeIcon: Image.asset(
            'assets/icons/search_filled.png',
            scale: 2,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/reels_outline.png',
            scale: 2,
          ),
          label: 'Reels',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/shop_outline.png',
            scale: 2,
          ),
          activeIcon: Image.asset(
            'assets/icons/shop_filled.png',
            scale: 2,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/avatars/new.png',
                ),
              ),
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }

  getappbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: SizedBox(
        height: 35,
        child: Image.asset(
          'assets/logo/instagram.png',
        ),
      ),
      actions: <Widget>[
        Container(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/plus_outline.png', height: 25),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/love_outline.png', height: 25),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/share_outline.png', height: 25),
          ),
        ),
      ],
    );
  }
}

Widget getBody() {
  return ListView(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 10, top: 5),
        child: Row(
          children: List.generate(
            accounts.length,
            (index) => Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: AssetImage('assets/avatars/new.png'),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: IconButton(
                        onPressed: null,
                        icon: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/icons/plus_filled.png',
                            color: Colors.blue,
                            width: 25,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 75,
                  margin: EdgeInsets.all(1.3),
                  child: Text(
                    accounts[index].toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Divider(
        color: Colors.black45,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 20,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/avatars/new.png',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '_iamantariksa13',
                        style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                      ),
                      Text(
                        'Subang, Indonesia',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/icons/dot_horizontal.png',
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: AssetImage('assets/avatars/akbar.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(1.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/love_outline.png',
                          width: 29,
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/comment_outline.png',
                          width: 29,
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/share_outline.png',
                          width: 29,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: IconButton(
                    onPressed: null,
                    icon: Image.asset(
                      'assets/icons/bookmark_outline.png',
                      width: 29,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '212.212 Like',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hallo World is Imam Akbar Mega AntaRiksa, you can call me akbar # Hallo World Imam Akbar Mega AntaRiksa, you can call me akbar # Hello World is Imam Akbar Mega AntaRiksa, you can call me akbar. im as mobile developer Hello, I am Imam Akbar Mega AntaRiksa',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    child:
                        ClipOval(child: Image.asset('assets/avatars/new.png')),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Beri Tanggapan',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('😉'),
                      SizedBox(width: 8),
                      Text('💪'),
                      SizedBox(width: 8),
                      Icon(Icons.add_circle_outline, size: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
