import 'package:flutter/material.dart';
import 'package:tutoring_app/app/config/theme/my_colors.dart';
import 'package:tutoring_app/app/core/extensions/context_extension.dart';
import 'package:tutoring_app/app/modules/widget/MyAuthForm.dart';
import 'package:tutoring_app/shared/my_appbar.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        appBarTitle: Text(
          context.translate.register,
          style: context.theme.textTheme.titleMedium?.copyWith(
            color: MyColors.secondary_400,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyAuthForm(registerFormKey: formKey),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
              onPressed: () {}, child: Text(context.translate.register)),
          const SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                context.translate.googlesignin,
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
