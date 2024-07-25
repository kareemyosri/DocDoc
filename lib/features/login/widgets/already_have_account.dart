import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            style: TextStyles.font13DarkBlueRegular,
            text: 'Already have an account yet?  ',
          ),
          TextSpan(
            style: TextStyles.font13BlueRegular,
            text: 'Sign Up'
          ),
        ],
      )
    );
  }
}
