import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTrans {
  // Slide Transition
  static SlideTrans slide() {
    return SlideTrans();
  }

  // Fade Transition
  static FadeTrans fade() {
    return FadeTrans();
  }
}

class SlideTrans extends CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
        reverseCurve: Curves.easeOutQuad,
      )),
      child: child,
    );
  }
}

class FadeTrans extends CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
