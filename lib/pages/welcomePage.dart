import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fon.jpg"),
            fit: BoxFit.cover,
            opacity: 0.9,
            colorFilter: ColorFilter.srgbToLinearGamma()
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'FruitsDB Shop',
              style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF4C5391),),
                padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                minimumSize: WidgetStatePropertyAll(Size(180,60)),
                elevation: WidgetStatePropertyAll(20),
                shadowColor: WidgetStatePropertyAll(Colors.redAccent)
              ),
              onPressed: (){
                //Navigator.pushNamed(context, '/home');
              },
              child: Text(
                'Start',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
