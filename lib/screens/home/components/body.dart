import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      Container(
          height: size.height * 0.2,
          child: Stack(children: [
            Container(
              height: size.height * 0.2 - 27,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23))
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search'
                    ),
                  )),
            )
          ]))
    ]);
  }
}