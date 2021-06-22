import 'package:crypto_projects/configuration.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.only(top: 50, left: 15),
      duration: const Duration(milliseconds: 250),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text("Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text("Status : Active", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),

          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: drawerItem.map((e) => Row(
                children: [
                    Icon(e['icon'],color: Colors.white,size: 30,),
                      SizedBox(width: 15,),
                  Text(e['title'],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),)
                ],
              )).toList(),
          ),

          Row(

            children: [
              IconButton( icon: Icon(Icons.settings,color: Colors.white, size: 30,),onPressed: (){},),
              Text("Setting", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(width: 15,),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(width: 15,),
              Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ],
          )

        ],
      ),
    );
  }
}
