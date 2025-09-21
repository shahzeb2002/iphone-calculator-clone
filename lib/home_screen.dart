// import 'package:calculator/constant.dart';
import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/my_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                flex: 1,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Align(alignment: Alignment.bottomRight,child: Text(userInput.toString(),style: TextStyle(fontSize: 40,color:Colors.white),)),
                        SizedBox(height: 20,),
                        Text(answer.toString(),style: TextStyle(fontSize: 40,color:Colors.white),)
                      ],
                    ),
                  )
              ),

              Column(
                children: [
                  Row(
                    children: [
                      MyButton(title: 'C', onclick: (){
                        userInput ='';
                        answer ='';
                        setState(() {

                        });
                      },colorr: buttonColor,),
                      MyButton(title: 'Del', onclick: (){
                        userInput = userInput.substring(0,userInput.length -1);
                        setState(() {

                        });
                      },colorr: buttonColor),
                      MyButton(title: '+/-', onclick: (){
                        userInput += '+/-';
                        setState(() {

                        });
                      },colorr: buttonColor,),

                      MyButton(title: '/', onclick: (){
                        userInput += '/';
                        setState(() {

                        });
                      },colorr: expres,),

                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '7', onclick: (){
                        userInput += '7';
                        setState(() {

                        });
                      }),
                      MyButton(title: '8', onclick: (){
                        userInput += '8';
                        setState(() {

                        });
                      }),
                      MyButton(title: '9', onclick: (){
                        userInput += '9';
                        setState(() {

                        });
                      }),
                      MyButton(title: 'x', onclick: (){
                        userInput += 'x';
                        setState(() {

                        });
                      },colorr: expres,),

                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '4', onclick: (){
                        userInput += '4';
                        setState(() {

                        });
                      }),
                      MyButton(title: '5', onclick: (){
                        userInput += '5';
                        setState(() {

                        });
                      }),
                      MyButton(title: '6', onclick: (){
                        userInput += '6';
                        setState(() {

                        });
                      }),
                      MyButton(title: '-' ,colorr:expres, onclick: (){
                        userInput += '-';
                        setState(() {

                        });
                      },),

                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '1', onclick: (){
                        userInput += '1';
                        setState(() {

                        });
                      }),
                      MyButton(title: '2', onclick: (){
                        userInput += '2';
                        setState(() {

                        });
                      }),
                      MyButton(title: '3', onclick: (){
                        userInput += '3';
                        setState(() {

                        });
                      }),
                      MyButton(title: '+',colorr: expres, onclick: (){
                        userInput += '+';
                        setState(() {

                        });
                      },),

                    ],
                  ),
                  Row(
                    children: [


                      MyButton(title: '0', onclick: (){
                        userInput += '0';
                        setState(() {

                        });
                      }),

                      MyButton(title: '.', onclick: (){
                        userInput += '.';
                        setState(() {

                        });
                      }),
                      MyButton(title: '%', onclick: (){
                        userInput += '0';
                        setState(() {

                        });
                      }),
                      // MyButton(title: '3', onclick: (){}),
                      MyButton(title: '=',colorr: expres, onclick: (){
                        // userInput += '+/-';
                        equalPress();
                        setState(() {

                        });
                      },),

                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
  void equalPress(){
    String finalinput=userInput;
    finalinput=userInput.replaceAll('x', '*');
    Parser parsing =Parser();

    Expression expression=parsing.parse(finalinput);
    ContextModel contextModel=ContextModel();
    double ourresult=expression.evaluate(EvaluationType.REAL, ContextModel());
    answer=ourresult.toString();

  }
//
//     String finalUserInput=userInput;
//     finalUserInput=userInput.replaceAll('x', '*');
//     Parser p =Parser();
//
//
//     Expression expression=p.parse(finalUserInput);
//     ContextModel contextModel=ContextModel();
//     double eval=expression.evaluate(EvaluationType.REAL, ContextModel());
//     answer=eval.toString();
//
//   }

}
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Column(
//
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//
//                       Align(
//                         alignment:Alignment.bottomRight,
//                           child: Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)),
//                       SizedBox(height: 10,),
//                       Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
//
//
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         MyButton(title: 'AC', onPress: () {
//                           userInput='';
//                           answer='';
//                           setState(() {
//
//                           });
//                         }),
//                         MyButton(title: '+/-', onPress: () {
//                           userInput += '+/-';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: '%', onPress: () {
//                           userInput += '%';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(
//                           title: '/',
//                           colorr: Colors.orange,
//                           onPress: () {
//                             userInput += '/';
//                             setState(() {
//
//
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         MyButton(title: '7', onPress: () {
//                           userInput += '7';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: '8', onPress: () {
//                           userInput += '8';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: '0', onPress: () {
//                           userInput += '0';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(
//                           title: 'x',
//                           colorr: Colors.orange,
//                           onPress: () {
//                             userInput += 'x';
//                             setState(() {
//
//
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         MyButton(title: '4', onPress: () {
//                           userInput += '4';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: '5', onPress: () {
//                           userInput += '5';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: '6', onPress: () {
//                           userInput += '6';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(
//                           title: '-',
//                           colorr: Colors.orange,
//                           onPress: () {
//                             userInput += '-';
//                             setState(() {
//
//
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         MyButton(title: '1', onPress: () {
//                           userInput += '1';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: '2', onPress: () {
//                           userInput += '2';
//                         setState(() {
//
//                         });
//                         }),
//                         MyButton(title: '3', onPress: () {
//                           userInput += '3';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(
//                           title: '+',
//                           colorr: Colors.orange,
//                           onPress: () {
//                             userInput += '+';
//                             setState(() {
//
//
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         MyButton(title: '0', onPress: () {
//                           userInput += '0';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: '.', onPress: () {
//                           userInput += '.';
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(title: 'DEL', onPress: () {
//                           userInput =userInput.substring(0,userInput.length-1);
//                           setState(() {
//
//
//                           });
//                         }),
//                         MyButton(
//                           title: '=',
//                           colorr: Colors.orange,
//                           onPress: () {
//                             equalPress();
//                             setState(() {
//
//
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void equalPress(){
//
//     String finalUserInput=userInput;
//     finalUserInput=userInput.replaceAll('x', '*');
//     Parser p =Parser();
//
//
//     Expression expression=p.parse(finalUserInput);
//     ContextModel contextModel=ContextModel();
//     double eval=expression.evaluate(EvaluationType.REAL, ContextModel());
//     answer=eval.toString();
//
//   }
// }

//34 remaining

//
//
//MyButton(title: 'login'),
//  MyButton(title: 'singup'),
// class MyButton extends StatelessWidget {
//    final String title; //constructo
//   const MyButton({super.key, required this.title}
//or use this if the field is not must
//   const MyButton({super.key,  this.title=''});

//
//   @override
//   Widget build(BuildContext context) {
//     return   Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Container(
//         height: 50,
//         decoration: BoxDecoration(
//             color: Colors.deepOrange,
//             borderRadius: BorderRadius.circular(50)
//         ),
//         child: Center(child: Text(title,style: buttonTextStyle,)),
//       ),
//     );
//   }
// }

//insted of creatin button again and again we use component
// SizedBox(height: 10,),
// Container(
//   height: 50,
//
//   decoration: BoxDecoration(
//       color: Colors.deepOrange,
//       borderRadius: BorderRadius.circular(10)
//   ),
//   child: Center(child: Text('SignUp',style: buttonTextStyle,)),
// ),
// SizedBox(height: 10,),
// Container(
//   height: 50,
//
//   decoration: BoxDecoration(
//       color: Colors.deepOrange,
//       borderRadius: BorderRadius.circular(10)
//   ),
//   child: Center(child: Text('Verify',style: buttonTextStyle,)),
// ),
// SizedBox(height: 10,),
// Container(
//   height: 50,
//
//   decoration: BoxDecoration(
//       color: Colors.deepOrange,
//       borderRadius: BorderRadius.circular(10)
//   ),
//   child: Center(child: Text('Continue',style: buttonTextStyle,)),
// ),
// SizedBox(height: 10,),

// Text('Shah Zeb',style: headingTextStyle,),
// Text('Shah Zeb',style: TextStyle(color: blueColor,fontSize: 30),),
