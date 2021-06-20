import 'package:flutter/material.dart';

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
                color: Colors.blueGrey,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
              )),

            ],
          )),

          Container(
            margin: EdgeInsets.only(top: 30,right: 10,left: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                    onPressed: () {
                          Navigator.pop(context);
                    },
                  ),

                  IconButton(
                    icon: Icon(Icons.share, color: Colors.white,),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
