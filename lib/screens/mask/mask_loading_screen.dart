import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:com/screens/mask/mask_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MaskLoadingScreen extends StatefulWidget {
  static String id = 'mask_loading_screen';
  @override
  _MaskLoadingScreenState createState() => _MaskLoadingScreenState();
}

class _MaskLoadingScreenState extends State<MaskLoadingScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((_){
      getMaskData(context);
    });
  }

  void getMaskData(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, MaskScreen.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            SpinKitDoubleBounce(
              color: Colors.pink,
              size: 50.0,
            ),
            TypewriterAnimatedTextKit(
              text: ['마스크 데이터 받는 중...'],
              speed: Duration(milliseconds: 200),
              textStyle: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ),
    );
  }
}
