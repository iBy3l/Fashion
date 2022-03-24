import 'dart:math';

import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: HomeBord(),
    );
  }
}

class HomeBord extends StatefulWidget {
  const HomeBord({Key? key}) : super(key: key);

  @override
  State<HomeBord> createState() => _HomeBordState();
}

class _HomeBordState extends State<HomeBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 529,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/modelo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: 335,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Stack(children: [
                      Positioned(
                        top: 5,
                        right: 0,
                        child: Transform.rotate(
                          angle: 3.9 * -pi / 100,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            height: 31,
                            color: Color.fromRGBO(255, 87, 116, 1),
                            child: Text(
                              'Fashion',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text.rich(
                          TextSpan(
                              text: 'Find The Best ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                              children: [
                                TextSpan(
                                    text: 'Fashion',
                                    style: TextStyle(color: Colors.white)),
                                TextSpan(text: '\nStyle For You'),
                              ]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]),
                  ),
                  Text(
                    'platform that provides many kinds of the\nbest and most trusted fashion\nstyle',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Color.fromRGBO(255, 87, 116, 1),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(2),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: Color.fromRGBO(196, 196, 196, 1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: Color.fromRGBO(196, 196, 196, 1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 8,
                          width: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: Color.fromRGBO(255, 87, 116, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
