import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:playground/ui/common/app_colors.dart';
import 'package:playground/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  verticalSpaceLarge,
                  Column(
                    children: [
                      const Text(
                        'Hello, STACKED!',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      verticalSpaceMedium,
                      MaterialButton(
                        color: Colors.black,
                        onPressed: model.incrementCounter,
                        child: Text(
                          model.counterLabel,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        color: kcDarkGreyColor,
                        child: const Text(
                          'Show Dialog',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: model.showDialog,
                      ),
                      MaterialButton(
                        color: kcDarkGreyColor,
                        child: const Text(
                          'Show Bottom Sheet',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: model.showBottomSheet,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
