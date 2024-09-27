import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: Container(
        padding: EdgeInsets.only(top: 190, bottom: 170),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'FruitsDB Shop',
              style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            Column(
              children: [
                Text(
                  'Do you want something tasty and healthy?\n Then come to us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 36,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFF4C5391),),
                    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                    minimumSize: WidgetStatePropertyAll(Size(180,60)),
                    elevation: WidgetStatePropertyAll(16),
                    shadowColor: WidgetStatePropertyAll(Colors.redAccent),
                    overlayColor: WidgetStatePropertyAll(Color(0xFF4C5361),)
                  ),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text(
                    'Get Start',
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
          ],
        ),
      ),
    );
  }
}
