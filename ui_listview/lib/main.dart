import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List name = [
    "James D. McGovern",
    "Juan E. Burks",
    "Nicholas A. Dale",
    "Sean K. Hogue",
    "Muriel R. Cipriani",
    "Anthony M. Alegria"
  ];
  List number = [
    "770-499-8430",
    "205-838-3641",
    "808-395-3770",
    "270-371-7392",
    "810-797-0899",
    "720-888-7556"
  ];
  List image = [
    "Assets/Images/a.png",
    "Assets/Images/b.png",
    "Assets/Images/c.png",
    "Assets/Images/d.png",
    "Assets/Images/e.png",
    "Assets/Images/f.png"
  ];

  List page=[James(),Juan(),Nicholas(),Sean(),Muriel(),Anthony()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'List view',
              style: TextStyle(fontSize: 24),
            )),
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('${image[index]}')),
                title: Text('${name[index]}',style: TextStyle(fontSize: 24)),
                subtitle: Text('${number[index]}'),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return page[index];
                    },));

                    },
                child: Text("Click..."),
                )
                // Wrap(children: [
                //   IconButton(onPressed: () {
                //     Wrap(children: [
                //       IconButton(onPressed: () {
                //         Navigator.push(context, MaterialPageRoute(builder: (context) {
                //           return page[index];
                //         },));
                //       }, icon: Icon(Icons.edit))
                //     ],);
                //   }, icon: Icon(Icons.edit)),
                // ]),
              ),
            );
          },
        ));
  }
}
