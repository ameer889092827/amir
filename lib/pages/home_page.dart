//import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:login_dribble/home.dart';
import 'package:login_dribble/main.dart';
import 'package:login_dribble/main1.dart';
import 'package:login_dribble/main2.dart';
//import 'package:login_dribble/main1.dart';
//import 'package:login_dribble/main.dart';
//import 'package:login_dribble/main1.dart';
//import 'package:flutter_application_5/pages/dobavituslugu.dart';
//import 'package:flutter_application_5/util/cardwidget.dart';
//import 'package:flutter_application_5/util/cardwidget1.dart';
//import 'package:flutter_application_5/util/cardwidget2.dart';
//import 'package:flutter_application_5/util/cardwidget3.dart';
//import 'package:flutter_application_5/util/emoticon_face.dart';
//import 'package:flutter_application_5/util/exercise_tile.dart';
//import 'package:flutter_application_5/util/emoticon_face.dart';
//import 'package:flutter_application_5/util/exercise_tile.dart';
//import 'package:flutter_application_5/util/emoticon_face.dart';
//import 'package:flutter_application_5/util/exercise_tile.dart';
import 'package:login_dribble/pages/dobavituslugu.dart';
import 'package:login_dribble/pages/sign_in.dart';
import 'package:login_dribble/settings.dart';
import 'package:login_dribble/util/asoasd.dart';
//import 'package:login_dribble/pages/sdcsdcds.dart';
import 'package:login_dribble/util/cardwidget.dart';
import 'package:login_dribble/util/cardwidget1.dart';
import 'package:login_dribble/util/cardwidget2.dart';
import 'package:login_dribble/util/cardwidget3.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

@override
Widget build(BuildContext context) {
  return MaterialApp();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: [
              //privetstvie
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Привет, Амир!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '27 Апр, 2023',
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),

              //poisk
              Container(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    fillColor: Colors.white,
                    // Add a clear button to the search bar
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              //feelings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Услуги',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(),
                    CardWidget1(),
                    CardWidget2(),
                    CardWidget3(),
                  ],
                ),
              ),
            ])),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            SizedBox(
              width: 178,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DobavitUslugu()),
                  );
                },
                child: const Text(
                  'Добавить услугу',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 85,
            ),
            Text(
              '(Эта функция доступна только для волонтеров)',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 290,
        ),
        // Row(
        //   children: [
        //     InkWell(
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const HomePage()),
        //           );
        //       },
        //       child: SizedBox(
        //         width: MediaQuery.of(context).size.width / 4,
        //         child: Padding(
        //           padding: EdgeInsets.all(10.0),
        //           child: Icon(
        //             CupertinoIcons.home,
        //             color: Colors.grey,
        //           ),
        //         ),
        //       ),
        //     ),
        //      InkWell(
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) =>  Home()),
        //           );
        //       },
        //       child: SizedBox(
        //         width: MediaQuery.of(context).size.width / 4,
        //         child: Padding(
        //           padding: EdgeInsets.all(10.0),
        //           child: Icon(
        //             CupertinoIcons.chat_bubble_2,
        //             color: Colors.grey,
        //             size: 30,
        //           ),
        //         ),
        //       ),
        //     ),
        //      InkWell(
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) =>  MyApp4()),
        //           );
        //       },
        //       child: SizedBox(
        //         width: MediaQuery.of(context).size.width / 4,
        //         child: Padding(
        //           padding: EdgeInsets.all(10.0),
        //           child: Icon(
        //             CupertinoIcons.doc_text_search,
        //             color: Colors.grey,
        //           ),
        //         ),
        //       ),
        //     ),
        //      InkWell(
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) =>  MyApp5()),
        //           );
        //       },
        //       child: SizedBox(
        //         width: MediaQuery.of(context).size.width / 4,
        //         child: Padding(
        //           padding: EdgeInsets.all(10.0),
        //           child: Icon(
        //             CupertinoIcons.settings,
        //             color: Colors.grey,
        //           ),
        //         ),
        //       ),
        //     ),
            
          ],
        )));
     
  }
}
