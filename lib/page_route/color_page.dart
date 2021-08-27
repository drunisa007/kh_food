import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {

  static const  id = "ColorPage";
  const ColorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Page App Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
           height: 20,
           child: Text('Just a text',style: TextStyle(
            color: Theme.of(context).accentColor
           ),),
         )
        ],
      ),
    );
  }
}
