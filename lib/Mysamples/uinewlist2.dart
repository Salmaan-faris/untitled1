import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: newslist(),));
}
class newslist extends StatelessWidget{
  var images=["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_WKE57Qy_h68genIzrj8R517q2XxQyIYZcw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFOSv09MHyTfOksl_TJqV3v4ymSnVGxQQhNw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx_laTBRwtHn5S7_cqaFw5TwgNMWler6EqXA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtQSqALb_FR9EyQci8geXuorX8UEbcxB6YNoE3UwhCpXE2Uihp8hAAwDLYCf0TzYYOhxg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFeMi5WOevX66nxp9nm7MDGv9u49nqmUtrjw&usqp=CAU",];
var datas=["sports","entertain","sports","technology","travel"];
var news=["football retired from Zlatan ibrahimovic ",
         "oppenheimer released....first day response is very high",
"leonel messi joined intermiami club",
"redme new phone released",
    "himalaya is ....."];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title: Text("Popular News"),) ,
      body: ListView.separated(itemBuilder: (context,index){
        return Stack(
          children: [
          Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color: Colors.white10),),
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 40,left: 20),
              child: Container(
                height: 140,width: 130,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage(images[index],),fit: BoxFit.fill),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 80,left: 200,top: 10),
              child: Container(height: 120,width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(news[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 200,top: 135),
              child: Container(
                height: 20,width: 120,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Colors.black38,
                border: Border.all(width: 1)),

                child: Text(datas[index]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160,left: 200,bottom: 15),
              child: Container(
                height: 80,
                width: double.infinity,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.timer,),Text("24h ago"),
                    SizedBox(width: 400,),
                    Icon(Icons.favorite_border)
                  ],
                ),
              ),
            )
          ],
        );
      },
          separatorBuilder:(context,index){
        return Divider(thickness: 50,color: Colors.white,);
          } ,
          itemCount:5),
    );
  }

}
