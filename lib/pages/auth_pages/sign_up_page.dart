import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/auth_controller.dart';
import 'package:notes_app/widgets/custom_text_input.dart';
import 'package:notes_app/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authController.signUpFormKey,
            child: Column(
              children: [
                const Spacer(
                  flex: 4,
                ),
                Text(
                  "Notes App",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Notes made easy",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
                TextInputWidget(
                  hintText: "Enter Name",
                  validator: (val) {},
                  controller: authController.nameController,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInputWidget(
                  hintText: "Enter Email",
                  validator: (val) {},
                  controller: authController.signUpEmailController,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInputWidget(
                  hintText: "Enter Password",
                  validator: (val) {},
                  controller: authController.signUpPasswordController,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 60,
                ),
                PrimaryButton(
                  buttonName: "Sign Up",
                  onTap: () => debugPrint("Login Button Tapped"),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("OR",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 30,
                ),
                CustomGoogleButton(
                  buttonName: "Sign Up",
                  onTap: () {},
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
