import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 3,
              offset: Offset(0, 3),
            ),
          ],),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$120',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF4C53A5)),
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                )
              ),
              child: Row(
                children: [
                  Icon(CupertinoIcons.cart_badge_plus, color: Colors.white,),
                  SizedBox(width: 10,),
                  Text(
                    'Add to Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
