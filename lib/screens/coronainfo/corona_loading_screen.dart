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
    super.initState();

  }

//  void didChangeDependencies() {
//    super.didChangeDependencies();
//    print(Provider.of<CoronaData>(context).coronaDataList[0].totNum);
//    getCoronaData();
//  }

  void getCoronaData()  async {
    var coronaJson = await CoronaInfoService().getCoronaAPIcallBack();
    Navigator.pushNamed(context, CoronaInfoScreen.id, arguments: CoronaInfoScreen(coronaInfoService: coronaInfoService,));
  }

  @override
  Widget build(BuildContext context) {
    coronaInfoService.getCoronaData(context);
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
