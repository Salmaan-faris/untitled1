import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: carinfo(),
  ));
}

class carinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CircleAvatar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Colors.indigo,
                )),
          )
        ],
      ),
      body: CustomScrollView(
        semanticChildCount: 4,
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
                items: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,h_486,"
                                "q_auto:eco,w_864/v1/vehicles/used/2017/ford/mustang/2813-179288-1"))),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://m.media-amazon.com/images/I/51jVwNqOmYL._AC_UF1000,1000_QL80_.jpg"))),
                  )
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white60),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo),
              ),
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOP DEALERS",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 500,
                    ),
                    Text(
                      "more",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),


          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notification"),
        //BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "profile")
      ],),
    );
  }
}


