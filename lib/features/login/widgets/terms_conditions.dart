import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              style: TextStyles.font13GrayRegular,
              text: 'By logging, you agree to our ',
            ),
            TextSpan(
                style: TextStyles.font13DarkBlueRegular,
                text: 'Terms & Conditions '
            ),
            TextSpan(
                style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
                text: 'and '
            ),
            TextSpan(
                style: TextStyles.font13DarkBlueRegular,
                text: 'PrivacyPolicy'
            ),
          ],
        )
    );

  }
}
