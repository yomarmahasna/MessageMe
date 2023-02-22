import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble(this.message, this.sender);


  final String message;
  final String sender;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment:
               MainAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color:  Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
              ),
              width: 140,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    sender,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                           Theme.of(context).accentTextTheme.headline6?.color,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),

      ],

    );
  }
}