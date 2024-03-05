// import 'package:flutter/material.dart';

// class Introduction extends StatelessWidget {
//   const Introduction({
//     Key? key,
//     required this.word,
//     required this.textScaleFactor,
//   }) : super(key: key);

//   final String word;
//   final double textScaleFactor;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//       child: Text(
//         word,
//         textScaleFactor: textScaleFactor,
//         style: TextStyle(
//           fontFamily: 'SourceCodePro',
//           letterSpacing: 2,
//           fontWeight: FontWeight.w500,
//           color: Theme.of(context).primaryColorLight,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({
    Key? key,
    required this.word,
    required this.baseFontSize, // Changed from textScaleFactor to baseFontSize
  }) : super(key: key);

  final String word;
  final double baseFontSize; // Changed from textScaleFactor to baseFontSize

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        word,
        style: TextStyle(
          fontFamily: 'SourceCodePro',
          letterSpacing: 2,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).primaryColorLight,
          fontSize: baseFontSize, // Use fontSize directly
        ),
      ),
    );
  }
}
