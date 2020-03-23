import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:com/models/coronainfo/corona_data.dart';
import 'package:com/models/coronainfo/corona_vo.dart';
import 'package:com/screens/coronainfo/corona_info_screen.dart';
import 'package:com/services/corona_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class CoronaInfoLoadingScreen extends StatefulWidget {
  static String id = 'corona_info_loding';

  @override
  _CoronaInfoLoadingScreenState createState() =>
      _CoronaInfoLoadingScreenState();
}

class _CoronaInfoLoadingScreenState extends State<CoronaInfoLoadingScreen> {
  CoronaInfoService coronaInfoService = CoronaInfoService();

  @override
  void initState() {
    super.initState();
    var newContext;
    Future.delayed(Duration.zero).then((_) {
      getCoronaData(context);
    });
//
  }

//
  void getCoronaData(BuildContext context) async {
    var coronaJson = await coronaInfoService.getCoronaData(context);
    Navigator.pop(context);
    Navigator.pushNamed(context, CoronaInfoScreen.id,
        arguments: CoronaInfoScreen(
          coronaInfoService: coronaInfoService,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitDoubleBounce(
              color: Colors.brown,
              size: 50.0,
            ),
            TypewriterAnimatedTextKit(
              text: ['데이터 받는중...'],
              speed: Duration(milliseconds: 200),
              textStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold

              ),
            )
          ],
        ),
      ),
    );
  }
}
