import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tutoring_app/app/config/router/named_rout.dart';
import 'package:tutoring_app/app/config/theme/my_colors.dart';
import 'package:tutoring_app/app/core/extensions/context_extension.dart';
import 'package:tutoring_app/app/modules/domain/providers/auth_providers.dart';
import 'package:tutoring_app/app/modules/widget/MyAuthForm.dart';
import 'package:tutoring_app/shared/my_appbar.dart';

class RegisterScreen extends ConsumerWidget {
  RegisterScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authControllerProvider.notifier);
    final authState = ref.watch(authControllerProvider);
    final formProvider = ref.watch(authFormController);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MyAppbar(
        appBarTitle: Text(
          context.translate.register,
          style: context.theme.textTheme.titleMedium?.copyWith(
            color: MyColors.secondary_400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyAuthForm(registerFormKey: formKey),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      authController
                          .register(
                              email: formProvider.email,
                              userName: formProvider.userName,
                              password: formProvider.password)
                          .then((value) {
                        if (value == true) {
                          context.goNamed(MyNamedRoutes.homePage);
                        }
                        {}
                      });
                    }
                  },
                  child: Text(context.translate.register)),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                  onPressed: () {
                    authController.signInWithGoogle().then((value) {
                      if (value == true) {
                        GoRouter.of(context).goNamed(MyNamedRoutes.homePage);
                      }
                      {}
                    });
                  },
                  child: Text(
                    context.translate.googlesignin,
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
