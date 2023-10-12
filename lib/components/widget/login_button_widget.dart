import 'package:flutter/material.dart';
import 'package:siakad/utils/app_themes.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(color: Styles.primaryBlue, borderRadius: BorderRadius.circular(30)),
      child: const Center(
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
