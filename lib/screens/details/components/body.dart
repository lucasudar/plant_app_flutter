import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/details/components/icon_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              SvgPicture.asset('assets/icons/back_arrow.svg')),
                    ),
                    const Spacer(),
                    const IconCard(icon: 'assets/icons/sun.svg'),
                    const IconCard(icon: 'assets/icons/icon_2.svg'),
                    const IconCard(icon: 'assets/icons/icon_3.svg'),
                    const IconCard(icon: 'assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ]),
        )
      ],
    );
  }
}
