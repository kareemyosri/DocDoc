import 'package:docdoc/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomTextButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
       text,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
