import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatelessWidget {
  const ProfileUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey[200],
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu)
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com"
                        "/images?q=tbn:ANd9GcS1X8Ytf5ZbYj44d2WGoc50yDIqdkGCOpllcg&usqp=CAU"),
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                //
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, top: 25),
              height: 40,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.facebook,size: 40,color: Colors.blue,
                    ),
                    Icon(Icons.telegram,size: 40,color: Colors.blue[900],),
                    Icon(Icons.mail,size: 40,color: Colors.red,),
                    Icon(Icons.account_circle,size: 40,)

                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50, top: 30),
              height: 80,
              child: Column(
                children: const [
                  Text(
                    'football player',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@magician',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'World famous football player',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              height: MediaQuery.of(context).size.height *0.4,
              width: MediaQuery.of(context).size.width * 0.2,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProfileTile(
                      txt: 'Privacy',
                      icon: Icon(
                        Icons.privacy_tip,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Purchase history',
                      icon: Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Help and Support',
                      icon: Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Settings',
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Invite a friend',
                      icon: Icon(
                        Icons.person_add,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Logout',
                      icon: Icon(
                        EvaIcons.logOut,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {

  const ProfileTile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);

  final String txt;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: ListTile(
        dense: true,
        title: Text(
          txt,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}