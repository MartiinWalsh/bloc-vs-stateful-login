import 'package:flutter/material.dart';

import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    //Given some context, look all the way back up the tree until you find type provider
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
  }
}
