import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:generation_1/app/modules/splash/controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'For Post',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(strokeWidth: 2.0),
          ],
        ),
      ),
    );
  }
}
