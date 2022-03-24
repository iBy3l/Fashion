import 'package:fashion_eco/cards.dart';
import 'package:fashion_eco/header.dart';
import 'package:fashion_eco/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Fashion',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ]),
            ),
            Container(
              /*decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 35,
                    color: Color(0xff848B8D).withOpacity(0.25))
              ]),*/
              child: Column(
                children: [
                  Cards(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 16, right: 16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommended',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(255, 87, 116, 1),
                            ),
                          ),
                        ]),
                  ),
                  Product(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
