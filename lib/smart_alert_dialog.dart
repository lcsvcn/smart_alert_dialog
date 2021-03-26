library smart_alert_dialog_widget;

import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'local_constants/screen_breakpoints_sizes.dart';
import 'models/AlertDialogText.dart';
import 'models/AlertDialogStyle.dart';

import 'dart:io' show Platform;

part 'smart_alert_dialog_mobile.dart';
part 'smart_alert_dialog_tablet.dart';
part 'smart_alert_dialog_desktop.dart';

class SmartAlertDialog extends StatelessWidget {
  /// [title] This is the alert dialog title
  final String title;

  /// [content] This is the alert dialog content
  final String content;

  /// [onConfirmPress] Function to be call on confirm button press.
  final Function()? onConfirmPress;

  /// [onCancelPress] Function to be call on cancel button press.
  final Function()? onCancelPress;

  /// [text] Change the text from confirm button
  final AlertDialogText? text;

  /// [style] Change the text from confirm button
  final AlertDialogStyle? style;

  /// [confirmText] Change the text from cancel button
  final String confirmText;

  /// [cancelText] Change the text from cancel button
  final String cancelText;

  /// [isDismissible] Set this true to have a dismissable alert, the default is Yes/No alert dialog.
  final bool isDismissible;

  /// [text] default value is [DEFAULT_TEXT]
  /// [style] default value is  [DEFAULT_STYLE]
  /// [cancelText] is [deprecated] and should be replaced with [text] in newer versions
  /// [confirmText] is [deprecated] and should be replaced with [text] in newer versions
  SmartAlertDialog({
    required this.title,
    required this.content,
    this.text,
    this.style,
    this.onConfirmPress,
    this.onCancelPress,
    @deprecated this.cancelText = "Yes",
    @deprecated this.confirmText = "No",
    this.isDismissible = false,
  });

  AlertDialogText getText() {
    return text ?? AlertDialogText();
  }

  AlertDialogStyle getStyle() {
    return style ?? AlertDialogStyle();
  }
  /// [dismissDialog] Dismiss Alert Dialog
  void dismissDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  /// [getOnCancelPress] Get On Cancel Press or Default action
  Function() getOnCancelPress(BuildContext context) => onCancelPress == null
      ? () => dismissDialog(context)
      : () {
          onCancelPress!();
          dismissDialog(context);
        };

  /// [getOnConfirmPress] Get On Confirm Press or Default action
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
      mobile: _SmartAlertDialogMobile(this, isDismissible),
      desktop: _SmartAlertDialogDesktop(this, isDismissible),
      tablet: _SmartAlertDialogTablet(this, isDismissible),
    );
  }
}
