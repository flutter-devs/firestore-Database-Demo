import 'package:firestoredatabase/addProduct.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main(){
  runApp(CrudFirestore());
}

class CrudFirestore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(ctx) =>HomePage(),
        AddUser.routeName:(ctx) =>AddUser(),
      },
    );
  }
}
