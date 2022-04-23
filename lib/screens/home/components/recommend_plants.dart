import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../details/details_screen.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Sakura',
            country: 'Russia',
            price: 400,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailsScreen();
              }));
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Aloe',
            country: 'Thailand',
            price: 50,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailsScreen();
              }));
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Ficus',
            country: 'Canada',
            price: 100500,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailsScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Image.asset(
              image,
            ),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button?.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
