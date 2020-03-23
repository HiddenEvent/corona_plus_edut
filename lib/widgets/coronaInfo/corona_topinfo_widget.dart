import 'package:com/models/coronainfo/corona_data.dart';
import 'package:com/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CoronaTopInfo extends StatelessWidget {
  final int colour;
  final int index;

  CoronaTopInfo({this.index, this.colour});

  @override
  Widget build(BuildContext context) {
    String title = Provider.of<CoronaData>(context).coronaDataList[index].title;
    String totNum =
        Provider.of<CoronaData>(context).coronaDataList[index].totNum;
    String beforeNum =
        Provider.of<CoronaData>(context).coronaDataList[index].beforeNum;

    title = title.replaceAll('(', '\n(');
    print(title);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(colour),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  ),
                ),
              alignment: Alignment.bottomCenter,
              child: Text(
                '$title',
                style: kCoronaTopTitleTextStyle,
                textAlign: TextAlign.center,
                ),
              ),
            ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(colour),
                ),
              alignment: Alignment.center,
              child: Text(
                '$totNum',
                style: kCoronaTopTotnumTextStyle,
                ),
              ),
            ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(colour),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  ),
                ),
              child: Text(
                '$beforeNum',
                style: kCoronaTopBeforeTextStyle,
                ),
              alignment: Alignment.topCenter,
              ),
            ),
        ],
        ),
      );
  }
}