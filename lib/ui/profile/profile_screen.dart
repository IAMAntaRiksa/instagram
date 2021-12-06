import 'package:flutter/material.dart';
import 'package:instagram/ui/profile/badge/profile_count.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '_iamantariksa13',
            ),
            SizedBox(width: 5),
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/plus_filled.png'))
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/plus_outline.png')),
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/dot_horizontal.png'))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/avatars/akbar.jpg',
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                ProfileCountWidget(
                  count: 212,
                  label: 'Post',
                  onTap: () {
                    print('following');
                  },
                ),
                SizedBox(width: 27),
                ProfileCountWidget(
                  count: 3232423,
                  label: 'Followers',
                  onTap: () {
                    print('Followers');
                  },
                ),
                SizedBox(width: 27),
                ProfileCountWidget(
                  count: 11,
                  label: 'Following',
                  onTap: () {
                    print('following');
                  },
                ),
                SizedBox(width: 27),
              ],
            ),
          )
        ],
      ),
    );
  }
}
