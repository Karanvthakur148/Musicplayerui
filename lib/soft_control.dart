import 'package:flutter/material.dart';

import 'constants.dart';
class  CircularSoftButton extends StatelessWidget {
 double radius;
 final Widget icon;

    CircularSoftButton({Key key,this.radius,@required this.icon})
        : super(key: key) {
          if (radius == null || radius <=0) radius = 32;
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(radius/2),
      child: Stack(
        children: [
          Container(
            width: radius*2,
            height: radius*2,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(color: shadowColor,offset: Offset(4,4),blurRadius: 2),
                BoxShadow(color: Colors.white,offset: Offset(-4,-4,),blurRadius: 2)
              ]

            ),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}
