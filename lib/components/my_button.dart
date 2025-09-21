


import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colorr;
  final VoidCallback onclick;
  const MyButton({super.key,required this.title,this.colorr= mainbutton,required this.onclick,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: InkWell(
          onTap: onclick,
          child: Container(
            height: 70,
            width: 70,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: colorr,
              // border: Border.all(color: Colors.black87,width: 1),
            ),
            child: Center(child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),

          ),
        ),
      ),
    );




  }
}


//
// class MyButton extends StatelessWidget {
//   final String title;
//   final Color colorr;
//   final VoidCallback onPress;
//
//   const MyButton({super.key,
//     required this.title,
//     this.colorr = const Color(0xffa5a5a5),
//     required this.onPress,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       // flex: 4,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         child: InkWell(
//
//           onTap: onPress,
//           child: Container(
//             height: 80,
//             decoration:BoxDecoration(
//               color: colorr,
//               shape: BoxShape.circle,
//             ),
//             child: Center(
//               // child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),),
//               child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }