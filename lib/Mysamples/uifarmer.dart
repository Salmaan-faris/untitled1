

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(MaterialApp(home: farmui(),));
}

class farmui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           backgroundColor: Colors.blueGrey,
           expandedHeight: 180,
           actions: [
             Padding(
               padding: const EdgeInsets.all(10),
               child: Icon(Icons.location_on),
             ),
             Padding(
               padding: const EdgeInsets.all(10),
               child: Center(child: Text("calicut",style: TextStyle(fontWeight: FontWeight.bold,),)),
             )
           ],
           // floating: false,
           // pinned: true,
           flexibleSpace: ListView(
             children: [  const SizedBox(height: 60,),
               const Text('FARMERS FRESH ZONE',textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
               color: Colors.white70),),

               Container(
                 margin:const EdgeInsets.symmetric(vertical: 25,horizontal: 10) ,
                 padding: const EdgeInsets.all(5),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(2)),
                 child: Row(
                   children: [
                     Icon(Icons.search),
                     Text('search....'),
                   ],
                 ) ,
               ),
             ],
           ),
         ),
         SliverList(delegate: SliverChildListDelegate([
           const SizedBox(
             height: 20,
           ),

           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 height: 30,
                 width: 100,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.blueGrey,width: 3)),
                 child: Center(child: Text("vegitables")),
               ),

               Container(
                 height: 30,
                 width: 100,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                 border: Border.all(width: 3,color: Colors.blueGrey)),
                 child: Center(child: Text("fruits")),

               ),
               Container(
                 height: 30,
                 width: 100,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.blueGrey,width: 3)),
                 child: Center(child: Text("other")),

               )

             ],
           ),SizedBox(height: 20,),
           CarouselSlider(items: [
             Container(
               decoration: BoxDecoration(image: DecorationImage(
                 image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS"
                   "KUmZoW6zmIoD8EXAP9JoyaqUrwp1erLP2fQ&usqp=CAU"),

               ),color: Colors.white12)
             ),
             Container(
                 decoration: BoxDecoration(image: DecorationImage(
                   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images"
                       "?q=tbn:ANd9GcTTSHHIp_HJ8NpKbzLv_CRPR1uIjXlRVGKLhQ&usqp=CAU"),

                 ),color: Colors.white12)
             ),
           ], options:CarouselOptions(
             height: 250,
             autoPlay: true,
           )
           ),
           SizedBox(height: 10,),
           Container(
             height: 100,
             width: double.infinity,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),
                 border: Border.all(width: 3,color: Colors.blueGrey)),
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [SizedBox(height: 20,),
                     Icon(Icons.alarm,size: 30,),
                     Text("30 mints policy")
                   ],
                 ),
                 Column(
                   children: [SizedBox(height: 20,),
                     Icon(Icons.perm_contact_cal_outlined,size: 30,),
                     Text("tracebility")
                   ],
                 ), Column(
                   children: [SizedBox(height: 20,),
                     Icon(Icons.home_work_rounded,size: 30,),
                     Text("Local surroundings")
                   ],
                 ),

               ],
             ),
           ),

         ]
         ),

         ),
         SliverList(delegate: SliverChildListDelegate([
           SizedBox(height: 10,),
           Text("category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
           SizedBox(height: 10,),
           //grid_builder()
           gridexplbuilder1()
         ],
         ),
         ),
       ],

     ),
     bottomNavigationBar: BottomNavigationBar(items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
       BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'account')
     ],),
   );
  }
}
class grid_builder extends StatelessWidget {
  var image=[
    "assets/image/sheoblack.jpeg","assets/image/Iconimage.png",
    "assets/image/Iconimage.png","assets/image/Iconimage.png",];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      //padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context,index){
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: MediaQuery.of(context).size.height *0.2,
              // width: MediaQuery.of(context).size.height *0.2,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white60,blurRadius: 10
                )
              ]),
              child: Image.asset(image[index]),
            ),
          ],
        );
      },itemCount: image.length,);

  }

}
class gridexplbuilder1 extends StatelessWidget {
  var datas=['contact','camera','call','message','navigation','alarm','Email','print',
    'book','music','Backup','Wallet',];
  var image=[Icons.account_circle,Icons.camera_alt,Icons.call,Icons.message,
    Icons.navigation,Icons.alarm,Icons.email,Icons.print,Icons.book,
    Icons.music_note,Icons.backup,Icons.wallet,];

  var colos=[Colors.lightGreen,Colors.blueGrey,Colors.redAccent,Colors.lightBlueAccent,Colors.yellowAccent,Colors.black12,
    Colors.yellow,Colors.purple,Colors.orange,Colors.brown,Colors.blue[900],Colors.lightGreen,];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
        ,crossAxisSpacing: 10,mainAxisSpacing: 10,

      ),shrinkWrap: true
      , itemBuilder: (context,index){
        return Card(shadowColor: Colors.blueGrey,
          color:(colos[index] ),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Icon(image[index],size: 60,),
              ),
              Text(datas[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ],
          ),
        );


        // );
      },itemCount: image.length,);
  }
}


// class grid2() extends StatelessWidget
// GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
// mainAxisSpacing: 20,
// crossAxisSpacing: 20,),
// children: [
// Card(
// child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images"
// "?q=tbn:ANd9GcTTSHHIp_HJ8NpKbzLv_CRPR1uIjXlRVGKLhQ&usqp=CAU"),),
// ),
// Card(
// child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images"
// "?q=tbn:ANd9GcTTSHHIp_HJ8NpKbzLv_CRPR1uIjXlRVGKLhQ&usqp=CAU"),),
// ),
// Card(
// child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images"
// "?q=tbn:ANd9GcTTSHHIp_HJ8NpKbzLv_CRPR1uIjXlRVGKLhQ&usqp=CAU"),),
// ),
// Card(
// child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images"
// "?q=tbn:ANd9GcTTSHHIp_HJ8NpKbzLv_CRPR1uIjXlRVGKLhQ&usqp=CAU"),
// ),
// ),
//  ],),