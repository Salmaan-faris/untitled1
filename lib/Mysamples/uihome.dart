import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: homeui(),));

}
final List rooms=[{
  "image":"https://assets-global.website-files.com/5c6d6c45eaa55f57c6367749/624b471bdf247131f10ea14f_61d31b8dbff9b500cbd7ed32_"
      "types_of_rooms_in_a_5-star_hotel_2_optimized_optimized.jpeg",
  "title":"home",
},
  {
    "image":"https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/lo"
        "cal/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg",
    "title":"home",
  }];
class homeui extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.cyan,
            expandedHeight: 180,

            leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search))
            ],
            floating: true,
            flexibleSpace: ListView(
              children: [
               const SizedBox(height: 70,),
               const Text('type here',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),

                Container(
                margin:const EdgeInsets.symmetric(horizontal:30,vertical:10 ) ,
                  padding:const EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius:BorderRadius.circular(40)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'type location......',
                      border: InputBorder.none,
                      icon: IconButton(onPressed: (){}, icon: Icon(Icons.search))

                    ),
                  ),
                )
              ],
            ),


          ), const SliverToBoxAdapter(child: SizedBox(height: 5,),
          ),SliverToBoxAdapter(
            child: _buildCategories(),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((
              BuildContext context,int index) {
            return _buildRooms(context, index);
          },childCount: 100))
        ],
      ),
    );
  }Widget _buildRooms(BuildContext context,int index){
    var room = rooms[index % rooms.length ];
    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            color: Colors.greenAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(room['image']),
                    Positioned(child: Icon(Icons.star,),right: 8,),
                    Positioned(child: const Text("\$40",),
                    )
                    
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(room['title'],style: const TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height: 5,),
                      const Text('kakkanad,kochi'),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,), 
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          SizedBox(width: 5,)
                          
                          
                          
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );


  }
  Widget _buildCategories(){
    return Container(height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          SizedBox(width: 15,),
          Category(backgroundColor: Colors.red,
            icon: Icons.hotel,
            title: 'Hotel',
          ),
          SizedBox(
            width: 15,
          ),
          Category(backgroundColor: Colors.blue,
            icon: Icons.restaurant,
            title: 'resturant',),
          SizedBox(
            width: 15,
          ),
          Category(backgroundColor: Colors.blue,
            icon: Icons.local_cafe,
            title: 'cafe',)



        ],
      ),
    );

  }

}
class Category extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? backgroundColor;

  const Category({
    Key ? key,
    required this.icon,
    required this.title,
    this.backgroundColor,
  }) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,borderRadius: const BorderRadius.all(Radius.circular(5)),

        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: Colors.white,),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,style: const TextStyle(color: Colors.white),
              ),
            ],
        ),
      ),
    );
  }
}
// }sepflut/lib/ulsss/hotelapp/hhome