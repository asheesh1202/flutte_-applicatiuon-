import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Generator-Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}











////import packages from the one mentioned in pubspec.yml file
////material.dart is a package that comes with flutter as default.
//
//
//import 'package:flutter/material.dart';
//import 'package:barcode_scan/barcode_scan.dart';
//import 'package:flutter/services.dart';
//
//import './home.dart';
//
////void is return type of main function
//// flutter team provides a lots of build in fucntions
//// runApp is one of them, it is present in material
//// it takes the widget as argumement Material App
//// Material App is awidget that forms a widget tree to be displayed
//
//void main() => runApp(MaterialApp(
//  home:HomePage(),
//));
//
//
////class is declared
//// class name Homepage
////inherit StatefulWidget
//// Homepage is a coustum class that behaves as a coustum widget
////build is the function inside Statefull widget which  returns Widget which will be rendered to the screen
//// build takes context (Build Context which has the metadata and properties of the app)
//
//class HomePage extends StatefulWidget{
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  String result  = "Hey There";
//  Future _scanQR() async {
//    try {
//      String qrResult = await BarcodeScanner.scan();
//      setState(() {
//        result =qrResult;
//      });
//    }
//    on  PlatformException catch (ex){
//      if(ex.code==BarcodeScanner.CameraAccessDenied){
//        setState(() {
//          result = "Camera Permision was denied";
//        });
//      }else{
//        setState(() {
//          result ="$ex";
//        });
//      }
//    }
//    on FormatException{
//      setState(() {
//        result = "You presed the back button before scanning anything";
//      });
//    }catch(ex){
//      setState(() {
//        result ="$ex";
//      });
//
//    }
//  }
//
//  @override
//  Widget build(BuildContext context){
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("QR Scanner",
//          style: new TextStyle(fontSize: 30),
//        ),
//      ),
//      body:Center(
//        child: Column(
//          children: <Widget>[
//            Text(result),
//            QRFunction(),
//          ],
//        )
//      ),
//      floatingActionButton: FloatingActionButton.extended(
//          icon: Icon(Icons.camera_alt),
//          onPressed:_scanQR,
//          label: Text("Scan")),
//
//    );
//  }
//}
