import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:invento/constants.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:universal_html/html.dart' as html;
//import 'package:invento/Services/database_service.dart';

class reporting extends StatefulWidget {
  @override
  _reportingState createState() => _reportingState();
}

final pdf = pw.Document();
String orderNumber = '<<Order_Number>>';
String disclaimerText = '<<Disclaimer_Text>>';
String supplierEmailAddress = '<<Supplier_Name>>';
String supplierName = '<<Supplier_Email_Address>>';
String orderDate = '<<Order_Date>>';
String requiredByDate = '<<Required_By_Date>>';
String ourShipmentAddress = '<<Our_Shipment_Address>>';
String notes = '<<Notes>>';

void createPdfDocument(pw.Document pdf) {
  pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(31), // This is the page margin
      build: (pw.Context context) {
        return <pw.Widget>[
// Document heading with logo, disclaimer text, and title
          pw.Table(
            children: [
              pw.TableRow(
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      //
                      pw.Placeholder(
                          fallbackHeight: 50,
                          fallbackWidth: 75,
                          strokeWidth: 2),
                      pw.Text(
                        '$disclaimerText',
                        style: pw.TextStyle(fontSize: 8, color: PdfColors.grey),
                      ),
                    ],
                  ),
                  pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(
                        'Purchase Order',
                        style: pw.TextStyle(
                            fontSize: 28, color: PdfColors.deepOrange400),
                      ),
                      pw.Text('Reference Number $orderNumber',
                          textAlign: pw.TextAlign.right),
                    ],
                  ),
                ],
              ),
            ],
            //
          ),
// Gap
          pw.Divider(color: PdfColors.white, thickness: 10),

// Supplier Details
          pw.Table(// This is the starting widget for the table
              children: [
                pw.TableRow(
                  // This is the starting row for the table, within which the subsequent columns will be nested
                  children: [
                    pw.Padding(
                      padding: pw.EdgeInsets.all(4),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            'Purchase Order To',
                            style: pwTableHeadingTextStyle(),
                          ),
                          pw.Text(supplierName),
                          pw.Text(supplierEmailAddress),
                        ],
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.all(4),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'Order Date',
                              style: pwTableHeadingTextStyle(),
                            ),
                            pw.Text(orderDate),
                          ]),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.all(4),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'Required By',
                              style: pwTableHeadingTextStyle(),
                            ),
                            pw.Text(requiredByDate),
                          ]),
                    ),
                  ],
                ),
              ]),
          pw.Table(children: [
            pw.TableRow(// This is the second row for the table
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.all(4),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Ship To',
                          style: pwTableHeadingTextStyle(),
                        ),
                        pw.Text(ourShipmentAddress),
                      ],
                    ),
                  ),
                ]),
            //
            // Now the third row of the table
          ]),
          pw.Table(children: [
            pw.TableRow(// This is the third row for the table
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.all(4),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Notes',
                          style: pwTableHeadingTextStyle(),
                        ),
                        pw.Text(notes),
                      ],
                    ),
                  ),
                ]),
          ]),

          //Gap
          pw.Divider(color: PdfColors.white, thickness: 10),

          //Section Header: Stocked Items
          pw.Header(text: 'Stocked Items'),

          // Stocked Items Table
          // Next Table
          pw.Table(border: pw.TableBorder(), children: [
            pw.TableRow(
              children: [
                paddedHeadingTextCell('Product'),
                paddedHeadingTextCell('Unit'),
                paddedHeadingTextCell('Qty'),
                paddedHeadingTextCell('Price'),
                paddedHeadingTextCell('Discount'),
                paddedHeadingTextCell('Tax'),
                paddedHeadingTextCell('Total AUD'),
              ],
            ),
            // Now the next table row
          //  buildRowsForInventoryItems(),
          ]),

          //Gap
          pw.Divider(color: PdfColors.white, thickness: 10),

          //Section Header: Stocked Items
          pw.Header(text: 'Custom Build Items and Additional Costs'),
          //

          // Stocked Items Table
          // Next Table
          pw.Table(border: pw.TableBorder(), children: [
            pw.TableRow(
              children: [
                paddedHeadingTextCell('Description'),
                paddedHeadingTextCell('Unit'),
                paddedHeadingTextCell('Qty'),
                paddedHeadingTextCell('Price'),
                paddedHeadingTextCell('Discount'),
                paddedHeadingTextCell('Tax'),
                paddedHeadingTextCell('Total AUD'),
              ],
            ),
            // Now the next table row
            buildRowsForNonInventoryItems(),
          ]),
          //

          // Gap
          pw.Divider(color: PdfColors.white, thickness: 10),

          // Totals heading
          pw.Header(text: 'Totals'),
          // Totals Table
          pw.Table(border: pw.TableBorder(), children: [
            pw.TableRow(children: [
              pw.Padding(
                padding: pw.EdgeInsets.all(4),
                child: pw.Column(children: [
                  pw.Text(' '),
                ]),
              ),
              paddedHeadingTextCell('Stocked Items'),
              paddedHeadingTextCell('Additional Costs'),
              paddedHeadingTextCell('Order Total'),
            ]),
            //
            // Now row 2 (the first row with data)
            pw.TableRow(children: [
              paddedHeadingTextCell('Before Tax'),
              paddedTextCell('_______'),
              paddedTextCell('_______'),
              paddedTextCell('_______'),
            ]),
            //
            // Now row 4 (the third row with data)
            pw.TableRow(children: [
              paddedHeadingTextCell('Tax'),
              paddedTextCell('_______'),
              paddedTextCell('_______'),
              paddedTextCell('_______'),
            ]),
            //
            // Now row 2 (the first row with data)
            pw.TableRow(children: [
              paddedHeadingTextCell('Total'),
              paddedTextCell('_______'),
              paddedTextCell('_______'),
              paddedTextCell('_______'),
            ])
          ]),
//
// Divider
          pw.Divider(color: PdfColors.white, thickness: 10),

         // pw.Paragraph(text: kLoremIpsum),
        ];
      }));
}

// pw.TableRow buildRowsForInventoryItems() {
//   List<pw.Column> itemList = [];
//
//   var items = DatabaseService().returnAllInventoryItemsFromAPurchaseOrder();
//   for (var item in items) {
//     final description = item.data()['description'].toString();
//     final unit = item.data()['unit'].toString();
//     final qty = item.data()['qty'].toString();
//     itemList.add(
//       pw.Column(
//         children: [
//           pw.Text(description),
//         ],
//       ),
//     );
//     itemList.add(
//       pw.Column(
//         children: [
//           pw.Text(unit),
//         ],
//       ),
//     );
//     itemList.add(
//       pw.Column(
//         children: [
//           pw.Text(qty),
//         ],
//       ),
//     );
//   }
//   return pw.TableRow(children: itemList);
// }

buildRowsForNonInventoryItems() {
  return pw.TableRow(children: [
    paddedTextCell('_____'),
    paddedTextCell('_____'),
    paddedTextCell('_____'),
    paddedTextCell('_____'),
    paddedTextCell('_____'),
    paddedTextCell('_____'),
    paddedTextCell('_____'),
  ]);
}

pw.TextStyle pwTableHeadingTextStyle() =>
    pw.TextStyle(fontWeight: pw.FontWeight.bold);

pw.Padding paddedTextCell(String textContent) {
  return pw.Padding(
    padding: pw.EdgeInsets.all(4),
    child:
    pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
      pw.Text(textContent, textAlign: pw.TextAlign.left),
    ]),
  );
}

pw.Padding paddedHeadingTextCell(String textContent) {
  return pw.Padding(
    padding: pw.EdgeInsets.all(4),
    child: pw.Column(children: [
      pw.Text(
        textContent,
        style: pwTableHeadingTextStyle(),
      ),
    ]),
  );
}

class _reportingState extends State<reporting> {
  @override
  Widget build(BuildContext context) {
    final pdf = pw.Document();
    createPdfDocument(pdf);

    final bytes = pdf.save();
    final blob = html.Blob([bytes], 'application/pdf');

    return Scaffold(
      appBar: AppBar(
        title: Text('Search for item'),
      ),
      //drawer: myGlobalDrawer(),
     // bottomNavigationBar: kStandardBottomNavigationBarForNoFAB(),
      floatingActionButton: null,
      body: Column(
        children: [

          MaterialButton(
              child: Text('Create and view in browser'),
              color: Colors.yellow,
              onPressed: () async {
                print('i got tapped');

                final url = html.Url.createObjectUrlFromBlob(blob);
                html.window.open(url, "_blank");
                html.Url.revokeObjectUrl(url);
              }),
          ElevatedButton(
            child: Text("Create and download"),
            onPressed: () {
              final url = html.Url.createObjectUrlFromBlob(blob);
              final anchor =
              html.document.createElement('a') as html.AnchorElement
                ..href = url
                ..style.display = 'none'
                ..download = 'some_name.pdf';
              html.document.body?.children.add(anchor);
              anchor.click();
              html.document.body?.children.remove(anchor);
              html.Url.revokeObjectUrl(url);
            },
          ),
        ],
      ),
    );
  }
}