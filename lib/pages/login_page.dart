import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

//--------------------------------------------

class _LoginPageState extends State<LoginPage> {
  double? _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(125, 191, 211, 1.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _avatarWidget(),
          _emailFieldWidget(),
        ],
      ),
    );
  }

//default_profile image
  Widget _avatarWidget() {
    double? _circleD = _deviceHeight! * 0.25;
    return Center(
      child: Container(
        height: _circleD,
        width: _circleD,
        decoration: BoxDecoration(
          color: Color.fromRGBO(169, 224, 241, 1.0),
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
            image: AssetImage("assets/images/fonts/default_profile.png"),
          ),
        ),
      ),
    );
  }

  //email field
  Widget _emailFieldWidget() {
    return Container(
      width: _deviceWidth! * 0.70,
      child: const TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: "ilman@gmail.com",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  
}
