import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/src/models/zapato_model.dart';
import 'package:shoesapp/src/pages/zapato_desc_page.dart';
import 'package:shoesapp/src/pages/zapato_page.dart';
import 'package:shoesapp/src/widgets/zapato_size.dart';

void main() {
  return runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new ZapatoModel())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShoesApp',
      debugShowCheckedModeBanner: false,
      home: ZapatoPage(),
      // home: ZapatoDescPage(),
    );
  }
}
