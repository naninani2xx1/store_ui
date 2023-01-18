import 'package:flutter/material.dart';
import 'package:store_ui/config/colors.dart';
import 'package:store_ui/config/font_style.dart';

class OnboardingUI extends StatelessWidget with NavigatorObserver {
  const OnboardingUI({super.key});

  @override
  Widget build(BuildContext context) {
    print(222);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "assets/images/onboarding.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: FittedBox(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Find the\nBest Collections",
                        style: PrimaryFont.style().copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get your dream item easily with FashionHub\nand get other intersting offer",
                        style: PrimaryFont.style().copyWith(
                          color: disableColor,
                          height: 1.5,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: FractionallySizedBox(
                      heightFactor: 0.5,
                      alignment: Alignment.topCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: FittedBox(
                                child: Align(
                                  child: Text(
                                    "Sign up",
                                    style: PrimaryFont.style().medium(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(primaryColor),
                              ),
                              child: FittedBox(
                                child: Align(
                                  child: Text(
                                    "Sign In",
                                    style: PrimaryFont.style().copyWith(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
