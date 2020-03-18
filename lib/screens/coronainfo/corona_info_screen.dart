import 'package:com/screens/map/map_scrren.dart';
import 'package:com/screens/mask/mask_screen.dart';
import 'package:com/screens/news/news_screen.dart';
import 'package:com/utilities/constants.dart';
import 'package:com/widgets/coronaInfo/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class CoronaInfoScreen extends StatelessWidget {
  static String id = 'corona_info_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: MainCardWidget(
                child: Text('하잉'),
              ),
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
                        Navigator.pushNamed(context, MaskScreen.id);
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
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class MiddleRow extends StatelessWidget {
  final String middleTitleText;
  final String midleSubText;
  final String middleImgUrl;

  MiddleRow({this.middleTitleText, this.midleSubText, this.middleImgUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    middleTitleText,
                    style: kMiddleTitleTextStyle,
                  ),
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Text(
                    midleSubText,
                    style: kMidleSubTextStyle,
                  ),
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(middleImgUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        )
      ],
    );
  }
}

class MainCardWidget extends StatelessWidget {
  final Widget child;

  MainCardWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: child,
    );
  }
}