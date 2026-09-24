import 'package:flutter/material.dart';
import 'package:qr_generator/generate_qr_code.dart';
import 'package:qr_generator/scan_qr_code.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Qr code scanner and generator',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr Code Scanner and generator'),
        backgroundColor: Colors.blue,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScanQrCode()));
                setState(() {
                });
              },
              child: Text('Scan Qr code')
            ),
          
            SizedBox(height: 40.0,),
          
            ElevatedButton(
              onPressed: (){
                setState((){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateQrCode()));

                });
              },
              child: Text('Generate Qr code'),
              ),
          ],
        ),
      ),
    );
  }
}