import 'package:beMyVal/pages/mad.dart';
import 'package:beMyVal/pages/yes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/margin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const YMargin(60),
          Draggable(
            child: ValImage(),
            feedback: ValImage(),
            childWhenDragging: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Onuoha Maryann',
                    style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 36),
                    )),
                const YMargin(40),
                Text('Will you be My Valentine?',
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
              child: Text('YES!!!!',
                  style: GoogleFonts.cabin(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 12),
                  )),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => Yes(),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: screenWidth(context),
            margin: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
            child: OutlineButton(
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
              child: Text('MAD O',
                  style: GoogleFonts.cabin(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent,
                        fontSize: 12),
                  )),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => Mad(),
                  ),
                );
              },
            ),
          ),
          const YMargin(20),
        ],
      ),
    );
  }
}

class ValImage extends StatelessWidget {
  const ValImage({
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
            image: AssetImage('assets/images/val2.gif'),
          ),
        ),
      ),
    );
  }
}
