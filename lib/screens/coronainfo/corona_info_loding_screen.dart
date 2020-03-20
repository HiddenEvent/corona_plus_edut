import 'package:com/corona_data.dart';
import 'package:com/corona_vo.dart';
import 'package:com/screens/coronainfo/corona_info_screen.dart';
import 'package:com/services/corona_info_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CoronaInfoLoadingScreen extends StatefulWidget {
  static String id = 'corona_info_loding';


  @override
  _CoronaInfoLoadingScreenState createState() => _CoronaInfoLoadingScreenState();
}

class _CoronaInfoLoadingScreenState extends State<CoronaInfoLoadingScreen> {
  CoronaData coronaData = CoronaData();

  @override
  void initState() {
    super.initState();
    getCoronaData();
  }

  void getCoronaData() async {
    await CoronaInfoService().getCoronaInfo(coronaData);
    print(coronaData.coronaDataList);
    Navigator.pop(context);
    Navigator.pushNamed(
      context,
      CoronaInfoScreen.id,
      arguments: CoronaInfoScreen(
        coronaData: coronaData,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.brown,
          size: 100.0,
        ),
      ),
    );
  }
}
