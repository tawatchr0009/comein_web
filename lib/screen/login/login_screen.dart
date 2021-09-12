import 'package:flutter/material.dart';
import 'dart:math';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = "/login";
  static double _horizontalPadding = 24.0;

// double desktopLoginScreenMainAreaWidth({required BuildContext context}) {
//   return min(
//     360 * reducedTextScale(context),
//     MediaQuery.of(context).size.width - 2 * _horizontalPadding,
//   );
// }
// double _textScaleFactor(BuildContext context) {
//   return GalleryOptions.of(context).textScaleFactor(context);
// }
// double reducedTextScale(BuildContext context) {
//   final textScaleFactor = _textScaleFactor(context);
//   return textScaleFactor >= 1 ? (1 + textScaleFactor) / 2 : 1;
// }
  @override
  Widget build(BuildContext context) {
    final isDesktop = true; //isDisplayDesktop(context);
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: 600, //desktopLoginScreenMainAreaWidth(context: context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // _ShrineLogo(),
                  SizedBox(height: 40),
                  _UsernameTextField(),
                  SizedBox(height: 16),
                  _PasswordTextField(),
                  SizedBox(height: 24),
                  _CancelAndNextButtons(),
                  // SizedBox(height: 62),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  const _UsernameTextField();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return PrimaryColorOverride(
        color: Colors.brown,
        child: TextField(
          textInputAction: TextInputAction.next,
          restorationId: 'username_text_field',
          cursorColor: colorScheme.onSurface,
          decoration: InputDecoration(
            labelText: 'Username',
            labelStyle: TextStyle(
                // letterSpacing: letterSpacingOrNone(mediumLetterSpacing)),
                ),
          ),
        ));
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return PrimaryColorOverride(
        color: Colors.brown,
        child: TextField(
          restorationId: 'password_text_field',
          cursorColor: colorScheme.onSurface,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(
                //letterSpacing: letterSpacingOrNone(mediumLetterSpacing)),
                ),
          ),
        ));
  }
}

class PrimaryColorOverride extends StatelessWidget {
  const PrimaryColorOverride(
      {Key? key, required this.color, required this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: color),
      child: child,
    );
  }
}

class _CancelAndNextButtons extends StatelessWidget {
  const _CancelAndNextButtons();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final isDesktop = true; //isDisplayDesktop(context);

    final buttonTextPadding = isDesktop
        ? const EdgeInsets.symmetric(horizontal: 24, vertical: 16)
        : EdgeInsets.zero;

    return Padding(
      padding: isDesktop ? EdgeInsets.zero : const EdgeInsets.all(8),
      child: OverflowBar(
        spacing: isDesktop ? 0 : 8,
        // alignment: MainAxisAlignment.end,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
            ),
            onPressed: () {
              // The login screen is immediately displayed on top of
              // the Shrine home screen using onGenerateRoute and so
              // rootNavigator must be set to true in order to get out
              // of Shrine completely.
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Padding(
              padding: buttonTextPadding,
              child: Text(
                'Cancel',
                style: TextStyle(color: colorScheme.onSurface),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 8,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              onPressed: () {
                // Navigator.of(context).restorablePushNamed(ShrineApp.homeRoute);
              },
              child: Padding(
                padding: buttonTextPadding,
                child: Text(
                  'Next',
                  style: TextStyle(
                      //letterSpacing: letterSpacingOrNone(largeLetterSpacing)),
                      ),
                ),
              ))
        ],
      ),
    );
  }
}
