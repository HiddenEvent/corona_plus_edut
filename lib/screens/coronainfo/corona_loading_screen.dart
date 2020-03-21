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
  _CoronaInfoLoadingScreenState createState() => _CoronaInfoLoadingScreenState();
}

class _CoronaInfoLoadingScreenState extends State<CoronaInfoLoadingScreen> {
  CoronaInfoService coronaInfoService = CoronaInfoService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    getCoronaData();
  print('이건');
  }

  @override
  void didUpdateWidget(CoronaInfoLoadingScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('언제?');

    getCoronaData(context);

  }
  void getCoronaData(BuildContext context)  async {
    var coronaJson = await coronaInfoService.getCoronaData(context);
    Navigator.pop(context);
    Navigator.pushNamed(context, CoronaInfoScreen.id, arguments: CoronaInfoScreen(coronaInfoService: coronaInfoService,));
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
