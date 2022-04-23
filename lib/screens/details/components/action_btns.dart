import 'package:flutter/material.dart';
import '../../../constants.dart';

class ActionBtns extends StatelessWidget {
  const ActionBtns({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Buy Now',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(kPrimaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
          ),
        ),
        Expanded(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'More Info',
                style: TextStyle(color: kPrimaryColor, fontSize: 16),
              ),
            )
        ),
      ],
    );
  }
}
