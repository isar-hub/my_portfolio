import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/screen/main/component/download_cv.dart';
import 'package:portofolio_website/screen/main/component/skill_menu.dart';
import 'package:portofolio_website/screen/main/component/social_media.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(

        child: SingleChildScrollView(

      padding: EdgeInsets.all(defaultPadding),

      child: Column(

        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SkillMenu(
            image1: 'images/android.png',
            text1: 'Android',
            image2: 'images/kotlin.png',
            text2: 'Kotlin',
            image3: 'images/java.png',
            text3: 'Java',
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SkillMenu(
            image1: 'images/flutter.png',
            text1: 'Flutter',
            image2: 'images/git.png',
            text2: 'Git',
            image3: 'images/github.png',
            text3: 'Github',
          ),
          SizedBox(height: defaultPadding),
          Divider(),
          SizedBox(height: defaultPadding),
          DownloadCV(),
          SocialMedia(),
        ],
      ),
    ));
  }
}
