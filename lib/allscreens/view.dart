import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:resumeapp/allscreens/education.dart';
import 'package:resumeapp/allscreens/exprince.dart';
import 'package:resumeapp/allscreens/imfo.dart';

import 'addskills.dart';


class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Template'),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 440,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.deepPurple, width: 3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$first $last',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 100),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      Text('   $pro', style: TextStyle(fontSize: 15)),
                      Row(
                        children: [
                          Text('  Phone : ', style: TextStyle(fontSize: 12)),
                          Text('$phone',
                              style:
                                  TextStyle(color: Colors.teal, fontSize: 10)),
                        ],
                      ),
                      Row(
                        children: [
                          Text('  email : ', style: TextStyle(fontSize: 12)),
                          Text('   $email',
                              style:
                                  TextStyle(color: Colors.teal, fontSize: 10)),
                        ],
                      ),
                      Divider(height: 2, color: Colors.teal),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('  About : ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            ' I am outgoing, dedicated, and open-minded.\n I get across to people and adjust to changes\n with ease.',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                      Divider(height: 2, color: Colors.teal),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('  Personal\n  information :',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text(' :$gender ',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal)),
                              Text('  :$nat',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal)),
                              Text('  :$dob ',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal)),
                            ],
                          ),
                        ],
                      ),
                      Divider(height: 2, color: Colors.teal),
                      Row(
                        children: [
                          Text(' Education '),
                          Text('$name',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.teal)),
                          Text('$start $end',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.teal)),
                        ],
                      ),
                      Divider(height: 2, color: Colors.teal),
                      Row(
                        children: [
                          Text(' Experience '),
                          Text('$coname',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.teal)),
                          Text('$stt $endy',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.teal)),
                        ],
                      ),
                      Divider(height: 2, color: Colors.teal),
                      Row(
                        children: [
                          Text(' skills '),
                          // Text('${savetext[0]}',
                          //     style:
                          //         TextStyle(fontSize: 10, color: Colors.teal)),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


