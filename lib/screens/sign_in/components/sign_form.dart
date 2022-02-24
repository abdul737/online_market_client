import 'package:flutter/material.dart';
import 'package:online_market_client/components/custom_suffix_icon.dart';
import 'package:online_market_client/components/form_error.dart';
import 'package:online_market_client/helper/keyboard.dart';
import 'package:online_market_client/screens/otp/otp_screen.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? phoneNumber;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // if all are valid then go to success screen
      KeyboardUtil.hideKeyboard(context);
      Navigator.pushNamed(
        context,
        OtpScreen.routeName,
        arguments: int.parse(phoneNumber!),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              buildPhoneNumber(onEditingComplete: submitForm),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: FormError(errors: errors),
              ),
            ],
          ),
          DefaultButton(
            text: "Continue",
            press: submitForm,
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneNumber({
    required void Function()? onEditingComplete,
  }) {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      onEditingComplete: onEditingComplete,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        } else if (phoneNumberValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidPhoneNumberError);
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        } else if (!phoneNumberValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidPhoneNumberError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
        prefixIcon: SizedBox(
          width: 60,
          child: Center(
            child: Text('+998'),
          ),
        ),
      ),
    );
  }
}
