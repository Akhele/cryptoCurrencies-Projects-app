import 'package:flutter/material.dart';
import 'configuration.dart';

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
                        icon: Icon(Icons.arrow_back_ios))
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
                          color: primaryColor,
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
          ),

          Container(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: primaryColor),
                ),
                prefixIcon: Icon(Icons.search, color: primaryColor,),
                hintText: "Search Crypto..",
                filled: true,
                fillColor: Colors.grey[200]
              ),
            ),
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          ),

          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cryptos.length,
              itemBuilder: (context,index){
                return Container(
                  child: Column (
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(cryptos[index]['iconPath']),
                      ),
                      Text(cryptos[index]['Name'])
                    ],
                  ),
                );
              },
            ),
          )

        ],
      ),
    );
  }
}
