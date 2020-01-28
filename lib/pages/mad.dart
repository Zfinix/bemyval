import 'package:beMyVal/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/margin.dart';

class Mad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const YMargin(60),
          Draggable(
            child: MadImage(),
            feedback: MadImage(),
            childWhenDragging: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Nice Try Maryann,\nYou're not Mad",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 36),
                    )),
                const YMargin(90),
                Text('Now Go back and hit YES',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 18),
                    )),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            width: screenWidth(context),
            margin: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
            child: FlatButton(
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(2),
                ),
              ),
              textColor: Colors.green,
              child: Text('Take Me back',
                  style: GoogleFonts.cabin(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 12),
                  )),
              onPressed: () async {
                 Navigator.pop(context);
              },
            ),
          ),
        const YMargin(20),
        ],
      ),
    );
  }
}

class MadImage extends StatelessWidget {
  const MadImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'VALtine',
      child: Container(
        width: screenWidth(context),
        height: screenHeight(context, percent: 0.34),
        margin: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(4),
          ),
          color: Colors.grey.shade300,
          boxShadow: [
            new BoxShadow(
              spreadRadius: -12,
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 38,
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/mad.gif'),
          ),
        ),
      ),
    );
  }
}
var loveyou = "My love, My baby, Woman of my dreams. I can't think of a better person to spend my life I love you so much and.";