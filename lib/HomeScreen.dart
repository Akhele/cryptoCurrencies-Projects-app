import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                Column(
                  children: [
                    Text("Crypto Currencies"),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.admin_panel_settings),
                          color: Colors.green,
                          onPressed: () {},
                        ),
                        Text("Definition"),
                      ],
                    )
                  ],
                ),
                CircleAvatar(),
              ],

            ),
          )
        ],
      ),
    );
  }
}
