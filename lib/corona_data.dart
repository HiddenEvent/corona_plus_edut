import 'dart:collection';

import 'package:com/corona_vo.dart';
import 'package:flutter/cupertino.dart';

class CoronaData extends ChangeNotifier{
  List<CoronaVO> _coronaDataList = [];

  UnmodifiableListView<CoronaVO> get coronaDataList {
    return UnmodifiableListView(_coronaDataList);
  }

  void addCoronaVO(CoronaVO coronaVO){
    _coronaDataList.add(coronaVO);
    notifyListeners();
  }

  void resetCoronaList () {
    _coronaDataList.clear();
    notifyListeners();
  }

}