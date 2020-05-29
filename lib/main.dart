import 'flower_screen.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(RareFlowersDocument());

class RareFlowersDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      routes: {
        'home_screen': (context) => InputPage(),
        'torch_ginger': (context) => FlowerScreen(
              flowerName: 'TORCH GINGER',
              flowerDescription:
                  'The torch ginger lily (Etlingera elatior) is a showy addition to the tropical landscape, as it is a large plant with a variety of unusual, colorful blooms. The plant, an herbaceous perennial, grows in areas where temperatures fall no lower than 50 F. (10 C.) at night.',
              flowerImage: AssetImage('images/torchginger.jpg'),
              flowerURL:
                  'https://www.gardeningknowhow.com/ornamental/flowers/ornamental-ginger/growing-torch-ginger-lilies.htm',
            ),
        'fire_lily': (context) => FlowerScreen(
              flowerName: 'FIRE LILY',
              flowerImage: AssetImage('images/firelily.jpg'),
              flowerURL:
                  'https://www.thespruce.com/fire-lily-plant-profile-4768477',
              flowerDescription:
                  'Few houseplants can boast blooms as vibrant as the fire lily. After your winter holiday plants like poinsettias and amaryllis have faded, the fire lily fills a gap when the days are short and spring still seems far off.',
            ),
        'jade_vine': (context) => FlowerScreen(
              flowerDescription:
                  'Also known as emerald creeper, jade vine plants (Strongylodon macrobotrys) are so extravagant that you have to see to believe. Jade vine is known for its spectacular blooms consisting of dangling clusters of shimmering greenish-blue, claw-shaped flowers.',
              flowerURL:
                  'https://www.gardeningknowhow.com/houseplants/jade-vine/care-of-jade-vines.htm',
              flowerImage: AssetImage('images/jadevine.jpg'),
              flowerName: 'JADE VINE',
            ),
        'middlemest_red': (context) => FlowerScreen(
              flowerImage: AssetImage('images/middlemestred.jpg'),
              flowerName: 'MIDDLEMEST RED',
              flowerURL:
                  'https://www.arenaflowers.co.in/blog/most-beautiful-rarest-middlemist-red-camellia-photos-meaning/',
              flowerDescription:
                  'Camellia japonica, or Middlemist’s red, is one of the rarest flowers in the world with only two known plants in existence.The Middlemist’s red camellia has been flowering for nearly two centuries several miles outside of China.',
            ),
      },
      home: InputPage(),
    );
  }
}
