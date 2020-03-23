import 'package:com/utilities/constants.dart';
import 'package:flutter/material.dart';

class MiddleRow extends StatelessWidget {
  final String middleTitleText;
  final String midleSubText;
  final String middleImgUrl;

  MiddleRow({this.middleTitleText, this.midleSubText, this.middleImgUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    middleTitleText,
                    style: kMiddleTitleTextStyle,
                    ),
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  ),
                ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Text(
                    midleSubText,
                    style: kMidleSubTextStyle,
                    ),
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  ),
                ),
            ],
            ),
          ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(middleImgUrl),
                fit: BoxFit.cover,
                ),
              borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
      ],
      );
  }
}