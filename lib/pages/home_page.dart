import 'package:flutter/material.dart';
import 'package:login_ui_app/pages/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  double? _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: _deviceHeight! * 0.60,
          width: _deviceWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _avatarWidget(),
              _nameWidget(),
              _buttonToLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _avatarWidget() {
    double? _circleD = _deviceHeight! * 0.25;
    return Container(
      height: _circleD,
      width: _circleD,
      decoration: BoxDecoration(
        color: Color.fromRGBO(169, 224, 241, 1.0),
        borderRadius: BorderRadius.circular(100),
        image: const DecorationImage(
          image: AssetImage("assets/images/fonts/default_profile.png"),
        ),
      ),
    );
  }

  Widget _nameWidget() {
    return Container(
      child: const Text(
        "Home Page",
        style: TextStyle(
            color: Color.fromRGBO(169, 224, 241, 1.0),
            fontSize: 35,
            fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _buttonToLogin(BuildContext _context) {
    return MaterialButton(
      minWidth: _deviceWidth! * 0.38,
      height: _deviceHeight! * 0.055,
      child: Text(
        "Back To Log In Page",
        style: TextStyle(
          color: Color.fromRGBO(169, 224, 241, 1.0),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        side: const BorderSide(
          color: Color.fromRGBO(169, 224, 241, 1.0),
          width: 3,
        ),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          _context,
          MaterialPageRoute(
            builder: (BuildContext _context) {
              return LoginPage();
            },
          ),
        );
      },
    );
  }
}
