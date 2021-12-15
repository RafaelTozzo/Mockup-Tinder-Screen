import 'package:flutter/material.dart';

class ButtonHomePage extends StatelessWidget {
  final String name;
  final String logo;

  const ButtonHomePage({
    Key? key,
    required this.name,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            primary: Colors.white,
            shape: const StadiumBorder(),
            side: const BorderSide(
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
                    style: const TextStyle(
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
