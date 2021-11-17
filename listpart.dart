import 'package:flutter/material.dart';

class Listpart extends StatelessWidget {
  final partenrsList = [
    {
      'image': 'images/almarai.jpg',
      'partName': 'المراعي',
    },
    {'image': 'images/puk.png', 'partName': "بـــوك"},
    {'image': 'images/puk.png', 'partName': "بـــوك"},
    {'image': 'images/puk.png', 'partName': "بـــوك"},
    {'image': 'images/puk.png', 'partName': "بـــوك"},
    {'image': 'images/puk.png', 'partName': "بـــوك"},
    {'image': 'images/puk.png', 'partName': "بـــوك"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: partenrsList.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(
              semanticContainer: true,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              margin: EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                height: 100,
                width: 100,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 100,
                      alignment: Alignment.center,
                      child: Image.asset(
                        partenrsList[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      partenrsList[index]['partName'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              print("hi");
            },
          );
        });
  }
}
