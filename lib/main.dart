import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterpdf/CreatePdfMainPage.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';

import 'dart:io';

import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

// Future<void> main() async
// {
//   final pdf = pw.Document();
//
//   pdf.addPage(
//     pw.Page(
//       build: (pw.Context context) => pw.Center(
//         child: pw.Text('Hello Amrrr!'),
//       ),
//     ),
//   );
//
//   final file = File('exampleflutter.pdf');
//   await file.writeAsBytes(await pdf.save());
// }

// class PDFGenerator extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("PDF Generator"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: generatePDF,
//             child: Text("Generate PDF")),
//       ),
//     );
//   }
//
//
//   Future<void> generatePDF() async
//   {
//     final pdf = pw.Document(); // Add a page to the pdf
//     pdf.addPage(
//       pw.Page(
//           build: (pw.Context context)
//           {
//             return pw.Center(
//               child: pw.Text('Hello Amrr', style: pw.TextStyle(fontSize: 20))
//             );
//           }
//
//       )
//     );
//
//     //final directory = await getApplicationDocumentsDirectory();
//     Directory directory = Directory('/Downloads');
//     final path = '${directory.path}/ exampleflutter.pdf';
//     print('path' + path);
//     final file = File(path);
//     await file.writeAsBytes(await pdf.save());
//     //Show a dialog to show pdf has been saved
//
//     // showDialog(
//     //     context: context,
//     //     builder: (context) => AlertDialog(
//     //       title: Text('PDF Generated'),
//     //       content: Text('PDF has been saved to $path'),
//     //       actions: [
//     //         ElevatedButton(
//     //             onPressed: (){
//     //               Navigator.of(context).pop();
//     //             },
//     //             child: Text('OK'))
//     //       ],
//     //     ));
//
//   }
//
//
//
// }
//
// void main()
// {
//   runApp(MaterialApp(
//     home: PDFGenerator(),
//   ));
// }

/*class PDFGenerator extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        body: Center(
            child: TextButton(
                onPressed: _createPDF,
                child: Text('Create PDF')
            )
        )
    );
  }


  Future<void> _createPDF() async {
    //Create a new PDF document
    final pdf = pw.Document();

    final img = await rootBundle.load('assets/images/logo.jpg');
    final imageBytes = img.buffer.asUint8List();

    pw.Image image1 = pw.Image(pw.MemoryImage(imageBytes));

    //Add a new page and draw text
    pdf.addPage(
      pw.Page(
          build: (pw.Context context)
          {
            return pw.Center(
              child: pw.Column(
                children: [
              pw.Container(
                 alignment: pw.Alignment.center,
                 height: 200,
                 child: image1,
              ),
                  pw.Text('Hello Amrr', style: pw.TextStyle(fontSize: 20)),
                  pw.Text('Hello Amrr', style: pw.TextStyle(fontSize: 20)),
                  pw.Text('Hello Amrr', style: pw.TextStyle(fontSize: 20)),
                ]
              )
              //
            );
          }

      )
    );

    //Save the document
    List<int> bytes = await pdf.save();

    //Dispose the document
    //pdf.dispose();

    //Get external storage directory
    final directory = await getApplicationSupportDirectory();

//Get directory path
    final path = directory.path;

//Create an empty file to write PDF data
    File file = File('$path/Output.pdf');

//Write PDF data
    await file.writeAsBytes(bytes, flush: true);

//Open the PDF document in mobile
    OpenFile.open('$path/Output.pdf');

  }

}

 */



// void main()
// {
//   runApp(MaterialApp(
//     home: PdfPreviewPage("hai"),
//   ));
// }

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter PDF',
      home: CreatePdfMainPage(),
    );
  }
}