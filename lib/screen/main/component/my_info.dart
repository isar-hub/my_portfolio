import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            Spacer(),
            Text(
              "Isar Ahmad",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Android Developer\n"
                  "Nashbud Pvt. Ltd.", textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
