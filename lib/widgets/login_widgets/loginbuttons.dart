import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.label,
      required this.icon,
      required this.color,
      required this.routeName});

  final String label;
  final FaIcon icon;
  final Color color;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: OutlinedButton(
        onPressed: () => {Navigator.pushNamed(context, routeName)},
        style:
            OutlinedButton.styleFrom(side: BorderSide(color: color, width: 3)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            label,
            style: GoogleFonts.robotoCondensed(fontSize: 20, color: color),
          ),
          const SizedBox(width: 10),
          icon,
        ]),
      ),
    );
  }
}
