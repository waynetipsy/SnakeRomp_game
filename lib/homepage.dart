import 'package:flutter/material.dart';
import 'package:snake_romp/blank_pixel.dart';
import 'package:snake_romp/snake_pixel.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // grid dimensions
  int rowSize = 10;
  int totalNumberOfSquares = 100;

  //Snake position
  List<int> snakePos = [
    0,1,2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // high scores
          Expanded(
            child: Container(
              color: Colors.blue,
            )
          ),

          //game grid
        Expanded(
          flex: 3,
          child: GridView.builder(
            itemCount: totalNumberOfSquares,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: rowSize,
              ),
            itemBuilder: (context, index) {
              if (snakePos.contains(index)) {
                return const SnakePixel();
              } else {
              return const BlankPixel();
             }
            }
            )
          ),

          // play button
          Expanded(
            child: Container(
          color: Colors.redAccent,
             ),
            ),
         ],
        ),
      
    );
  }
}