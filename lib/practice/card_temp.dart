import 'package:flutter/material.dart';
import 'package:flutter_practices/practice/custom_class.dart';

class cardTemplate extends StatelessWidget {
  //after extracting widgets this stateless widget is made and all the code from that method
  // is written in this build widget that is built_in method
  final S_data e; // b/c we don't allowed to chnge data in stless widget overtime so we should declare variables
//final other wise there is error
  cardTemplate({
    this.e
  });
  @override
  Widget build(BuildContext context) {
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
}