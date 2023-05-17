import 'package:flutter/material.dart';
import 'package:sprint1/components/rounded_button.dart';
import 'package:sprint1/pages/background.dart';
import 'package:sprint1/pages/auth_page.dart';
import 'package:sprint1/pages/constant.dart';
import 'package:sprint1/pages/cust_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Meranti Hub",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "lib/images/merantiLogo.png",
              height: size.height * 0.4,
            ),
            RoundedButton(
              text: "Customer",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const CustomerPage();
                    },
                  ),
                );
                // debugPrint("Customer Button");
              },
            ),
            RoundedButton(
              text: "Seller",
              color: kPrimaryLightColor,
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const AuthPage();
                    },
                  ),
                );
                // debugPrint("Seller Button");
              },
            ),
          ],
        ),
      ),
    );
  }
}
