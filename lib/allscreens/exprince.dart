import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resumeapp/allscreens/reference.dart';
import 'package:resumeapp/allscreens/reference.dart';

import 'education.dart';
import 'imfo.dart';

class exprince extends StatefulWidget {
  const exprince({super.key});

  @override
  State<exprince> createState() => _exprinceState();
}

class _exprinceState extends State<exprince> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exprince'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/ref');
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
                    if(EXP==txtController)
                    {
                      null;
                    }
                    else{
                      TextEditingController txtconame=TextEditingController();
                      TextEditingController txttitle=TextEditingController();
                      TextEditingController txtstt=TextEditingController();
                      TextEditingController txtendy=TextEditingController();
                      setState(() {
                        EXP.add(exprinceModal(
                            name: txtconame,
                            title: txttitle,
                            first: txtstt,
                            last: txtendy));
                      });

                    }

                  });
                },child: Text(' + Add Exprince ',style: TextStyle(color: Colors.white,letterSpacing: 1),),),
              ),
            ),
            ...List.generate(EXP.length, (index) => ListTile(
              title: Padding(
                padding: const EdgeInsets.all(10.0),

                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 280,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2,color: Colors.blue.shade900,)
                  ),
                  child: Column(
                    children: [
                      buildTextField(name: 'Job title',icons: Icons.shopping_bag_outlined,controller: EXP[index].title),
                      buildTextField(name: 'Company name',icons: Icons.insert_drive_file_outlined,controller:EXP[index].name ),
                      buildTextField(name: 'start year',icons: Icons.date_range,controller:EXP[index].first,keybord: TextInputType.number),
                      buildTextField(name: 'end year',icons: Icons.date_range,controller:EXP[index].last,keybord: TextInputType.number),
                    ],
                  ),
                ),
              ),
            )),
            Container(
              height: 50,
              width: 100,
              margin: EdgeInsets.only(left: 200),
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {

                  // last=txtnamel.text;
                  // nat=txtnat.text;
                  // gender=txtgender.text;
                  // dob=txtbirth.text;
                  // pro=txtpro.text;
                  // email=txtemail.text;
                  // first=txtenamef.text;
                  // phone=txtphone.text;

                  // name =txtsclname.text;
                  // degree=txtdegree.text;
                  // end=txtend.text;
                  // start=txtstrt.text;



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

  TextField buildTextField({required  String name, IconData? icons,TextEditingController? controller,    TextInputType? keybord,}) {
    return TextField(
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
    );

  }
}



String coname='';
String title='';
String stt='';
String endy='';




List <exprinceModal>EXP=[

];

class exprinceModal {
  TextEditingController name;
  TextEditingController title;
  TextEditingController first;
  TextEditingController last;

  exprinceModal({required this.name,required this.title,required this.first,required this.last});
}
