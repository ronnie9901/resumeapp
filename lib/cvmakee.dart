import 'package:flutter/material.dart';

class cvmaker extends StatefulWidget {
  const cvmaker({super.key});

  @override
  State<cvmaker> createState() => _cvmakerState();
}

class _cvmakerState extends State<cvmaker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: false,
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back_ios)),
        title: Text('CV maker'),
        actions: [
          Icon(Icons.notifications_active_outlined)
        ],
        backgroundColor: Colors.blue,
      ),

      body: Column(children: [
        Divider(
         thickness: 3,height: 2,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: () {
            Navigator.of(context).pushNamed('/profile');
          },
            child: Container(

              alignment: Alignment.center,
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(' + create new',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
        )
      ],),
    );
  }
}
