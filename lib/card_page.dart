import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6F4F1),
      appBar: AppBar(
        title: Text(
          "Card Page",
          style: GoogleFonts.lobster(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF2A9D8F),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 300,
          child: Card(
            color: Color(0xFF2A9D8F),
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180,
                  width: 200,
                  child: Image.asset(
                    'assets/images/images.png',
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(
                  height: 180,
                  width: 200,
                  child: Image.network(
                    'https://picsum.photos/200/180',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}