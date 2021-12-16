import 'package:app_examen/especial__icons_icons.dart';
import 'package:app_examen/src/homPage.dart';
import 'package:app_examen/src/scanPage.dart';
import 'package:flutter/material.dart';

class payPage extends StatefulWidget {
  static String id = 'payPage';

  @override
  _payPageState createState() => _payPageState();

}

class _payPageState extends State<payPage> {
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left:30, top: 20),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    splashRadius: 24,
                    icon: Icon(Icons.arrow_back_ios, size: 24,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.pop(context, MaterialPageRoute(builder: (context){
                        return homePage();
                      }));
                    },
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Metodo de pago',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              children: [
                _bottonCard(),
                SizedBox(height: 25.0,),
                _bottonTransfer(),
                SizedBox(height: 25.0,),
                _bottonFastPay(),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }

  Widget _bottonCard(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(Especial_Icons.credit_card, color: Colors.white,),
                  ),

                  Text('Tarjeta de crédito / débito',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xffA4A4A4),
            onPressed: (){},
          );
        }
    );
  }

  Widget _bottonTransfer(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(Icons.account_balance_outlined, color: Colors.white,),
                  ),

                  Text('Transferencia bancaria',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xff49DD70),
            onPressed: (){},
          );
        }
    );
  }

  Widget _bottonFastPay(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(Especial_Icons.scan, color: Colors.white,),
                  ),

                  Text('Fast Pay',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xff4285F4),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return scanPage();
              }));
            },
          );
        }
    );
  }
}