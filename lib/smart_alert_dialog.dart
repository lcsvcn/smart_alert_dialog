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
  final String title;
  final String content;
  final Function()? onConfirmPress;
  final Function()? onCancelPress;
  final String? confirmText;
  final String? cancelText;

  SmartAlertDialog({
    required this.title,
    required this.content,
    this.onConfirmPress,
    this.onCancelPress,
    this.confirmText = "Yes",
    this.cancelText = "No",
  });

  String getConfirmText() => confirmText == null
      ? this.onConfirmPress == null
          ? "OK"
          : "Yes"
      : confirmText!;

  String getCancelText() => cancelText == null ? "No" : cancelText!;

  void dismissDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  Function() getOnCancelPress(BuildContext context) => onCancelPress == null
      ? () => dismissDialog(context)
      : () {
          onCancelPress!();
          dismissDialog(context);
        };

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
      desktop: _SmartAlertDialogDesktop(),
      tablet: _SmartAlertDialogTablet(this),
    );
  }
}
