import 'package:flutter/material.dart';
import 'package:flutter_practices/practice/custom_class.dart';
import 'package:flutter_practices/practice/identity_card.dart';
import 'practice/identity_card.dart';

void main() {
  runApp(
    MaterialApp(
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
  Widget cdata(e) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Text(
                e.name,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                e.rollnum,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: num.map((e) {
              return Text(
                e,
                style: TextStyle(
                  fontSize: 18,
                ),
              );
            }).toList(),
          ),
          Column(
            children: data.map((e) => cdata(e)).toList(),
          ),
          Column(
            children: data.map((e) {
              return Text(
                e.name,
                style: TextStyle(
                  fontSize: 18,
                ),
              );
            }).toList(),
          ),
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