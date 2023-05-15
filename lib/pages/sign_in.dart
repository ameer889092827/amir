import 'package:flutter/material.dart';
import 'package:login_dribble/background/sign_in_back.dart';
import 'package:login_dribble/pages/home_page.dart';
import 'package:login_dribble/pages/sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        size: Size(width, (width * 2).toDouble()),
        //Background Curve
        painter: SignInBackground(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 35.0),
               // child: Row(
                //  children: const [Icon(Icons.arrow_back_ios)],
             //   ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0, left: 40),
                child: Row(
                  children: const [
                    Text(
                      "Добро\nПожаловать",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),

              //Input Fields
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 120, right: 50),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Почта',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Пароль',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //Sign in button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Войти",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: const Color.fromARGB(255, 67, 72, 76),
                            onPrimary: Colors.black,
                          ),
                          child: const Icon(Icons.arrow_forward_sharp,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 110,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: const Text(
                            "Регистрация",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const Text(
                          "Забыли пароль?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}