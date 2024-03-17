import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: () {

        _launchURL();
      },
      child: FittedBox(
        child: Row(
          children: [

            Text(
              "DOWNLOAD CV",
              style: Theme.of(context).textTheme.bodyText1!,
            ),
            SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/download.svg"),
          ],
        ),
      ),
    );
  }
  void _launchURL() async {
    const url = 'https://drive.google.com/file/d/1iSt7ObTm-KzNFJiPE3DuckiTHtlPESr_/view?usp=drive_link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
