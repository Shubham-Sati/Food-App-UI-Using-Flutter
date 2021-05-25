import 'package:flutter/material.dart';
import 'package:food_app/src/page/signin_page.dart';
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Food Cart"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
              OrderCard(),
              OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
        ],
      ),
      bottomNavigationBar: _buildTotolContainer(),
    );
  }
  Widget _buildTotolContainer(){
    return Container(
      height: 220.0,
      margin: EdgeInsets.only(top:20.0 ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Cart Total", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("23.0", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.black),),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("3.0", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.black),),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("0.5", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.black),),
            ],
          ),
          Divider(height: 40.0, color: Color(0xFFD3D3D3),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("26.5", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.black),),
            ],
          ),
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext contex)=>SignInPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
            ),
              child: Center(
                child: Text("Proceed to Checkout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
