import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(8), color: Colors.amber),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ini card', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text('Jadi ini adalah description dari si container yang isinya bakal panjang', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),)
        ],
      ),
    );
  }
}