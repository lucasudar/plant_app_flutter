import 'package:flutter/material.dart';
import 'package:plant_app_flutter/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app_flutter/screens/home/components/recommend_plants.dart';
import 'package:plant_app_flutter/screens/home/components/title_with_more_btn.dart';

import '../../../constants.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(title: 'Recommended', press: () {}),
        const RecommendPlants(),
        TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
        const FeaturedPlants(),
        const SizedBox(height: kDefaultPadding),
      ]),
    );
  }
}

