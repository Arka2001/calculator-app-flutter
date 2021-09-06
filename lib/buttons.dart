import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  final Function() buttonTapped;

  Button({
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: buttonColor,
            child: Center(
              child: Text(
                buttonText,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20 * textScale,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
