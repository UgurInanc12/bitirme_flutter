import 'package:bitirme_flutter/views/chatRoomsScreen.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_flutter/widgets/widget.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();

  TextEditingController userNameTextEdittingController =
      new TextEditingController();
  TextEditingController emailNameTextEdittingController =
      new TextEditingController();
  TextEditingController passwordNameTextEdittingController =
      new TextEditingController();

  signMeUp() {
    if (formKey.currentState!.validate()) {}
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ChatRoom()));
  }
  letMeIn() {
    if (formKey.currentState!.validate()) {
    }
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
                        controller: userNameTextEdittingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("Kullanici Adi"),
                      ),
                      TextFormField(
                        controller: emailNameTextEdittingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("Email"),
                      ),
                      TextFormField(
                        controller: passwordNameTextEdittingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("Sifre"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
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
                const SizedBox(
                  height: 8,
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
                const SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "Kayit Ol",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hesabin Varsa   ",
                      style: simpleTextStyle(),
                    ),
                    const Text(
                      "Giris Yapabilirsin",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                const SizedBox(
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
