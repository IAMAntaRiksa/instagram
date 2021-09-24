import 'package:flutter/material.dart';

import 'package:instagram/model/dummies_data.dart';

class PostFedd extends StatelessWidget {
  const PostFedd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(
      accounts.length,
      (index) => Column(
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
          )
        ],
      ),
    ));
  }
}
