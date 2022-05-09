library smart_alert_dialog_widget;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_io/io.dart' show Platform;

import 'models/alert_dialog_style.dart';
import 'models/alert_dialog_text.dart';

part 'system_design/material.dart';
part 'system_design/cupertino.dart';

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

  /// [isDismissible] Set this true to have a dismissable alert, the default is Yes/No alert dialog.
  final bool isDismissible;

  /// [text] default value is [DEFAULT_TEXT]
  /// [style] default value is  [DEFAULT_STYLE]
  SmartAlertDialog({
    required this.title,
    required this.content,
    this.text,
    this.style,
    this.onConfirmPress,
    this.onCancelPress,
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
    return Center(
      child: (Platform.isIOS)
          ? Cupertino(this).showCupertinoWidget(context)
          : Material(this).showMaterialWidget(context),
    );
  }
}
