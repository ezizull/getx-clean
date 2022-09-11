// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

// DropDown Expended Motion
class ExpandMotion extends StatefulWidget {
  final Widget? child;
  final bool expand;
  const ExpandMotion({this.expand = false, this.child});

  @override
  _ExpandMotionState createState() => _ExpandMotionState();
}

// DropDown Expended Motion
class _ExpandMotionState extends State<ExpandMotion> with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  int duration = 500;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: duration),
      reverseDuration: const Duration(seconds: 1), // must in second
    );

    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandMotion oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.reverse();
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(axisAlignment: 1.0, sizeFactor: animation, child: widget.child);
  }
}

// PopUp Fade Motion
class FadeScaleMotion extends StatefulWidget {
  final Widget? child;
  final bool popup;
  const FadeScaleMotion({Key? key, this.popup = false, this.child}) : super(key: key);

  @override
  State<FadeScaleMotion> createState() => _FadeScaleMotionState();
}

// PopUp Fade Motion
class _FadeScaleMotionState extends State<FadeScaleMotion> with SingleTickerProviderStateMixin {
  late AnimationController fadeController;
  late Animation<double> animation;

  int duration = 500;
  double opacity = 1;

  @override
  void initState() {
    super.initState();
    fadeController =
        AnimationController(duration: const Duration(milliseconds: 200), vsync: this, value: 1.0);
  }

  @override
  void dispose() {
    fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint(widget.popup.toString());

    if (widget.popup) {
      fadeController.forward();
    } else {
      fadeController.reverse();
    }

    return ScaleTransition(
      scale: Tween(begin: 0.0, end: 1.0)
          .animate(CurvedAnimation(parent: fadeController, curve: Curves.easeOut)),
      alignment: Alignment.topRight,
      child: FadeTransition(
          opacity: CurvedAnimation(parent: fadeController, curve: Curves.easeOut),
          child: widget.child),
    );
  }
}


// 