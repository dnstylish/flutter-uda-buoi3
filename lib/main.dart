import 'dart:ui';

import 'package:buoi3/FormView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset("images/valley.png").image,
                        fit: BoxFit.cover
                    ),
                ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Container(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    Center(
                      child: Image.asset("images/logo.png", width: 250, color: Colors.white),
                    ),
                    SizedBox(height: 50),
                    FormView()
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}

