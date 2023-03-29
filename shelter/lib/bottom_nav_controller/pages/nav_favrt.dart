import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavFavorite extends StatefulWidget {


  @override
  State<NavFavorite> createState() => _NavFavoriteState();
}

class _NavFavoriteState extends State<NavFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hello World'),),
    );
  }
}