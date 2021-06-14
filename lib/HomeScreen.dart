import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Animation Variables :
  double xoffset = 0, yoffset = 0, scalefactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            xoffset = 0;
                            yoffset = 0;
                            scalefactor = 1;

                            isDrawerOpen = false;
                          });
                        },
                        icon: Icon(Icons.undo))
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xoffset = 230;
                            yoffset = 250;
                            scalefactor = 0.6;

                            isDrawerOpen = true;
                          });
                        },
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
