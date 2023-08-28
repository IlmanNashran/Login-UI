import 'package:flutter/material.dart';

class PageRouteFadeAnimation extends PageRouteBuilder {
  final Widget _child;

  PageRouteFadeAnimation(this._child)
      : super(
          transitionDuration: Duration(milliseconds: 500t),
          transitionsBuilder: (BuildContext _context,
              Animation<double> animation,
              Animation<double> secondAnimation,
              Widget child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          pageBuilder: (BuildContext _context, animation, secondaryAnimation) {
            return _child;
          },
        );
}
