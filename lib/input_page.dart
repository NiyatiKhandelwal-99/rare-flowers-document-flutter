import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('WordsMaya List of Articles(LOA)')),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                colour: Colors.red[50],
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Torch Ginger',
                      style: kTitleTextStyle,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'torch_ginger');
                      },
                      child: Text(
                        'Tap for Description',
                        style: kResultTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Colors.red[50],
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Fire Lily',
                      style: kTitleTextStyle,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'fire_lily');
                      },
                      child: Text(
                        'Tap for Description',
                        style: kResultTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Colors.red[50],
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Jade Vine',
                      style: kTitleTextStyle,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'jade_vine');
                      },
                      child: Text(
                        'Tap for Description',
                        style: kResultTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Colors.red[50],
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Middlemest Red',
                      style: kTitleTextStyle,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'middlemest_red');
                      },
                      child: Text(
                        'Tap for Description',
                        style: kResultTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
