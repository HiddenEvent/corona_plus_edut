import 'package:com/models/coronainfo/corona_data.dart';
import 'package:com/models/coronainfo/corona_vo.dart';
import 'package:com/utilities/networking.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const coronaInfoURL = 'https://cd48zfzoib.execute-api.ap-northeast-2.amazonaws.com/default/Corona-Parse-API';

class CoronaInfoService {

  void getCoronaData (BuildContext context) async{
    var data = Provider.of<CoronaData>(context, listen: false);

    NetworkHelper networkHelper = NetworkHelper(coronaInfoURL);
    var coronaJson = await networkHelper.getData();
    print(coronaJson);

    if (data.coronaDataList.length > 0) data.resetCoronaList() ;
    if(coronaJson != null) {
      for(var item in coronaJson['patient_status']){
        print(item);
        data.addCoronaVO(CoronaVO(title: item['title'],totNum: item['tot_num'],beforeNum: item['before_num']));
      }
    }
    return coronaJson;
  }

}
