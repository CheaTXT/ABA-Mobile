

import 'package:flutter/material.dart';
class abaApp extends StatefulWidget {
  const abaApp({Key? key}) : super(key: key);

  @override
  State<abaApp> createState() => _abaAppState();
}

class _abaAppState extends State<abaApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }
  _buildAppbar(){
    return AppBar(
      backgroundColor: Colors.cyan[800],
      title: Text("ABA MOBILE",style: TextStyle(fontWeight: FontWeight.bold),),
      actions: [
        IconButton(icon: Icon(Icons.notifications_none,size: 30,),onPressed: (){},),
        SizedBox(width: 10,),
        Container(margin:EdgeInsets.only(right: 10),child: ImageIcon(AssetImage("images/call.png"),size: 25,)),

      ],
    );
  }
  _buildDrawer(){
    return Drawer();
  }
  _buildBody(){
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              _buildBox("images/wallet.png","Accounts"),
              SizedBox(width: 1,),
              _buildBox("images/card.png", "Card"),
              SizedBox(width: 1,),
              _buildBox("images/dollar.png", "Payments")
            ],

          ),
          SizedBox(height: 1,),
          Row(
            children: [
              _buildBox("images/newAcc.png","New Account"),
              SizedBox(width: 1,),
              _buildBox("images/Ecash.png", "Cash to ATM"),
              SizedBox(width: 1,),
              _buildBox("images/transfer.png","Transfer"),
            ],
          ),
          SizedBox(height: 1,),
          Row(
            children: [
              _buildBox("images/qr.png","Scan QR"),
              SizedBox(width: 1,),
              _buildBox("images/loan.png", "Loans"),
              SizedBox(width: 1,),
              _buildBox("images/service.png","Services"),
            ],
          ),
          Container(
            height: 142,
            width: double.infinity,
            color: Colors.cyan,
            child: Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text("Quick Transfer",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                  SizedBox(height: 5,),
                  Container(width: 250,child: Text("Create your templates here to make transfer quicker",style: TextStyle(color: Colors.white),))
                ],
              ),
            ),
          ),
          Container(
            height: 142,
            width: double.infinity,
            color: Colors.deepOrange[400],
            child: Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text("Quick Payment",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                  SizedBox(height: 5,),
                  Text("Paying your bills with templates is faster",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          )
        ],
      ),
    );

}
  _buildBox(String image,String text){
    return Container(
      width: 136,
      height: 150,
      color: Colors.cyan[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,color: Colors.white,width: 100,height: 60,),
          SizedBox(height: 8,),
          Text(text,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
