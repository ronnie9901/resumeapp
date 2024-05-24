


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addskils extends StatefulWidget {
  const addskils({super.key});

  @override
  State<addskils> createState() => _addskilsState();
}

class _addskilsState extends State<addskils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add skills'),
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
                  setState(() {
                    TextEditingController txtController=TextEditingController();
                    skill.add(txtController);

                  });
                },child: Text(' + Add Exprince ',style: TextStyle(color: Colors.white,letterSpacing: 1),),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(
              skill.length,
                  (index) => Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Column(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 230,
                      child: TextFormField(
                        controller: skill[index],
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                          label: Text(
                            'skill',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  skill.removeAt(index);
                                });
                              },
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.grey, fontSize: 18),
                              )),
                        ],
                      ),
                    )
                  ],
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
}

String skills ="";
List<TextEditingController> skill = [

];
