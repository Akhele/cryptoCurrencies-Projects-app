import 'package:crypto_projects/screen2.dart';
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
      decoration : BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0)
      ),
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
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
                    prefixIcon: Icon(
                      Icons.search,
                      color: primaryColor,
                    ),
                    hintText: "Search Crypto..",
                    filled: true,
                    fillColor: Colors.grey[200]),
              ),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Favorites :',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cryptos.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: ListShadow,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            cryptos[index]['iconPath'],
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(cryptos[index]['Name']),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

    // End of coins slider

// -----------------------------------------

  // Start o Body :
        // Start -> Body 1
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hot :',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),

            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
                  },
                  child: Container(

                    height: 240,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: ListShadow),
                                margin: EdgeInsets.only(
                                  top: 40,
                                ),
                              ),
                              Align(
                                child: Hero(
                                  tag: 0,
                                  child: Image.asset(
                                    'images/cryptos/SHIB.png',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Container(
                              margin: EdgeInsets.only(top: 60, bottom: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: ListShadow,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

        // End -> Body 1

        // Start -> Body 2

                Container(
                  height: 240,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: ListShadow),
                              margin: EdgeInsets.only(
                                top: 40,
                              ),
                            ),
                            Align(
                              child: Image.asset(
                                'images/cryptos/BNB.png',
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Container(
                            margin: EdgeInsets.only(top: 60, bottom: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: ListShadow,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        // End -> Body2

        // Start -> Body 3

        Container(
          height: 240,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: ListShadow),
                      margin: EdgeInsets.only(
                        top: 40,
                      ),
                    ),
                    Align(
                      child: Image.asset(
                        'images/cryptos/BTC.png',
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Container(
                    margin: EdgeInsets.only(top: 60, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                ),
              )
            ],
          ),
        ),
        // End -> Body3

  // End Of Body


              ],
            ),
            // Start o Body :

          ],
        ),
      ),
    );
  }
}
