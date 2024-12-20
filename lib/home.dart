import 'package:flutter/material.dart';

import 'card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Image.asset('assets/photo.png', width: 240, height: 240),
            SizedBox(height: 24),
            Text('Hai, Welcome to the Apps!', style: TextStyle(fontFamily: 'poppins', fontSize: 26)),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardContainer(),
                SizedBox(width: 16),
                CardContainer()
              ],
            )
          ],
        )
        ),
    );
  }
}