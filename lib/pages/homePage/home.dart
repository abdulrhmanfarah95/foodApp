import 'package:flutter/material.dart';

import './listpart.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: ListView(children: <Widget>[
            SizedBox(
              height: 250,
            ),

            //end promotion

            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "شركائنا",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            // start cat
            Container(height: 110, child: Listpart()),
            //end catogry
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "الفئــات",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            //strt list cat
            Container(
                height: 400,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                      onTap: () {
                        print('hi from inkwell');
                      },
                    ),
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                    ),
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                    ),
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                    ),
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                    ),
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                    ),
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                    ),
                    InkWell(
                      child: GridTile(child: Image.asset('images/almarai.jpg')),
                    ),
                  ],
                )),
            // end list cat
          ]),
        ));
  }
}
