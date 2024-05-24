import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'imfo.dart';

class reference extends StatefulWidget {
  const reference({super.key});

  @override
  State<reference> createState() => _referenceState();
}

class _referenceState extends State<reference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reference'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/project');
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
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(onPressed: () {
                  TextEditingController txtController=TextEditingController();
                  setState(() {
                    if(reffer==txtController)
                    {
                      null;
                    }
                    else{
                      setState(() {

                        TextEditingController txtrefname=TextEditingController();
                        TextEditingController txtjob=TextEditingController();
                        TextEditingController txtcompanyname=TextEditingController();
                        TextEditingController txtphone=TextEditingController();
                        reffer.add(refModal(
                            ref: txtrefname,
                            jobtitle: txtjob,
                            coname: txtcompanyname,
                            phone: txtphone));
                      });
                    }

                  });
                },child: Text(' + Add education ',style: TextStyle(color: Colors.white,letterSpacing: 1),),),
              ),
            ),
            ...List.generate(reffer.length, (index) => ListTile(

              title: Padding(
                padding: const EdgeInsets.all(10.0),

                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 350,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2,color: Colors.blue.shade900,)
                  ),
                  child: Column(
                    children: [
                      buildTextField(name: ' Reference name',icons: Icons.holiday_village,controller: reffer[index].ref),
                      buildTextField(name: 'job title',icons: Icons.school,controller: reffer[index].jobtitle),
                      buildTextField(name: 'company name',icons: Icons.date_range,controller: reffer[index].coname,),
                      buildTextField(name: 'phone',icons: Icons.date_range,controller: reffer[index].phone,keybord: TextInputType.number),
                    ],

                  ),


                ),

              ),

            ),
            ),


            Container(
              height: 50,
              width: 100,
              margin: EdgeInsets.only(left: 200),
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {

                  last=txtnamel.text;
                  nat=txtnat.text;
                  gender=txtgender.text;
                  dob=txtbirth.text;
                  pro=txtpro.text;
                  email=txtemail.text;
                  first=txtenamef.text;
                  phone=txtphone.text;



                  Navigator.of(context).pushNamed('/pdf');


                },
                child: Text('view'),
              ),
            )
          ],
        ),
      ),

    );

  }

  Widget buildTextField({required  String name, IconData? icons,TextEditingController? controller,    TextInputType? keybord,}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          controller: controller,
          keyboardType: keybord,
          decoration: InputDecoration(
            label: Text(name),
            //         focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(
            //           color: Colors.blue.shade900
            // )

            prefixIcon: Icon(icons),

          )
      ),
    );

  }
}



String name='';
String degree='';
String start='';
String end='';


List <refModal>reffer=[

];

class refModal {
  TextEditingController coname;
  TextEditingController jobtitle;
  TextEditingController ref;
  TextEditingController phone;

  refModal({required this.coname,required this.jobtitle,required this.ref,required this.phone});
}