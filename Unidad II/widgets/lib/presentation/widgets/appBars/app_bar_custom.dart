import 'package:flutter/material.dart';

mixin AppBarCustom {
  AppBar appBarWithoutReturnButton({String title = 'Sin Título'}) {
    return AppBar(title: Text(title), automaticallyImplyLeading: false);
  }

  AppBar appBarWithReturnButton({String title = 'Sin Título'}) {
    return AppBar(title: Text(title));
  }
}
