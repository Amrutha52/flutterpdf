import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;


class PdfPreviewPage extends StatelessWidget
{
  String? text;
  PdfPreviewPage(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(),
      ),
    );
  }

  Future<Uint8List> makePdf() async {
    final pdf = pw.Document();
    final ByteData bytes = await rootBundle.load('assets/images/logo.jpg');
    final Uint8List byteList = bytes.buffer.asUint8List();
    pdf.addPage(
        pw.Page(
            margin: const pw.EdgeInsets.all(5),
            pageFormat: PdfPageFormat.a4,
            build: (context) {
              return pw.Column(
                  //crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Image(pw.MemoryImage(byteList), fit: pw.BoxFit.fitHeight, height: 70, width: 250),
                          pw.Text('MAXVALUE CREDITS & INVESTMENTS LTD',
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                fontSize: 14
                              ))
                        ]
                    ),
                    pw.Divider(thickness: 1),
                    pw.SizedBox(height: 20),
                    pw.Padding(
                      child: pw.Column(
                          children: [
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('E.Code : 5581',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('Bank Name : AXIS BANK',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Name : Amrutha K L',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('Account No : 920010045504220',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Role : Android Developer',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('IFSC : UTIB0002583',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Designation : Executive',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('UAN : ',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Department : IT Department',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('ESIC : 5403967024',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Job Location : Corporate Office',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('SWF : 0',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Date of Join : 01-08-2021',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('No of Days in a Month : 31',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Fixed Gross : 25300',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('Payable Days : 31',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                            pw.SizedBox(height: 10,),
                            pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Text('Contact No: 9645785875',
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold,
                                        )),
                                  ),

                                  pw.Expanded(
                                      child: pw.Text('LOP Days : 0',
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold,
                                          )
                                      )
                                  )
                                ]
                            ),
                          ]
                      ),
                        padding: pw.EdgeInsets.all(15)
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      padding: pw.EdgeInsets.all(5),
                      height: 40,
                      width: 500,
                      child: pw.Center(
                        child: pw.Text("PAY SLIP FOR THE MONTH OF DECEMBER 2023",
                            style: pw.TextStyle(
                              fontSize: 16,
                              fontWeight: pw.FontWeight.bold,
                            )
                        ),
                      ),
                      decoration: pw.BoxDecoration(
                        borderRadius: pw.BorderRadius.circular(2),
                        border: pw.Border.all(
                          width: 1,
                          style: pw.BorderStyle.solid
                        )
                      )
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      //mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Container(
                          //padding: pw.EdgeInsets.all(3),
                          width: 250,
                          height: 400,
                          color: PdfColors.white,
                          child: pw.Table(
                            border: pw.TableBorder.all(),
                            children: [
                              pw.TableRow(children: [
                                pw.Text('Salary\nComponent', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                pw.Text('Fixed\nSalary', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                pw.Text('Earning\nAmount', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                pw.Text('Remarks', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('BA', textAlign: pw.TextAlign.center),
                                pw.Text('20500', textAlign: pw.TextAlign.center),
                                pw.Text('20500', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('DA', textAlign: pw.TextAlign.center),
                                pw.Text('2500', textAlign: pw.TextAlign.center),
                                pw.Text('2500', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('HRA', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('CCA', textAlign: pw.TextAlign.center),
                                pw.Text('200', textAlign: pw.TextAlign.center),
                                pw.Text('200', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('Incentive', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('PMA', textAlign: pw.TextAlign.center),
                                pw.Text('1600', textAlign: pw.TextAlign.center),
                                pw.Text('1600', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('CEA', textAlign: pw.TextAlign.center),
                                pw.Text('200', textAlign: pw.TextAlign.center),
                                pw.Text('200', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('TA', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('SPL', textAlign: pw.TextAlign.center),
                                pw.Text('300', textAlign: pw.TextAlign.center),
                                pw.Text('300', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('GROSS', textAlign: pw.TextAlign.center),
                                pw.Text('25300', textAlign: pw.TextAlign.center),
                                pw.Text('25300', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('LOP Amt', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('Arrear Amt', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('SD RIMB', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                            ],
                          ),
                        ),
                        pw.Container(
                          //padding: pw.EdgeInsets.all(3),
                          width: 320,
                          height: 300,
                          color: PdfColors.white,
                          child: pw.Table(
                            columnWidths: {
                              0 : pw.FixedColumnWidth(110),
                              1 : pw.FixedColumnWidth(90),
                              2 : pw.FixedColumnWidth(90)
                            },
                            border: pw.TableBorder.all(),
                            children: [
                              pw.TableRow(children: [
                                pw.Text('Deduction\nComponent', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                pw.Text('Deduction\nAmount', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                pw.Text('Remarks', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('ESIC', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),
                              ]),
                              pw.TableRow(children: [
                                pw.Text('EPFO', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('SWF', textAlign: pw.TextAlign.center),
                                pw.Text('50', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('AUTO LOAN (EMI)', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('PT', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('SA', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('MI', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('Telephone', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('TDS', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('SD', textAlign: pw.TextAlign.center),
                                pw.Text('0', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('TOTAL\nDEDUCTION', textAlign: pw.TextAlign.center),
                                pw.Text('50', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('NET SALARY', textAlign: pw.TextAlign.center),
                                pw.Text('25250', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                              pw.TableRow(children: [
                                pw.Text('IN WORDS', textAlign: pw.TextAlign.center),
                                pw.Text('TWENTY FIVE THOUSAND TWO HUNDRED AND FIFTY ONLY', textAlign: pw.TextAlign.center),
                                pw.Text('', textAlign: pw.TextAlign.center),

                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // pw.Center(
                    //     child: pw.Column(
                    //         mainAxisAlignment: pw.MainAxisAlignment.center,
                    //         children: [
                    //           pw.Container(
                    //             margin: pw.EdgeInsets.all(10),
                    //             child: pw.Table(
                    //               border: pw.TableBorder.all(),
                    //               children: [
                    //                 pw.TableRow(children: [
                    //                   pw.Text('Sport', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    //                   pw.Text('Total Players', textAlign: pw.TextAlign.center, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    //                 ]),
                    //                 pw.TableRow(children: [
                    //                   pw.Text('Soccer', textAlign: pw.TextAlign.center),
                    //                   pw.Text('11', textAlign: pw.TextAlign.center),
                    //                 ]),
                    //               ],
                    //             ),
                    //           ),
                    //         ]))
                    // pw.Table(
                    //   defaultColumnWidth: pw.FixedColumnWidth(10),
                    //   border: pw.TableBorder(
                    //     bottom: pw.BorderSide.new(color: PdfColors.black),
                    //     left: pw.BorderSide.new(color: PdfColors.black),
                    //     right: pw.BorderSide.new(color: PdfColors.black),
                    //     top: pw.BorderSide.new(color: PdfColors.black),
                    //     verticalInside: pw.BorderSide.new(color: PdfColors.black,),
                    //
                    //   ),
                    //   children: [
                    //     pw.TableRow(
                    //       children: [
                    //         pw.Padding(
                    //           padding: pw.EdgeInsets.all(5),
                    //           child: pw.Text(
                    //             'Salary Component',
                    //             style: pw.TextStyle(fontSize: 8,
                    //                 color: PdfColors.black,
                    //                 fontWeight: pw.FontWeight.bold
                    //             ),
                    //           ),
                    //         ),
                    //         pw.Padding(
                    //           padding: pw.EdgeInsets.all(5),
                    //           child: pw.Text(
                    //             'Fixed Salary',
                    //             style: pw.TextStyle(fontSize: 8,
                    //                 color: PdfColors.black,
                    //                 fontWeight: pw.FontWeight.bold
                    //             ),
                    //           ),
                    //         ),
                    //         pw.Padding(
                    //           padding: pw.EdgeInsets.all(5),
                    //           child: pw.Text(
                    //             'Earning Amount',
                    //             style: pw.TextStyle(fontSize: 8,
                    //                 color: PdfColors.black,
                    //                 fontWeight: pw.FontWeight.bold
                    //             ),
                    //           ),
                    //         ),
                    //         pw.Padding(
                    //           padding: pw.EdgeInsets.all(5),
                    //           child: pw.Text(
                    //             'Remarks',
                    //             style: pw.TextStyle(fontSize: 8,
                    //                 color: PdfColors.black,
                    //                 fontWeight: pw.FontWeight.bold
                    //             ),
                    //           ),
                    //         )
                    //       ]
                    //     )
                    //   ]
                    // )
                  ]
              );
            }
        ));
    return pdf.save();
  }
}