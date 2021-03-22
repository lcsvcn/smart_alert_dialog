library smart_alert_dialog_widget;

import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'local_constants/screen_breakpoints_sizes.dart';

import 'dart:io' show Platform;

part 'smart_alert_dialog_mobile.dart';
part 'smart_alert_dialog_tablet.dart';
part 'smart_alert_dialog_desktop.dart';

class SmartAlertDialog extends StatelessWidget {
  // Change the title of the Alert Dialog
  final String title;
  // Change the description of the Alert Dialog
  final String content;
  // Function to be call on accept press. If not set, it will appear a dismissable alert dialog.
  final Function()? onConfirmPress;
  // Function to be call on cancel press.
  final Function()? onCancelPress;
  // Change the text from confirm button
  final String? confirmText;
  // Change the text from cancel button
  final String? cancelText;

  SmartAlertDialog({
    required this.title,
    required this.content,
    this.onConfirmPress,
    this.onCancelPress,
    this.confirmText = "Yes",
    this.cancelText = "No",
  });

  // Get On confirmt text or default
  String getConfirmText() => confirmText == null
      ? this.onConfirmPress == null
          ? "OK"
          : "Yes"
      : confirmText!;

  // Get On cancel text or default
  String getCancelText() => cancelText == null ? "No" : cancelText!;

  // Dismiss Alert Dialog
  void dismissDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  // Get On Cancel Press or Default action
  Function() getOnCancelPress(BuildContext context) => onCancelPress == null
      ? () => dismissDialog(context)
      : () {
          onCancelPress!();
          dismissDialog(context);
        };

  // Get On Confirm Press or Default action
  Function() getOnConfirmPress(BuildContext context) => onConfirmPress == null
      ? () => dismissDialog(context)
      : () {
          onConfirmPress!();
          dismissDialog(context);
        };

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: ScreenBreakpointsSizes.TABLET,
        desktop: ScreenBreakpointsSizes.DESKTOP,
        watch: ScreenBreakpointsSizes.WATCH,
      ),
      mobile: _SmartAlertDialogMobile(this, this.onConfirmPress == null),
      desktop: _SmartAlertDialogDesktop(this, this.onConfirmPress == null),
      tablet: _SmartAlertDialogTablet(this, this.onConfirmPress == null),
    );
  }
}
