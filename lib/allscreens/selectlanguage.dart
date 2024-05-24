import 'package:flutter/material.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select language'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 330,
              width: double.infinity,

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildContainer(name: 'English',num: 0),
                    SizedBox(height: 5,),
                    buildContainer(name: 'arbic',num: 1),
                    SizedBox(height: 5,),
                    buildContainer(name: 'spanish',num: 2),
                    SizedBox(height: 5,),
                    buildContainer(name: 'hindi',num: 3),
                    SizedBox(height: 5,),
                    buildContainer(name: 'garmani',num: 4),
                    SizedBox(height: 5,),
                    buildContainer(name: 'franch',num: 5),
                    SizedBox(height: 5,),
                    buildContainer(name: 'turkish',num: 6),
                    SizedBox(height: 5,),
                    buildContainer(name: 'japanice',num: 7),

                  ],
                ),
              ),

            ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Container(height: 30,width: 130,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.black),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: FloatingActionButton( backgroundColor: Colors.white ,onPressed: () {
                      Navigator.of(context).pushNamed('/cv');

                 },child: Text('Skip'),),
               ),
               Container(height: 30,width: 130,
                 decoration: BoxDecoration(

                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: FloatingActionButton( backgroundColor: Colors.blue ,onPressed: () {

                 Navigator.of(context).pushNamed('/cv');
                 },child: Text('apply'),),
               )
             ],
           )
          ],

        ),


      ),

    );
  }

  Container buildContainer({required String name,int? num}) {
    return Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name),
                    Radio(value:num, groupValue: checkindex, onChanged: (value) {
                      setState(() {
                        checkindex=value!;
                      });
                    },)
                  ],
                ),
              ),

            );
  }
}
int checkindex=0;