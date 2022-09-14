import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryCart extends StatelessWidget {
  final iconImagepath;
  final String categoryName;
  CategoryCart({
    required this.iconImagepath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.deepPurple[100]),
        child: Row(
          children: [
            Image.asset(
              iconImagepath,
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(categoryName)
          ],
        ),
      ),
    );
  }
}
