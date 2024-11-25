import 'package:flutter/material.dart';

class SignupScreens extends StatefulWidget {
  const SignupScreens({super.key});

  @override
  State<SignupScreens> createState() => _SignupScreensState();
}

class _SignupScreensState extends State<SignupScreens> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //===== Image Register =====
                Image.asset(
                  'assets/images/register.png',
                  width: size.width - 100,
                ),
                const SizedBox(height: 10.0),
                //===== Text Register =====
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                //===== Form Sign Up =====
                Form(
                  child: Column(
                    children: [
                      //===== Enter Full name =====
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your full name',
                          label: const Text('Full name'),
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            fontFamily: 'verdana_regular',
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: const Icon(Icons.person),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
