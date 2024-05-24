import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resumeapp/allscreens/achive.dart';
import 'package:resumeapp/allscreens/addskills.dart';
import 'package:resumeapp/allscreens/profile.dart';
import 'package:resumeapp/allscreens/project.dart';
import 'package:resumeapp/allscreens/reference.dart';
import 'package:resumeapp/allscreens/view.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resumeapp/allscreens/exprince.dart';
import 'package:resumeapp/allscreens/education.dart';

import 'education.dart';
import 'imfo.dart';
import 'objective.dart';

EducationModal? educationModal;

class pdf extends StatefulWidget {
  const pdf({super.key});

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PdfPreview(
          build: (format) => generatePdf(),
        ),
      ),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  final image = pw.MemoryImage(fileimg!.readAsBytesSync());
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (Context) => pw.Padding(
      padding: pw.EdgeInsets.all(8.0),
      child: pw.Center(
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Container(
              height: 700,
              width: 400,
              decoration: pw.BoxDecoration(
                borderRadius: pw.BorderRadius.circular(10),
                border: pw.Border.all(color: PdfColors.deepPurple, width: 3),

              ),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      pw.Text('$first $last',
                          style: pw.TextStyle(
                              fontSize: 22, fontWeight: pw.FontWeight.bold)),
                      pw.Container(
                        margin: pw.EdgeInsets.only(top: 15, left: 100),
                        height: 70,
                        width: 70,
                        decoration: pw.BoxDecoration(

                          shape: pw.BoxShape.circle,
                        ),
                        child :pw.ClipRRect(
                            horizontalRadius: 35,
                            verticalRadius: 35,
                        child: pw.Image(image,
                            fit: pw.BoxFit.cover)),

                      ),
                    ],
                  ),
                  pw.Text('   $pro', style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold)),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('  Phone : ', style: pw.TextStyle(fontSize: 12)),
                      pw.Text('  $phone',
                          style: pw.TextStyle(
                              color: PdfColors.blue800, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Text('  email : ', style: pw.TextStyle(fontSize: 15)),
                      pw.Text('  $email',
                          style: pw.TextStyle(
                              color: PdfColors.blue800, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                    ],
                  ),
                  pw.Divider(height: 2, color: PdfColors.teal),
                  pw.Row(
                   crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('About : ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text(
                        ' I am outgoing, dedicated, and open-minded.\n I get across to people and adjust to changes\n with ease.',
                        style: pw.TextStyle(fontSize: 15,color: PdfColors.blue800,fontWeight: pw.FontWeight.bold),
                      ),
                    ],
                  ),
                  pw.Divider(height: 2, color: PdfColors.blue800),
                  pw.Row(
                    children: [
                      pw.Column(
                        children: [
                          pw.Text('  Personal\n  information :',
                              style: pw.TextStyle(
                                  fontSize: 12,
                                  fontWeight: pw.FontWeight.bold)),
                        ],
                      ),
                      pw.Column(
                        children: [
                          pw.Text(' :$gender ',
                              style: pw.TextStyle(
                                  fontSize: 20,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.blue800)),
                          pw.Text('  :$nat',
                              style: pw.TextStyle(
                                  fontSize: 20,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.blue800)),
                          pw.Text('  :$dob ',
                              style: pw.TextStyle(
                                  fontSize: 20,

                                  color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  pw.Divider(height: 2, color: PdfColors.blue800),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                    children: [
                      pw.Text('Education ',
                          style: pw.TextStyle(
                              fontSize: 12, fontWeight: pw.FontWeight.bold)),
                      ...List.generate(edu.length, (index) => pw.Column(
                        children: [
                         pw.Row(
                           children: [ pw.Text('School name '),
                             pw.Text(edu[index].school!.text,
                                 style: pw.TextStyle(
                                     fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),],
                         ),
                          pw.Row(children: [pw.Text(''
                              'year  '),
                            pw.Text(
                                '${edu[index].firstDate!.text} - ${edu[0].school!.text}',
                                style: pw.TextStyle(
                                    fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),])
                        ]
                      ))
                    ],
                  ),
                  pw.Divider(height: 2, color: PdfColors.blue800),
                  pw.Row(
                    children: [
                      pw.Text(' Experience ',
                          style: pw.TextStyle(
                              fontSize: 12, fontWeight: pw.FontWeight.bold)),
                      ...List.generate(EXP.length, (index) =>
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(' title :'),
                                    pw.Text('${EXP[index].title.text}',
                                        style: pw.TextStyle(
                                            fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                                  ],
                                ),
                                pw.Row(children: [
                                  pw.Text(' Company name  :'),
                                  pw.Text('${EXP[index].name.text}',
                                      style: pw.TextStyle(
                                          fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                                ]),
                                pw.Row(children: [
                                  pw.Text(' year  :'),
                                  pw.Text(
                                      '${EXP[index].first.text} -${EXP[0].last.text}',
                                      style: pw.TextStyle(
                                          fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold))
                                ])
                              ]))
                    ],
                  ),

                  pw.Divider(height: 2, color: PdfColors.teal),
                  pw.Row(
                    children: [
                      pw.Text(' reference ',
                          style: pw.TextStyle(
                              fontSize: 12, fontWeight: pw.FontWeight.bold)),
                      ...List.generate(reffer.length, (index) =>
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(' title :'),
                                    pw.Text('${reffer[index].jobtitle.text}',
                                        style: pw.TextStyle(
                                            fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                                  ],
                                ),
                                pw.Row(children: [
                                  pw.Text(' reference name  :'),
                                  pw.Text('${reffer[index].ref.text}',
                                      style: pw.TextStyle(
                                          fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                                ]),
                                pw.Row(children: [
                                  pw.Text(' Company name  :'),
                                  pw.Text('${reffer[index].coname.text}',
                                      style: pw.TextStyle(
                                          fontSize: 20,color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                                ]),
                                pw.Row(children: [
                                  pw.Text(' phone or email  :'),
                                  pw.Text(
                                      '${reffer[index].phone.text} ',
                                      style: pw.TextStyle(
                                          fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold))
                                ])
                              ]))
                    ],
                  ),
                  pw.Divider(height: 2, ),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                    children: [
                      pw.Text('objavtive : ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text(
                        '  ${objectivelist[selectindex]}',
                        style: pw.TextStyle(fontSize: 15, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold),
                      ),
                    ],
                  ),
                  pw.Divider(height: 2, color: PdfColors.teal),
                  pw.Row(
                    children: [
                      pw.Text('  skill   ',
                          style: pw.TextStyle(
                              fontSize: 15, fontWeight: pw.FontWeight.bold)),
                      ...List.generate(
                          skill.length,
                              (index) => pw.Column(
                              children: [
                                pw.Text('${skill[index].text}   ',
                                    style: pw.TextStyle(
                                        fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                              ]
                          )
                      )
                    ],
                  ),
                  pw.Divider(height: 2,color: PdfColors.blue800),
                  pw.Row(
                    children: [
                      pw.Text('  project   ',
                          style: pw.TextStyle(
                              fontSize: 15, fontWeight: pw.FontWeight.bold)),
                      ...List.generate(
                          projects.length,
                              (index) => pw.Column(
                              children: [
                                pw.Text('${projects[index].text}   ',
                                    style: pw.TextStyle(
                                        fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                              ]
                          )
                      )
                    ],
                  ),
                  pw.Divider(height: 2, color: PdfColors.teal),
                  pw.Row(
                    children: [
                      pw.Text(' achievement ',
                          style: pw.TextStyle(
                              fontSize: 15, fontWeight: pw.FontWeight.bold)),
                      ...List.generate(
                          achivement.length,
                              (index) => pw.Column(
                              children: [
                                pw.Text('${achivement[index].text}   ',
                                    style: pw.TextStyle(
                                        fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                              ]
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
  return pdf.save();
}
