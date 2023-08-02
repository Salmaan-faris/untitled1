import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Mysamples/grid.dart';
import 'package:untitled1/Mysamples/uinewscatogary.dart';
import 'package:untitled1/list_2.dart';

void main() {
  runApp(MaterialApp(
    home: newshour(),
  ));
}

class newshour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: appbarclr(),
          backgroundColor: Colors.orange[50],
          actions: [
            Icon(
              Icons.settings,
              color: Colors.black,
            ),
            SizedBox(
              width: 30,
              height: 30,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('about')),
                PopupMenuItem(child: Text("help"))
              ];
            })
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            labelColor: Colors.orange,
            tabs: [
              Tab(
                text: 'data stat',
              ),
              Tab(
                text: 'uploaded item',
              ),
              Tab(
                text: 'all data',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [uploadeditems(), listview(), grid()],
        ),
      ),
    );
  }
}

class uploadeditems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        category(),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.black38)),
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "cover picture url",
                style: TextStyle(color: Colors.black38),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.black38)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Title",
              style: TextStyle(color: Colors.black38),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.black38)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Descryption",
                  style: TextStyle(color: Colors.black38),
                ),
                Icon(Icons.highlight_remove_outlined)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          height: 30,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_box_outlined),
              ),
              Text("notify to all user"),
              SizedBox(
                width: 400,
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined)),
              Text("preview")
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: double.infinity,
          color: Colors.orange,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.save,
              color: Colors.white,
            ),
            Text(
              "Save Data",
              style: TextStyle(color: Colors.white),
            ),
          ]),
        )
      ]),
    );
  }
}

class category extends StatefulWidget {
  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      title: Text("Category"),
      children: [
        ListTile(
          title: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return category1();
                }));
              },
              child: Text("category to select")),
        ),
      ],
    );
  }
}

class appbarclr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: "NEWS",
              style: TextStyle(
                color: Colors.black,
              )),
          TextSpan(
              text: "HOURS",
              style: TextStyle(
                color: Colors.orange[700],
              )),
          TextSpan(text: "-admin", style: TextStyle(color: Colors.black54))
        ],
      ),
    );
  }
}
