import 'dart:typed_data';

import 'package:flutter/material.dart';



class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          InkWell(
            onTap: () {

              Navigator.of(context).pushNamed('/pdf');
            },
            child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'view',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Divider(
              height: 2,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/imfo');
                },
                child: buildListTile(
                    icon: Icons.alternate_email_outlined,
                    name: 'Personal imformation')),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/obj');
                },
            child: buildListTile(icon: Icons.flag, name: 'Objective')),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
            InkWell(onTap: () {
              Navigator.of(context).pushNamed('/edu');
            },child: buildListTile(icon: Icons.school, name: 'Education')),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
            InkWell(onTap: () {
              Navigator.of(context).pushNamed('/add');
            },child: buildListTile(icon: Icons.security, name: 'Skills')),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
          InkWell(onTap: () {
            Navigator.of(context).pushNamed('/exp');
          },child:buildListTile(icon: Icons.shopping_bag, name: 'exprince'),),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
          InkWell(onTap: () {
            Navigator.of(context).pushNamed('/ref');
          },child:buildListTile(icon: Icons.person_add, name: 'Reference')),

            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '          More section',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            InkWell(onTap: () {
              Navigator.of(context).pushNamed('/project');
            },child: buildListTile(icon: Icons.folder, name: 'project')),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
          InkWell(onTap: () {
            Navigator.of(context).pushNamed('/ref');
          },child:buildListTile(icon: Icons.emoji_events_outlined, name: 'interest'),),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
          InkWell(onTap: () {
            Navigator.of(context).pushNamed('/ref');
          },child: buildListTile(
                icon: Icons.account_circle_outlined, name: 'language'),),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
          InkWell(onTap: () {
            Navigator.of(context).pushNamed('/achive');
          },child:buildListTile(icon: Icons.star, name: 'Achievement'),),
            Divider(
              height: 2,
              indent: 50,
              color: Colors.black,
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildListTile({required IconData icon, required String name}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}


