import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_flutter_design/utilities/my_Box.dart';
import '../utilities/my_tiles.dart';
import 'constants.dart';
// import 'ScreenController.dart'; // Import your controller

class ScreenController extends GetxController {
  final RxInt selectedScreenIndex = 0.obs;

  void changeScreen(int index) {
    selectedScreenIndex.value = index;
  }
}

class DesktopScaffold extends StatelessWidget {
  final ScreenController screenController = Get.put(ScreenController());

  DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          // ... Your existing code for the drawer ...
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // the boxes in the code
                // AspectRatio(
                //   aspectRatio: 4,
                //   child: SizedBox(
                //     width: double.infinity,
                //     child: GridView.builder(
                //       itemCount: 4,
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //           crossAxisCount: 4),
                //       itemBuilder: (context, index) {
                //         return const MyBox();
                //       },
                //     ),
                //   ),
                // ),

                // the tiles in the code
                Expanded(
                  child: Obx(() {
                    int selectedScreenIndex =
                        screenController.selectedScreenIndex.value;
                    if (selectedScreenIndex == 0) {
                      // Return the content for screen 0
                      return ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return MyTiles();
                        },
                      );
                    } else if (selectedScreenIndex == 1) {
                      // Return the content for screen 1
                      return Container(
                        color: Colors.amber,
                      );
                    }
                    // Add more conditions for other screens if needed
                    return Container(); // Default empty container
                  }),
                ),
              ],
            ),
          ),

          // ... Your existing code for the third column ...
        ],
      ),
    );
  }
}
