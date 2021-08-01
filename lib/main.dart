import 'package:flutter/material.dart';
import 'componet/storybtn.dart';
import 'componet/chatTile.dart';
import 'componet/row.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  var containerRadius = Radius.circular(30.0);
  var unread;
  //Adding a list of image URL to simulate the avatar picture
  List<String> imageUrl = [
    "images/Addison.jpg",
    "images/Leslie.jpg",
    "images/Angel.jpg",
    "images/Jason.jpg",
    "images/Leslie.jpg",
    "images/Nathan.jpg",
    "images/sam.jpg",
    "images/simaran.jpg",
    "images/juhi.jpg"
  ];

  List<String> online = [
    "images/Addison.jpg",
    "images/Leslie.jpg",
    "images/Angel.jpg",
    "images/Jason.jpg",
    "images/Leslie.jpg",
    "images/Nathan.jpg",
    "images/Stanley.jpg",
    "images/Virgil.jpg",
    "images/Addison.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.black,
        ),
        title: Center(
            child: Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.more_horiz_outlined))
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            //First let's create the Story time line container

            Container(
              height: 100.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //Let's create a custom widget for our story button
                    storyButton(imageUrl[0]),
                    storyButton(imageUrl[1]),
                    storyButton(imageUrl[2]),
                    storyButton(imageUrl[3]),
                    storyButton(imageUrl[4]),
                    storyButton(imageUrl[5]),
                    storyButton(imageUrl[6]),
                    storyButton(imageUrl[1]),
                    storyButton(imageUrl[2]),
                    storyButton(imageUrl[3]),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: containerRadius, topRight: containerRadius),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                  child: ListView(
                    children: [
                      //Now let's create our chat tile custom widget
                      chatTile(online[0], "Addison", "typing", "9Am", false, 2),
                      chatTile(
                          online[1], "Juli", "I wil Meet you", "8Am", true, 0),
                      chatTile(online[2], "Angle", "ok", "6Am", true, 0),
                      chatTile(online[3], "Judd", "Pl send to me", "Yesterday",
                          false, 0),
                      chatTile(online[5], "Nathan", "Joke Mat Mar", "Yesterday",
                          false, 3),
                      chatTile(
                          online[4], "Denna", "call me ", "San 20", true, 0),
                      chatTile(online[6], "Stangle", "will call you back",
                          "San20", true, 7),
                      chatTile(online[7], "lesli", "ok", "San20", true, 0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
