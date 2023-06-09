import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:coba/config.dart';
import 'package:coba/controller/authController.dart';
import 'package:coba/widgets/hero_title.dart';
import 'package:coba/widgets/rounded_elevated_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: GetBuilder<AuthController>(
      builder: (_authController) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeroTitle(
                title:
                    'Hello ${_authController.displayName.toString().capitalizeString()}!',
                subtitle: 'Let\'s being...'),
            Expanded(flex: 8, child: Container()),
            RoundedElevatedButton(
              title: 'Sign out',
              onPressed: () => _authController.signout(),
              padding:
                  EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.2),
            ),
          ],
        );
      },
    ));
  }
}
