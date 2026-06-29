import 'package:bmi/constants/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR', textAlign: TextAlign.center),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Text('Your Result', style: kTitleTextStyle,),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Normal', style: kResultTextStyle),
                    Text('18.3', style: kBMITextStyle),
                    Text(
                      'blah blah',
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonText: "RE-CALCULATE",
            ),
          ],
        ),
      ),
    );
  }
}
