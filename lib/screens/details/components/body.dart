import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/details/components/action_btns.dart';
import 'package:plant_app_flutter/screens/details/components/image_and_icons.dart';
import 'package:plant_app_flutter/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: const [
          ImageAndIcons(),
          TitleAndPrice(
            title: 'Ficus',
            country: 'Russia',
            price: 400,
          ),
          SizedBox(height: kDefaultPadding),
          ActionBtns(),
          SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
