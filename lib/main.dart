import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

//types of widgets - 3
//1. statelesswidget
//2. statefullwidget
//3. *inheritedWidget*

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: CurrencyConverterCupertinoPage());
  }
}
