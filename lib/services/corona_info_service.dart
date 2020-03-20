import 'package:com/corona_data.dart';
import 'package:com/corona_vo.dart';
import 'package:com/utilities/networking.dart';

const coronaInfoURL = 'https://cd48zfzoib.execute-api.ap-northeast-2'
    '.amazonaws.com/default/Corona-Parse-API';

class CoronaInfoService {
  Future<dynamic> getCoronaInfo(CoronaData coronaData) async {
    NetworkHelper networkHelper = NetworkHelper(coronaInfoURL);
    var coronaJson = await networkHelper.getData();
    if (coronaJson == null) return '데이터가 없음.';
    if (coronaData.coronaDataList.length != 0) coronaData.resetCoronaList();

    List coronaList = coronaJson['patient_status'];
    for (var item in coronaList) {
      coronaData.addCoronaVO(
        CoronaVO(
          title: item['title'],
          totNum: item['tot_num'],
          beforeNum: item['before_num'],
        ),
      );
    }
    return coronaData;
  }
}
