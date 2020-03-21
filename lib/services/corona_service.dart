import 'package:com/models/coronainfo/corona_data.dart';
import 'package:com/models/coronainfo/corona_vo.dart';
import 'package:com/utilities/networking.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const coronaInfoURL = 'https://cd48zfzoib.execute-api.ap-northeast-2.amazonaws.com/default/Corona-Parse-API';

class CoronaInfoService {
//  BuildContext context;
//  CoronaInfoService({this.context});

  Future<dynamic> getCoronaAPIcallBack() async {

    NetworkHelper networkHelper = NetworkHelper(coronaInfoURL);
    var coronaJson = await networkHelper.getData();
    if (coronaJson == null) return '데이터가 없음.';
//    if (coronaData.coronaDataList.length != 0) coronaData.resetCoronaList();
//    CoronaData data = CoronaData();
//    for(var item in coronaJson['patient_status']){
//      print(item);
//      data.addCoronaVO(CoronaVO(title: item['title'],totNum: item['tot_num'],beforeNum: item['before_num']));
//
//    }

    return coronaJson['patient_status'];
  }
  void getCoronaData (BuildContext context) {
    var data = Provider.of<CoronaData>(context);
    print(data);
    print(Provider.of<CoronaData>(context).coronaDataList[0].totNum);
  }

}
