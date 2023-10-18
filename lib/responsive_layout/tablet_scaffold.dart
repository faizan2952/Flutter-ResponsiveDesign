import "package:flutter/material.dart";
import '../utilities/my_Box.dart';
import '../utilities/my_tiles.dart';
import 'constants.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          // the boxes in the code
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),

          // the tiles in the code
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return MyTiles();
              },
            ),
          ),
        ],
      ),
    );
  }
}
