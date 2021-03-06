import 'package:com/models/coronainfo/corona_data.dart';
import 'package:com/screens/coronainfo/corona_loading_screen.dart';
import 'package:com/screens/coronainfo/corona_info_screen.dart';
import 'package:com/screens/map/map_scrren.dart';
import 'package:com/screens/mask/mask_loading_screen.dart';
import 'package:com/screens/mask/mask_screen.dart';
import 'package:com/screens/news/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() => runApp(CoronaPlusEdit());

class CoronaPlusEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoronaData(),
      child: MaterialApp(
        title: 'CoronaPlusEdit',
        initialRoute: CoronaInfoLoadingScreen.id,
        routes: {
          CoronaInfoLoadingScreen.id : (context) => CoronaInfoLoadingScreen(),
          CoronaInfoScreen.id : (context) => CoronaInfoScreen(),
          MaskLoadingScreen.id : (context) => MaskLoadingScreen(),
          MaskScreen.id : (context) => MaskScreen(),
          NewsScreen.id : (context) => NewsScreen(),
          MapScreen.id : (context) => MapScreen(),
        },
      ),
    );
  }
}
