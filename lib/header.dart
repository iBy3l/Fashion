import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: [
      Container(
        padding: EdgeInsets.only(top: 100, left: 16),
        height: 250,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 56,
              width: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('img/perfil.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(130, 130, 130, 1),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Mariana Putri',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
      Positioned(
        height: 75,
        left: 12,
        bottom: 10,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(14),
              height: 50,
              width: 270,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Search Fashion...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(255, 87, 116, 1),
                image: DecorationImage(
                  image: AssetImage('img/icon/icon.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
