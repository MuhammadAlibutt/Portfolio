import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  MyProject(title, des, star, icon) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Card(
        color: Colors.grey[700],
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 50, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              des,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Text(star),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: icon,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        //elevation: ,
        backgroundColor: Colors.grey[700],
        title: Text('My Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyProject(
                'Daily Expense',
                'App to record daily expense',
                '10',
                Icon(FontAwesomeIcons.github),
              ),
              MyProject(
                'Chat App',
                'App for communication',
                '9',
                Icon(FontAwesomeIcons.github),
              ),
              MyProject(
                'Quiz App',
                'App where you can make and give quiz',
                '10',
                Icon(FontAwesomeIcons.github),
              ),
              MyProject(
                'E-commerce App',
                'Online Store',
                '10',
                Icon(FontAwesomeIcons.github),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
