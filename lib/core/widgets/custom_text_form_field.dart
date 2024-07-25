import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
   final TextEditingController controller;
   final TextInputType? keyboardType;
   final Widget? prefixIcon;
   final Widget? suffixIcon;
   final String hintText;
   final String? labelText;
   final String? Function(String?)? validator;
   final Function()? onTap;
   final Color? prefixIconColor;
   final Color? suffixIconColor;
   final bool obscureText;
   final Color? errorColor;
   final AutovalidateMode? autoValidateMode;
   final String? errorText;

   const CustomTextFormField({super.key,
     required this.controller,
     this.keyboardType,
     this.prefixIcon,
     this.suffixIcon,
     required this.hintText,
     this.labelText,
     this.validator,
     this.onTap,
     this.prefixIconColor,
     this.suffixIconColor,
     required this.obscureText, this.errorColor, this.autoValidateMode, this.errorText
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autoValidateMode,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      onTap: onTap,
      obscureText: obscureText,
      style: TextStyles.font14darkBlueMedium,
      decoration: InputDecoration(
        filled: true,
      fillColor: ColorsManager.moreLighterGray,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 18),
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,

        suffixIcon: suffixIcon,
        suffixIconColor:suffixIconColor ,
        hintText: hintText,
        hintStyle: TextStyles.font14MediumGrayMedium,
        errorText: errorText,
        errorStyle:   TextStyle(
          color: errorColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,

        ),
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1.3,
            color: ColorsManager.lighterGray,
          ),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color:ColorsManager.mainBlue,
            width: 1.3,
          ),
        ),
      ),
    );
  }


}
