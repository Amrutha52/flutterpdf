import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PdfPreviewPage.dart';

class CreatePdfMainPage extends StatelessWidget
{
  CreatePdfMainPage({super.key});

  String text = "Your text to display below image";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Articles page"),),
      body: Column(
        children: [
          Image.asset("assets/phone.png"),
          Text(text),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return  PdfPreviewPage(text);
          }));
        },
        child: const Icon(Icons.picture_as_pdf_sharp),
      ),
    );
  }
}
