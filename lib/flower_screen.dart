import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FlowerScreen extends StatelessWidget {
  FlowerScreen(
      {@required this.flowerImage,
      @required this.flowerName,
      @required this.flowerDescription,
      @required this.flowerURL});

  final String flowerName;
  final String flowerDescription;
  final String flowerURL;
  final ImageProvider flowerImage;
  /* 'TORCH GINGER'
  AssetImage('images/download.jpg')
  'The torch ginger lily (Etlingera elatior) is a showy addition to the tropical landscape, as it is a large plant with a variety of unusual, colorful blooms. Torch ginger plant information says the plant, an herbaceous perennial, grows in areas where temperatures fall no lower than 50 F. (10 C.) at night.'

  'https://www.gardeningknowhow.com/ornamental/flowers/ornamental-ginger/growing-torch-ginger-lilies.htm'
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Text(flowerName),
          )),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: ReusableCard(
              colour: Colors.red[50],
              cardChild: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'DESCRIPTION',
                        style:
                            kTitleTextStyle.copyWith(color: Colors.deepOrange),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image(
                      image: flowerImage,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        flowerDescription,
                        style: kBodyTextStyle.copyWith(
                            color: Colors
                                .green), //kResultTextStyle.copyWith(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Text(
                    'To read more on this flower, click on this link ->',
                    style: kResultTextStyle.copyWith(color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () async => await launch(flowerURL),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          flowerURL,
                          style: kResultTextStyle.copyWith(
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
