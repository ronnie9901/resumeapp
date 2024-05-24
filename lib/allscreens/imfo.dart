import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker picker = ImagePicker();
File? fileimg, img;
XFile? xfileimage;

class imfo extends StatefulWidget {
  const imfo({super.key});

  @override
  State<imfo> createState() => _imfoState();
}

GlobalKey<FormState> formkey = GlobalKey();

class _imfoState extends State<imfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Imformation'),
        actions: [
          InkWell(
            onTap: () {
              bool res = formkey.currentState!.validate();
              if (res) {
                Navigator.of(context).pushNamed('/obj');
              }
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
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.only(left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: (fileimg != null)
                          ? DecorationImage(
                              image: FileImage(fileimg!),
                            )
                          : null,
                      shape: BoxShape.circle,
                      color: Colors.black),
                ),
                Align(
                    alignment: Alignment.center, child: Text('add your photo')),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () async {
                            xfileimage = await picker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              if (xfileimage != null) {
                                fileimg = File(xfileimage!.path);
                              }
                            });
                          },
                          icon: Icon(
                            Icons.image,
                          )),
                      IconButton(
                          onPressed: () async {
                            xfileimage = await picker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              if (xfileimage != null) {
                                fileimg = File(xfileimage!.path);
                              }
                            });
                          },
                          icon: Icon(
                            Icons.camera_alt_outlined,
                          ))
                    ],
                  ),
                ),
                buildTextFormField(
                  controller: txtenamef,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value must be requried';
                    }
                  },
                  name: 'First Name',
                  labe: 'first name',
                  hintname: 'rohan',
                  icons: Icons.account_box_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
                  controller: txtnamel,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value must be requried';
                    }
                  },
                  name: 'Last Name',
                  labe: 'last name',
                  hintname: 'father name',
                ),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
                  controller: txtpro,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                    },
                    name: 'Profesional',
                    labe: 'Professional',
                    hintname: 'Professional',
                    icons: Icons.shopping_bag_outlined),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
                controller: txtgender,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                    },
                    name: 'Gender',
                    labe: 'gender',
                    hintname: 'Male',
                    icons: Icons.transgender_sharp),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
  controller:  txtnat,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                    },
                    name: 'nationality',
                    labe: 'natinality',
                    hintname: 'hindu',
                    icons: Icons.flag),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
                    controller: txtphone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                      if(value.length>10 || value.length<10)
                        {
                          return ' number is only letter ';
                        }
                    },
                    name: 'phone',
                    labe: 'last name',
                    hintname: '0123456789',
                    keybord: TextInputType.number,


                    icons: Icons.call),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
                    controller: txtemail,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                      if (!value.contains('@gmail.com')) {
                        return 'must be inter @gmail.com';
                      }
                      if (value!.toString() == '@gmail.com') {
                        return 'must be inter @gmail.com';
                      }
                      if (value!.contains(' ')) {
                        return 'space is not allow ';
                      }
                    },
                    name: 'e-mail',
                    labe: 'e-mail',
                    hintname: '@abcgmail.com',
                    icons: Icons.email_outlined),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
            controller: txtbirth,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                    },
                    name: 'date of birth',




                    icons: Icons.calendar_month_outlined),
                SizedBox(
                  height: 10,
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
        ),
      ),
    );
  }

  TextFormField buildTextFormField({
    required String name,
    IconData? icons,
     String? labe,
    TextEditingController? controller,
    TextInputType? keybord,
    String? hintname,
    required String? Function(String? value) validator,

  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keybord,
      validator: validator,
      style: TextStyle(fontSize: 15, wordSpacing: 2),
      decoration: InputDecoration(
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        label: Text(
          name,
          style: TextStyle(color: Colors.black),
        ),
        prefixIcon: Icon(icons),
        hintText: hintname,
      ),

    );
  }
}

TextEditingController txtemail = TextEditingController();
TextEditingController txtphone = TextEditingController();
TextEditingController txtenamef = TextEditingController();
TextEditingController txtnamel = TextEditingController();
TextEditingController txtadd = TextEditingController();
TextEditingController txtpro = TextEditingController();
TextEditingController txtbirth = TextEditingController();
TextEditingController txtgender = TextEditingController();
TextEditingController txtnat = TextEditingController();


String phone='';
String nat='';
String gender='';
String email='';
String first='';
String last='';
String pro ='';
String dob ='';






