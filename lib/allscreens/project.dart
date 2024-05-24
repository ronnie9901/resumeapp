
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add project'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/achive');
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
                    projects.add(txtController);

                  });
                },child: Text(' + Add project ',style: TextStyle(color: Colors.white,letterSpacing: 1),),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(
              projects.length,
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
                        controller: projects[index],
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                          label: Text(
                            'project',
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
                                  projects.removeAt(index);
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


List projects = [

];
