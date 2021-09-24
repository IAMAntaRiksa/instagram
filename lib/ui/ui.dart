import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:instagram/model/dummies_data.dart';
import 'package:instagram/ui/post_sreen.dart';

void main() => runApp(const UiInstagramWidget());

class UiInstagramWidget extends StatelessWidget {
  const UiInstagramWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getappbar(),
        bottomNavigationBar: getbottomNavigatoinBar(),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              getBody(),
              Container(
                height: 640,
                child: PostFedd(),
              )
            ]))
          ],
        ),
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
  return Container(
    height: 120,
    child: ListView.builder(
      itemCount: accounts.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Column(
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
            child: Center(
              child: Text(
                accounts[index].toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
