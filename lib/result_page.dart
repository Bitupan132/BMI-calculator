import 'package:bmi_calculator/bottom_app_bar.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.result,
      @required this.resultText,
      @required this.resultmessage});
  final String resultText;
  final String resultmessage;
  final String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BM CALCULTOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'YOUR RESULT',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardType: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                      Text(
                        result,
                        style: kBMITextStyle,
                      ),
                      Text(
                        resultmessage,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF696969),
                        ),
                      )
                    ],
                  ),
                )),
            MyBottomAppBar(
                onTap: () {
                  Navigator.pop(context);
                },
                bottomText: 'CALCULATE AGAIN')
          ],
        ));
  }
}
