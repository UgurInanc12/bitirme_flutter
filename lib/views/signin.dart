import 'package:bitirme_flutter/views/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_flutter/widgets/widget.dart';

import 'chatRoomsScreen.dart';
import 'signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();

  TextEditingController emailNameTextEdittingController =
      new TextEditingController();
  TextEditingController passwordNameTextEdittingController =
      new TextEditingController();

  signMeUp() {
    if (formKey.currentState!.validate()) {}
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Signup()));
  }

  letMeIn() {
    if (formKey.currentState!.validate()) {}
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ChatRoom()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          return "asla calismayacak";
                        },
                        controller: emailNameTextEdittingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("Email"),
                      ),
                      TextFormField(
                        validator: (val) {
                          return "asla calismayacak";
                        },
                        controller: passwordNameTextEdittingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("Sifre"),
                      ),
                    ],
                  ),
                  ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Sifreni mi unuttun?",
                      style: simpleTextStyle(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    letMeIn();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          const Color(0xff007EF4),
                          const Color(0xff2A75BC)
                        ]),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      "Giris Yap",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    signMeUp();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xff149e1b), Color(0xff149e1b)]),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      "Kayit Ol",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hesabin yoksa   ",
                      style: simpleTextStyle(),
                    ),
                    Text(
                      "KAYIT OLABILIRSIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
