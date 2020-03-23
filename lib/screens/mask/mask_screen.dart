import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MaskScreen extends StatefulWidget {
  static String id = 'mask_screen';

  @override
  _MaskScreenState createState() => _MaskScreenState();
}

class _MaskScreenState extends State<MaskScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }
  void getLocation() async {
    Position position = await Geolocator().getCurrentPosition
      (desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text('data'),
          ),
        ),
      ),
    );
  }
}
