import 'package:com/screens/coronainfo/corona_info_screen.dart';
import 'package:com/screens/map/map_scrren.dart';
import 'package:com/screens/mask/mask_screen.dart';
import 'package:com/screens/news/news_screen.dart';
import 'package:flutter/material.dart';



void main() => runApp(CoronaPlusEdit());

class CoronaPlusEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoronaPlusEdit',
      initialRoute: CoronaInfoScreen.id,
      routes: {
        CoronaInfoScreen.id : (context) => CoronaInfoScreen(),
        MaskScreen.id : (context) => MaskScreen(),
        NewsScreen.id : (context) => NewsScreen(),
        MapScreen.id : (context) => MapScreen(),

      },
    );
  }
}
