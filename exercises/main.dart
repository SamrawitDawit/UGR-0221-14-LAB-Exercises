import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.help),
        title: Text('iJTracker'),
        actions: [Icon(Icons.notifications),SizedBox(width: 20,), Icon(Icons.settings)],
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            CircleAvatar(child: Image.asset("assets/coffee.jpg"),),
            Row(
              children: [
            Column(
            children: [Text('Robert Steven', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Row(children: [Icon(Icons.directions_car, color: Colors.blue,),
            SizedBox(width: 10,),
            Container(
              child: Text('B 2455 UJD| 704884736262', style: TextStyle(color: Colors.blue)),
              width: 150,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            )]
            )],
            )
            ],),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text('Log Out'),
            )
          ]),
          SizedBox(height: 20,),
          Row(
            children: [Expanded(
              child: Container(
                child: Center(child: Text('Online| Battery: 90%', style: TextStyle(color: Colors.white),)),
                color: Colors.blue,
              ),
            )],
          ),
          Expanded(child: Grid()),
        ],

      )

    );
  }
}
class Grid extends StatelessWidget {
  final List<GridItem> items = [
    GridItem(Icons.map, 'Map All Devices'),
    GridItem(Icons.location_on, 'Live Location'),
    GridItem(Icons.history, 'History Location'),
    GridItem(Icons.language, 'Set Geofence'),
    GridItem(Icons.info_rounded, 'Detail Info'),
    GridItem(Icons.edit, 'Edit Device'),
    GridItem(Icons.phone, 'Change Center Number'),
    GridItem(Icons.key, 'Disabled Menu'),
    GridItem(Icons.gps_fixed, 'Set GPS Time Interval'),
    GridItem(Icons.restart_alt, 'Restart Device'),
    GridItem(Icons.battery_charging_full, 'Power Saving Mode'),
    GridItem(Icons.power, 'Normal Mode'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1, color: Colors.grey),
              left: BorderSide(width: 1, color: Colors.grey),
            ),
          ),
          child: GridTile(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(items[index].icon, size: 48, color: Colors.blue),
                  SizedBox(height: 8),
                  Text(
                    items[index].text,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
class GridItem {
  final IconData icon;
  final String text;

  GridItem(this.icon, this.text);
}





