import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController urlcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('generate qr code'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlcontroller.text.isNotEmpty)
                QrImageView(data: urlcontroller.text, size: 200, ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(controller: urlcontroller,
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter your data'
                  ),
                )
              ),
              SizedBox(height: 10.0,),
              ElevatedButton(onPressed: (){setState(() {
                
              });}, child: Text('Generate Qr Code'))
            ],
          )
        )
      ),
    
    );

  }
}