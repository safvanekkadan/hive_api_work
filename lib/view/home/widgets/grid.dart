import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final int index;
  final Icon icons;

  const GridItem({super.key, 
  required this.index,
     required this.icons
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Stack(
          children: [
            Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
            icons,
          ],
        ),
        
      ),
    );
  }
}