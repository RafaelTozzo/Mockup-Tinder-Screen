import 'package:flutter/material.dart';

class ButtonHomePage extends StatelessWidget {
  String name;
  String logo;

  ButtonHomePage({
    Key? key,
    required this.name,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            primary: Colors.white,
            shape: StadiumBorder(),
            side: BorderSide(
                width: 2.0, color: Colors.white, style: BorderStyle.solid)),
        onPressed: () {},
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(logo),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
