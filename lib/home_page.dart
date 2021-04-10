import 'package:flutter/material.dart';
import 'package:waterdelivery/product_selection.dart';
import 'constants.dart';
import 'components/rounded_button.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";

  final String title = "Aqua";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Hero(
                  tag: 'Logo',
                  child: Container(
                    height: 200,
                    child: Image.asset('images/42363.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Text(
                'Delivered to your door',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20.0),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                style: TextStyle(color: Colors.black45),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                decoration: kInputBoxDecoration.copyWith(
                    hintText: 'Enter Your Phone Number'),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                style: TextStyle(color: Colors.black45),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
                decoration:
                    kInputBoxDecoration.copyWith(hintText: 'Enter your name'),
              ),
              SizedBox(
                height: 48.0,
              ),
              RoundedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProductSelection.id);
                },
                buttonText: 'Proceed',
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
