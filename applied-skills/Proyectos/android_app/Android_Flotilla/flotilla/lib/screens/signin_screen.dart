// ignore_for_file: file_names, unnecessary_const

import 'package:flotilla/widgets/custom_sheet.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key, this.child});
  
  final Widget? child; 

  @override
Widget build(BuildContext context) {
    return Sheet(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email';
                }
                return null;
              },
              decoration: const InputDecoration(
                label: Text('Email'),
                hintStyle: TextStyle(
                  color: Colors.black
                ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(

                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
}

}