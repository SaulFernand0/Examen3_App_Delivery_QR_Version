import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class scanPage extends StatefulWidget {
  static String id = 'scanPage';

  @override
  _scanPageState createState() => _scanPageState();

}

class _scanPageState extends State<scanPage> {
  ScanResult _scanResult;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Fast Pay'),
        backgroundColor: Color(0xff4285F4),
      ),
      body: Center(
          child:_scanResult==null?Text('Escanear para pagar...', style:
          TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ):Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total a pagar:',
                style: TextStyle (
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Text('${_scanResult.rawContent}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        backgroundColor: Color(0xff4285F4),
        onPressed: (){
          _scanCode();
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Future<void> _scanCode() async {
    var result = await BarcodeScanner.scan();
    setState(() {
      _scanResult = result;
    });
  }
}
