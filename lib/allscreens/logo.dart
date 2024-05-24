import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  const logo({super.key});

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,

         children: [
           Image.asset('assets/logo.png'),
           buildRow(name: '  create professional resume in minite'),
           SizedBox(height: 5,),
           buildRow(name: '  multiple cv & resume templete         '),
           SizedBox(height: 5,),
           buildRow(name: '  Download & share your cv  in Pdf    '),
           SizedBox(height: 30,),
           InkWell(onTap: () {
             Navigator.of(context).pushNamed('/language');
           },
             child: Container(
               alignment: Alignment.center,
               height: 40,
               width: 100,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius:  BorderRadius.circular(20)
               ),
               child: Text('continue'),


             ),
           ),
           SizedBox(height: 5,),
           Text('the action may contain an Ad',style: TextStyle(fontSize: 15,color: Colors.grey),)
         ],
       ),
    );
  }

  Row buildRow( { required String name}) {
    return Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               alignment: Alignment.center,

               height: 25,
               width: 25,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 shape: BoxShape.circle,
               ),
               child: Icon(CupertinoIcons.right_chevron,size: 20,),
             ),
             Text(name),
           ],
         );
  }
}
