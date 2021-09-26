import 'package:flutter/material.dart';
import 'package:flutter_practices/practice/custom_class.dart';
import 'package:flutter_practices/practice/identity_card.dart';
import 'practice/identity_card.dart';
import 'package:flutter_practices/practice/card_temp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.amber,
        splashColor: Colors.yellow,

        ),
      home: mapList(),

    ),
  );
}
//#############################################################################################################
//to print list through map
class mapList extends StatefulWidget {
  @override
  _mapListState createState() => _mapListState();
}
class _mapListState extends State<mapList> {
  List<S_data> data = [
    S_data(name: 'Aneeza Zafar', rollnum: '0261-BSCS-18'),
    S_data(name: 'Khadija Khalid', rollnum: '0265-BSCS-18'),
    S_data(name: 'Asma Fiaz', rollnum: '0273-BSCS-18'),
    S_data(name: 'Mahnoor Tariq', rollnum: '0227-BSCS-18'),
  ];
  List<String> num = ['1', '2', '3', '4'];
  //###############################
  //extracting widget
  // Widget cdata(e) {
  //   return cardTemplate(e:e);  // extracting widget(it removes all the code that i write in this widget)
  // }// we don't need this method as we make cardtemplate an widget so we can delete this and directly call cardtemplate method where we call
  // cdata method in printing all the data
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Column(
          //   children: num.map((e) {
          //     return Text(
          //       e, // this e is containing the item that has to be print
          //       style: TextStyle(
          //         fontSize: 18,
          //       ),
          //     );
          //   }).toList(),
          // ),
          // Column(
          //   children: data.map((e) => cdata(e)).toList(),
          // ),
          //to delete the whole line when we click on delete we will make a function here that delete it from list
          Column(
            children: data.map((n) => cardTemplate(
                e:n,  // card template k constructor ma e ma n value ja rae ha or delete ma delete function ja ra h
              delete:(){
                  setState((){
                   data.remove(n);
            });
            },
            )).toList(),
          ),
          // Column(
          //   children: data.map((e) {
          //     return Text(
          //       e.name,
          //       style: TextStyle(
          //         fontSize: 18,
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}


//##################################################################################################################
//to call and perform actions on custom class
// class dataList extends StatefulWidget {
//   @override
//   _dataListState createState() => _dataListState();
// }
//
// class _dataListState extends State<dataList> {
//   List<S_data> data = [
//     S_data(name: 'Aneeza Zafar', rollnum: '0261-BSCS-18'),
//     S_data(name: 'Khadija Khalid', rollnum: '0265-BSCS-18'),
//     S_data(name: 'Asma Fiaz', rollnum: '0273-BSCS-18'),
//     S_data(name: 'Mahnoor Tariq', rollnum: '0227-BSCS-18'),
//   ];
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   S_data d = data[0];
//   //   print(d.name);
//   //   super.initState();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           ListView.builder(
//             shrinkWrap: true,
//             //scrollDirection: Axis.vertical,
//             //physics: NeverScrollableScrollPhysics(),
//             //physics: FloatingLabelBehavior.never(),
//             itemCount: data.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(vertical: 1, horizontal: 100),
//                     margin: EdgeInsets.symmetric(vertical: 1, horizontal: 100),
//                     child: Card(
//                       child: Row(
//                         children: [
//                           Text(data[index].name),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(data[index].rollnum),
//                         ],
//                       ),
//                     ),
//                   ), //Text(data[index][S_data].name),
//                 ],
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
//##################################################################################################################
// to call identity_card class
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Row(
//         children: [
//           //for identity class
//           card(
//             image: 'images/1.jpg',
//             name: 'Aneeza Zafar',
//             rollnum: '0261-BSCS-18',
//             section: 'E1',
//             semester: 'Semester 6 passed',
//             email: 'Aneezazafar2018@gmail.com',
//           ),
//           identity_card(
//               image: 'images/1.jpg',
//               name: 'Aneeza Zafar',
//               rollnum: '0261-BSCS-18',
//               section: 'E1',
//               semester: 'Semester 6 passed',
//               email: 'Aneezazafar2018@gmail.com',
//               uni: 'GCU, Lahore'),
//         ],
//       ),
//     );
//   }
// }