import 'package:flutter/material.dart';

import 'package:comein_web/constants.dart';
import 'package:comein_web/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required VoidCallback this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
