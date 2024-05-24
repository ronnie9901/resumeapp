import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class objective extends StatefulWidget {
  const objective({super.key});

  @override
  State<objective> createState() => _objectiveState();
}

class _objectiveState extends State<objective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('obective'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/edu');
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
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Colors.blue.shade900, width: 2)
              ),

              
              child: Text(
                '${objectivelist[selectindex]} ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              children: [
                Text('   obective', style: TextStyle(fontSize: 30),),
              ],
            ),

            SingleChildScrollView(scrollDirection: Axis.horizontal,

              child: Row(children: [
                ...List.generate(objectivelist.length, (index) =>
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectindex=index;
                        });
                      },child: Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.blue.shade900, width: 2)
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${objectivelist[index]}', style: TextStyle(
                              color: Colors.grey, fontSize: 16),),),
                      ),
                    ),
                ),

              ],),
            ),
            Container(
              height: 50,
              width: 100,
              margin: EdgeInsets.only(left: 200),
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {



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

int selectindex=0;

List objectivelist = [
  'Looking for a stimulating role where I can \nleverage my skills and knowledge to drive \npositive change and exceed organizational goals.',
  'Passionate about joining a dynamic team where I can utilize my experience and abilities to deliver exceptional results and contribute to the company\'s growth.',
  'Seeking an opportunity to utilize my skills and qualifications in a collaborative environment, making a meaningful impact and advancing my professional journey.',
  'Looking for a fast-paced and challenging role that allows me to leverage my diverse skill set, drive innovation, and create valuable solutions for clients.',
  'To secure a role in a dynamic and demanding setting that values my skills and experience, empowering me to deliver substantial contributions.',
  'Seeking a challenging role in a progressive company that fosters creativity, embraces diversity, and encourages professional development.',
  'Motivated to contribute my expertise and dedication to an organization that values integrity, excellence, and continuous improvement.',
  'Motivated to contribute to the growth and success of a progressive organization by leveraging my strong interpersonal skills and commitment to excellence.',
  'Passionate about making a meaningful impact in a purpose-driven company that prioritizes social responsibility and positive change.',
];
