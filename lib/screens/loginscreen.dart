import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vituallaflutter/widgets/login_widgets/loginbuttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var addulogo = "images/adducolored.png";
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screen.width,
        height: screen.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                      color: Color.fromARGB(146, 70, 70, 70))
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  addulogo,
                  width: 150,
                  height: 150,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "ATENEO DE DAVAO UNIVERSITY",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      letterSpacing: 5,
                      shadows: const [
                        Shadow(
                            offset: Offset(0, 5.0),
                            blurRadius: 5.0,
                            color: Colors.black)
                      ]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text(
                      "Community Center",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                    Text(
                      "Asset Management System",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const LoginButton(
                  label: "Login with Google",
                  icon: FaIcon(
                    FontAwesomeIcons.solidEnvelope,
                    color: Color.fromARGB(255, 248, 55, 21),
                  ),
                  color: Color.fromARGB(255, 248, 55, 21),
                  routeName: "/dashboard",
                ),
                const SizedBox(
                  height: 10,
                ),
                const LoginButton(
                  label: "Login as Guest",
                  icon: FaIcon(
                    FontAwesomeIcons.users,
                    color: Color.fromARGB(255, 32, 124, 230),
                  ),
                  color: Color.fromARGB(255, 32, 124, 230),
                  routeName: "/dashboard",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
