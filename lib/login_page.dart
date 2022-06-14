import 'package:flutter/material.dart';
import 'package:genelsinav3/service/auth.dart';
import 'package:genelsinav3/utils/customColors.dart';
import 'package:genelsinav3/utils/customTextStyle.dart';
import 'package:genelsinav3/anasayfa.dart';
import 'package:genelsinav3/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    String topImage = "assets/images/topImage.png";
    return Scaffold(
      body: appBody(height, topImage),
    );
  }

  SingleChildScrollView appBody(double height, String topImage) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topImageContainer(height, topImage),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText(),
                  customSizedBox(),
                  usernameTextField(),
                  customSizedBox(),
                  passwordTextField(),
                  customSizedBox(),
                  forgotPasswordButton(),
                  customSizedBox(),
                  signInButton(),
                  customSizedBox(),
                  signUpButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Text titleText() {
    return const Text(
      "NEDİO sana, \nHosgeldin diyor",
      style: CustomTextStyle.titleTextStyle,
    );
  }

  TextField usernameTextField() {
    return TextField(
      decoration: customInputDecoration("Kullanici Adi"),
        controller: _emailController,
    );
  }


  TextField passwordTextField() {
    return TextField(
      decoration: customInputDecoration("Sifre"),
        controller: _passwordController,
    );
  }

  Center forgotPasswordButton() {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: customText(
          "Sifremi Unuttum",
          CustomColors.textButtonColor,
        ),
      ),
    );
  }

  Center signInButton() {
    return Center(
      child: InkWell(
        child: TextButton(
          onPressed: () {
            _authService
                .signIn(
                _emailController.text, _passwordController.text)
                .then((value) {
              return Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const anasayfa()));
            });
          },
          child: Container(
            height: 50,
            width: 150,
            margin: const EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xff31274F)),
            child: Center(
              child: customText("Giris Yap", CustomColors.loginButtonTextColor),
            ),
          ),
        ),
      ),
    );
  }

  Center signUpButton() {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()),
          );

        },
        child: customText(
          "Hesap Olustur",
          CustomColors.textButtonColor,
        ),
      ),
    );
  }

  Container topImageContainer(double height, String topImage) {
    return Container(
      height: height * .25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(topImage),
        ),
      ),
    );
  }

  Widget customSizedBox() => const SizedBox(
    height: 20,
  );

  Widget customText(String text, Color color) => Text(
    text,
    style: TextStyle(color: color),
  );

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }
}
