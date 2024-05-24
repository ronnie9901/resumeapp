
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class opLanguage extends StatefulWidget {
  const opLanguage({super.key});

  @override
  State<opLanguage> createState() => _opLanguageState();
}

class _opLanguageState extends State<opLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Langunge'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/pdf');
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(

                 ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                        checklanguage.length,
                            (index) => CheckboxListTile(
                          activeColor: Colors.blue,
                          value: checklanguage[index],
                          title: Text('${languagenames[index]}',style: TextStyle(color: Colors.grey),),
                          onChanged: (value) {
                            setState(() {
                              checklanguage[index] = value;
                            });
                            if(value == true)
                            {
                              languages.add(languagenames[index]);
                            }
                            else{
                              languages.remove(languagenames[index]);
                            }
                          },
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List languages = [];

List checklanguage = List.filled(30, false);

List languagenames = [
  'hindi',
  'english',
  'marathi',
  'gujrati',
  'Arabic',
  'Assamese',
  'Asu',
  'Asturian',
  'Azerbaijani',
  'Basaa',
  'Belarusian',
  'Bemba',
  'Bena',
  'Bulgarian',
  'Bambara',
  'Bangla',
  'Tibetan',
  'Breton',
  'Bodo',
  'Bosnian',
  'Catalan',
  'Chakma',
  'Chechen',
  'Cebuano',
  'Chiga',
  'Cherokee',
  'Central Kurdish',
  'Czech',
  'Welsh',
  'Danish',
  'Taita',
  'German',
  'Zarma',
  'Lower Sorbian',
  'Duala',
  'Jola-Fonyi',
  'Dzongkha',
  'Embu',
  'Ewe',
  'Greek',
  'English',
  'Esperanto',
  'Spanish',
  'Estonian',
  'Basque',
  'Ewondo',
  'Persian',
  'Fulah',
  'Finnish',
  'Filipino',
  'Faroese',
  'French',
  'Friulian',
  'Western Frisian',
  'Irish',
  'Scottish Gaelic',
  'Galician',

];
