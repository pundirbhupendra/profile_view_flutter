import 'package:flutter/material.dart';

class MyPageRoute<T> extends PageRoute<T> {
  MyPageRoute({this.builder}) : super();

  final WidgetBuilder builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 550);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black26;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> anim, Widget child) {
    return new FadeTransition(
        opacity: new CurvedAnimation(parent: animation, curve: Curves.ease),
        child: child);
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> anim) {
    return builder(context);
  }
  @override
  String get barrierLabel => null;
}