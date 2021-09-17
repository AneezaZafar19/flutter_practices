import 'package:flutter/material.dart';

//making variables in stateless widget
class identity_card extends StatelessWidget {
  final String image;
  final String name;
  final String rollnum;
  final String section;
  final String semester;
  final String email;
  final String uni;

  const identity_card(
      {Key key,
        this.image,
        this.name,
        this.rollnum,
        this.section,
        this.semester,
        this.email,
        this.uni})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 700,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        shadowColor: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.only(bottom: 40),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                  this.image,
                ),
              ),
              //     CircleAvatar(
              //   child: Image.asset(
              //     this.image,
              //     fit: BoxFit.contain,
              //   ),
              // ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
              child: Column(
                children: [
                  Text(this.name),
                  SizedBox(
                    height: 5,
                  ),
                  Text(this.semester),
                  SizedBox(
                    height: 5,
                  ),
                  Text(this.uni),
                  Text(this.rollnum),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
              child: Column(
                children: [
                  Text(this.rollnum),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red[900],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cards extends StatefulWidget {
  final String image;
  final String name;
  final String rollnum;
  final String section;
  final String semester;
  final String email;

  const cards(
      {Key key,
        this.image,
        this.name,
        this.rollnum,
        this.section,
        this.semester,
        this.email})
      : super(key: key);

  @override
  _cardsState createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 100,
            width: 100,
            //color: Colors.green,
            child: Image.asset(widget.image),
          ),
          SizedBox(
            height: 15,
          ),
          Text(widget.name),
          SizedBox(
            height: 5,
          ),
          Text(widget.rollnum),
          SizedBox(
            height: 5,
          ),
          Text(widget.section),
          SizedBox(
            height: 5,
          ),
          Text(widget.semester),
          SizedBox(
            height: 5,
          ),
          Text(widget.email),
        ],
      ),
    );
  }
}
//