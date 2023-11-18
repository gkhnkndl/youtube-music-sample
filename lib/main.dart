// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube Music',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(62, 36, 17, 1),
                  const Color.fromRGBO(48, 14, 32, 1)
                ]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/Youtube_Music.png",
                              width: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Music",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(214, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "GKHNKNDL Version",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(214, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.cast,
                                color:
                                    const Color.fromARGB(169, 255, 255, 255)),
                            SizedBox(width: 15),
                            Icon(Icons.search,
                                color:
                                    const Color.fromARGB(169, 255, 255, 255)),
                            SizedBox(width: 15),
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage("assets/images/p6.webp"),
                            ),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryItem("Energize"),
                          CategoryItem("Slow"),
                          CategoryItem("Rock"),
                          CategoryItem("Trap"),
                          CategoryItem("House"),
                          CategoryItem("Jazz"),
                          CategoryItem("Pop"),
                          CategoryItem("Fitness"),
                          CategoryItem("Walking"),
                          CategoryItem("Motivation"),
                          CategoryItem("Anatolian"),
                          CategoryItem("Traditional"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              width: double.infinity,
              height: 120),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 7, 7, 7),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "START RADIO FROM A SONG",
                        style: TextStyle(
                            color: const Color.fromARGB(160, 255, 255, 255)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quick Picks",
                            style: TextStyle(
                                color: Color.fromARGB(221, 255, 255, 255),
                                fontSize: 22),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 3, bottom: 3, left: 9, right: 9),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        117, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "Play all",
                              style: TextStyle(color: Colors.white54),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                TrackAdd("assets/images/allalone.jpg",
                                    "All Alone", "Freddie Dredd"),
                                TrackAdd("assets/images/karabocek.jpg",
                                    "Sen Evlisin", "Gülden Karaböcek"),
                                TrackAdd("assets/images/slipknot.jpg",
                                    "Psychosocial", "Slipknot"),
                                TrackAdd("assets/images/dum.jpg", "Who Is She",
                                    "I Monster"),
                              ],
                            ),
                            Column(
                              children: [
                                TrackAdd("assets/images/cokyazik.jpg",
                                    "Çok Yazık", "Çağan Şengül"),
                                TrackAdd("assets/images/coming.jpg", "Mayday",
                                    "Coldrain"),
                                TrackAdd("assets/images/evil.jpg",
                                    "Xo Evil Lif3", "Steve Breaux"),
                                TrackAdd(
                                    "assets/images/goth.jpg",
                                    "Goth (Slowed + Reverb)",
                                    "Sidewalks and Skeleton"),
                              ],
                            ),
                            Column(
                              children: [
                                TrackAdd("assets/images/lean.jpg",
                                    "Lean with Me", "Juice WRLD"),
                                TrackAdd("assets/images/notion.jpg", "Notion",
                                    "The Rare Occassions"),
                                TrackAdd("assets/images/melekler.jpg",
                                    "Melekler Ölmez", "Mor ve Ötesi"),
                                TrackAdd("assets/images/neyse.jpg", "Nafile",
                                    "NEYSE"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      //Expanded Midde Part Element 2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 60),
                          Text(
                            "Forgotten Favorites",
                            style: TextStyle(
                                color: Color.fromARGB(221, 255, 255, 255),
                                fontSize: 22),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 3, bottom: 3, left: 9, right: 9),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        117, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "Play all",
                              style: TextStyle(color: Colors.white54),
                            ),
                          )
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ForgottenFavoritesElements(
                                "assets/images/melekler.jpg",
                                "Melekler Ölmez",
                                "Mor ve Ötesi"),
                            ForgottenFavoritesElements("assets/images/dum.jpg",
                                "Who Is She", "I Monster"),
                            ForgottenFavoritesElements(
                                "assets/images/goth.jpg",
                                "Goth (Slowed + Reverb)",
                                "Sidewalks and Skeleton"),
                            ForgottenFavoritesElements(
                                "assets/images/slipknot.jpg",
                                "Psychosocial",
                                "Slipknot"),
                            ForgottenFavoritesElements("assets/images/evil.jpg",
                                "Xo Evil Lif3", "Steve Breaux"),
                            ForgottenFavoritesElements("assets/images/lean.jpg",
                                "Lean with Me", "Juice WRLD"),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          )),
          Container(
            color: Color.fromARGB(255, 33, 33, 33),
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home, color: Colors.white),
                      Text("Home",
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.play_circle_fill, color: Colors.white),
                      Text("Samples",
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.explore, color: Colors.white),
                      Text("Explore",
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.subscriptions, color: Colors.white),
                      Text("Library",
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.slideshow, color: Colors.white),
                      Text("Upgrade",
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Padding ForgottenFavoritesElements(
      String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          Image.asset(
            photo,
            width: 170,
          ),
          SizedBox(height: 5),
          Text(title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              overflow: TextOverflow.clip),
          Text(artist,
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(185, 255, 255, 255),
              ),
              overflow: TextOverflow.clip),
        ],
      ),
    );
  }

  Padding TrackAdd(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 4),
      child: Container(
        width: 355,
        height: 90,
        decoration: BoxDecoration(color: Color.fromARGB(0, 168, 41, 41)),
        child: Row(
          children: [
            Image.asset(
              photo,
              width: 100,
              height: 100,
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(title,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.clip),
                ),
                Container(
                  child: Text(artist,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(192, 255, 255, 255),
                      ),
                      overflow: TextOverflow.clip),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container CategoryItem(String name) {
    return Container(
      padding: const EdgeInsets.only(top: 7, bottom: 7, left: 10, right: 10),
      margin: const EdgeInsets.only(left: 4, right: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(15, 255, 255, 255)),
      child: Text(name, style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
}
