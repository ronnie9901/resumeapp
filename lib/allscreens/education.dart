import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resumeapp/allscreens/reference.dart';

import 'imfo.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/exp');
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
                    if(edu==txtController)
                    {
                      null;
                    }
                    else{
                      TextEditingController txtsclname=TextEditingController();
                      TextEditingController txtdegree=TextEditingController();
                      TextEditingController txtstrt=TextEditingController();
                      TextEditingController txtend=TextEditingController();
                      setState(() {
                        edu.add(EducationModal(
                            school: txtsclname,
                            degree: txtdegree,
                            firstDate: txtstrt,
                            lastDate: txtend));
                      });


                    }
        
                  });
                },child: Text(' + Add education ',style: TextStyle(color: Colors.white,letterSpacing: 1),),),
              ),
            ),
            ...List.generate(edu.length, (index) => ListTile(
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
                      buildTextField(name: 'school name',icons: Icons.holiday_village,controller1: edu[index].school),
                      buildTextField(name: 'degree',icons: Icons.school,controller1: edu[index].degree),
                      buildTextField(name: 'start year',icons: Icons.date_range,controller1: edu[index].firstDate,keybord: TextInputType.number),
                      buildTextField(name: 'end year',icons: Icons.date_range,controller1: edu[index].lastDate,keybord: TextInputType.number),
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
                  for(int i=0;i<edu.length;i++)
                  {
                    print(edu[i].school!.text);
                    print(edu[i].lastDate!.text);
                    print(edu[i].firstDate!.text);
                    print(edu[i].degree!.text);
                  }


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

  TextField buildTextField({required  String name, IconData? icons,TextEditingController? controller1,    TextInputType? keybord,}) {
    return TextField(
      controller: controller1,
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

List<List<TextEditingController>> controller =[];
String name='';
String degree='';
String start='';
String end='';

 List <EducationModal>edu=[

 ];

class EducationModal {
  TextEditingController? school;
  TextEditingController? degree;
  TextEditingController? firstDate;
  TextEditingController? lastDate;

  EducationModal({this.school, this.degree, this.firstDate, this.lastDate});
}