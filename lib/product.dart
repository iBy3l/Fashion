import 'package:fashion_eco/product_page.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 30,
              color: Color(0xff848B8D).withOpacity(0.23))
        ],
      ),
      height: 400,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 15, right: 15),
          itemCount: 5,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageProduct()));
                },
                child: Container(
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('img/product1.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 3),
                            Text(
                              'Casual Dress',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Modern Style',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffBCBCBC)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 8,
                                  color: Color(0xffFFA235),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 8,
                                  color: Color(0xffFFA235),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 8,
                                  color: Color(0xffFFA235),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 8,
                                  color: Color(0xffFFA235),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 8,
                                  color: Color(0xffFFA235),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 12,
                          color: Color(0xffBCBCBC),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
