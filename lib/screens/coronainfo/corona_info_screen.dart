import 'package:com/models/coronainfo/corona_data.dart';
import 'package:com/models/coronainfo/corona_vo.dart';
import 'package:com/screens/map/map_scrren.dart';
import 'package:com/screens/mask/mask_loading_screen.dart';
import 'package:com/screens/mask/mask_screen.dart';
import 'package:com/screens/news/news_screen.dart';
import 'package:com/services/corona_service.dart';
import 'package:com/utilities/constants.dart';
import 'package:com/widgets/coronaInfo/corona_topinfo_widget.dart';
import 'package:com/widgets/coronaInfo/main_card_widget.dart';
import 'package:com/widgets/coronaInfo/middle_row_widget.dart';
import 'package:com/widgets/coronaInfo/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class CoronaInfoScreen extends StatelessWidget {
  static String id = 'corona_info_screen';
  final CoronaInfoService coronaInfoService;

  CoronaInfoScreen({this.coronaInfoService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코로나 디덱터'),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: MainCardWidget(
                  child: Row(
                children: <Widget>[
                  CoronaTopInfo(
                    index: 0,
                    colour: 0xff2a75e0,
                  ),
                  CoronaTopInfo(
                    index: 1,
                    colour: 0xff123a91,
                  ),
                  CoronaTopInfo(
                    index: 2,
                    colour: 0xff05afc8,
                  ),
                  CoronaTopInfo(
                    index: 3,
                    colour: 0xff858585,
                  ),
                ],
              )),
            ),
            Expanded(
              flex: 2,
              child: MainCardWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MaskLoadingScreen.id);
                        },
                        child: MainCardWidget(
                          child: MiddleRow(
                            middleTitleText: '마스크 구매',
                            midleSubText: '내 주변 마스크 제고 확인',
                            middleImgUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR_vKQ7aaHP20DtJBaaF7gdr_zixz6NjRbWchqsoDKGoieRtJE1',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, NewsScreen.id);
                        },
                        child: MainCardWidget(
                          child: MiddleRow(
                            middleTitleText: '코로나 최신 뉴스',
                            midleSubText: 'SBS 실시간 최신 뉴스 정보',
                            middleImgUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQMVLEj3PV1NOHYfJj4FXfFN-tZ-Dda3G2Pp75eqRNtN23qlLh5',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MapScreen.id);
                        },
                        child: MainCardWidget(
                          child: MiddleRow(
                            middleTitleText: '코로나 감염자 \n이동경로',
                            midleSubText: '코로나 감염자 실시간 이동경로 확인',
                            middleImgUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS45tQe0NDNWBpLZU1vG51UdXH9-ABmENm9H0ckPR9IdZJ9oRxC',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





