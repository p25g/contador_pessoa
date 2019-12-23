import 'package:flutter/material.dart';

class MyText extends StatelessWidget {

      var label = "";
  
  MyText({
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {


    return Container(child: 
            Text(
              label,
              style: TextStyle(
              fontSize: 35,
              color: Colors.indigo,
        ),
      ),
    );
  }
}