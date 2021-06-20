import 'package:crypto_projects/configuration.dart';
import 'package:flutter/material.dart';

import 'configuration.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                  child: Container(
                color: primaryColor,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
              )),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 30, right: 10, left: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: 0,
                  child: Image.asset("images/cryptos/SHIB.png")
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  boxShadow: ListShadow,
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        boxShadow: ListShadow,
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          boxShadow: ListShadow,
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        child: Center(
                            child: Text(
                          "Bla Bla bLa",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
            ),
          ),
        ],
      ),
    );
  }
}
