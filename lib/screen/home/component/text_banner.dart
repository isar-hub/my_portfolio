import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/responsive.dart';

// ... (existing code)

class TextBanner extends StatelessWidget {
  const TextBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Meet \nIsar Ahmad",
            style: Responsive.isDesktop(context)
                ? Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white)
                : Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              height: defaultPadding /2,
            ),
          Responsive.isMobile(context) ? Expanded(child: AnimatedText()) : AnimatedText()
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          Text(""),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("Android Developer."),
              TyperAnimatedText("Passionate about creating innovative solutions."),
              TyperAnimatedText("Experienced in e-commerce and social media integration."),
              TyperAnimatedText("Skilled in Java, Kotlin, Android, SQL, Git, and more."),
            ],
          ),
        ],
      ),
    );
  }
}

