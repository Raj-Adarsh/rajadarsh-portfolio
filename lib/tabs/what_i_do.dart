import 'package:flutter/material.dart';

// import '../src/custom/custom_text.dart';
import '../src/nav_bar/title_bar.dart';
// import '../src/theme/config.dart';
import '../src/whatIDo/data.dart';
// import '../src/whatIDo/progress.dart';

class WhatIdo extends StatelessWidget {
  WhatIdo({Key? key}) : super(key: key);

  final List<List<String>> data = whatIdo();
  static final whatIDoKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        // Updated the title here from 'WHAT I DO' to 'SKILLS'
        TitleBar(height: height, width: width, title: 'SKILLS'),
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.1),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 1000) {
              int storage = -1;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Removed the gap by adjusting padding and removing unnecessary widgets
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      children: List.generate(
                        data[1].length % 4 == 0
                            ? data[1].length ~/ 4
                            : data[1].length ~/ 4 + 1,
                        (int i) => Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                                (data[1].length - storage - 1) >= 4
                                    ? 4
                                    : data[1].length - storage - 1,
                                (int index) {
                              storage = index + i * 4;
                              return Image.asset(
                                'assets/what_i_do/${data[1][index + i * 4]}',
                                width: 100, // Set your desired width
                                height: 130, // Set your desired height
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              int storage = -1;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Adjustments for larger screens also reflect the removal of the proficiency part and the title change
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      children: List.generate(
                        data[1].length % 8 == 0
                            ? data[1].length ~/ 8
                            : data[1].length ~/ 8 + 1,
                        (int i) => Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                                (data[1].length - storage - 1) >= 8
                                    ? 8
                                    : data[1].length - storage - 1,
                                (int index) {
                              storage = index + i * 8;
                              return Image.asset(
                                'assets/what_i_do/${data[1][index + i * 8]}',
                                width: 100, // Set your desired width
                                height: 130, // Set your desired height
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          }),
        )
      ]),
    );
  }
}
