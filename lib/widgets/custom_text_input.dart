import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextInputWidget extends StatelessWidget {
  final String? hintText;
  final bool? isPassword;
  final Function? validator;
  final TextEditingController? controller;
  const TextInputWidget({
    Key? key,
    this.hintText,
    this.isPassword = false,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: TextFormField(
        controller: controller,
        validator: (val) => validator!(),
        obscureText: isPassword!,
        decoration: InputDecoration(
          hintText: hintText!,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
