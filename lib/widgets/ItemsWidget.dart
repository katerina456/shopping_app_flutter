import 'package:flutter/material.dart';
import 'package:shopping_app/Models/Product.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 10),
      childAspectRatio: 0.58,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        for(int i=0; i<products.length; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
         // margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFF4C53A5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '-50%',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/itemPage');
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(products[i].image, height: 120, width: 120,),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8,),
              alignment: Alignment.centerLeft,
              child: Text(
                products[i].title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              child: Text(
                products[i].description,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${products[i].price}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_checkout,
                    color: Color(0xFF4C53A5),
                  ),
              ],),
            ),
          ],),
        ),
      ],
    );
  }
}
