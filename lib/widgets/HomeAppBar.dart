import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'DP Shop',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          Badge(
            textColor: Colors.white,
            textStyle: TextStyle(fontSize: 14),
            padding: EdgeInsets.symmetric(horizontal: 5),
            label: Text('33'),
            backgroundColor: Colors.red,
            child:
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/cartPage");
              },
              radius: 100,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xFF4C53A5),
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
