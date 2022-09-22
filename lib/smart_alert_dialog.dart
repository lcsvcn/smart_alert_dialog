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

  @Deprecated("Use message attribute instead, content will be removed soon!")

  /// [content] This is the alert dialog content
  final String? content;

  /// [message] This is the alert dialog message. It is the same as the content did, but with better naming
  final String message;

  @Deprecated("Use onConfirmPressed attribute instead, content will be removed soon!")

  /// [onConfirmPress] Function to be call on confirm button press.
  final Function()? onConfirmPress;

  /// [onConfirmPressed] Function to be call on confirm button press.
  final Function()? onConfirmPressed;

  @Deprecated("Use onCancelPressed attribute instead, content will be removed soon!")

  /// [onCancelPress] Function to be call on cancel button press.
  final Function()? onCancelPress;

  /// [onCancelPressed] Function to be call on cancel button press.
  final Function()? onCancelPressed;

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
    this.content,
    this.message = "",
    this.text,
    this.style,
    this.onConfirmPress,
    this.onConfirmPressed,
    this.onCancelPress,
    this.onCancelPressed,
    this.isDismissible = false,
  })  : assert(
          title.isNotEmpty,
          "You must provide a non empty title for the alert dialog",
        ),
        assert(
          content != null && content.isNotEmpty || message.isNotEmpty,
          "You must provide a message or content to the alert dialog (not both). Prefer using message, since content will be deprecated soon!",
        ),
        assert(onConfirmPress != null || onConfirmPressed != null,
            "You must provide a onConfirmPress or onConfirmPressed to the alert dialog (not both). Prefer using onConfirmPressed, since onConfirmPress will be deprecated soon!"),
        assert(onCancelPress != null || onCancelPressed != null,
            "You must provide a onConfirmPress or onConfirmPressed to the alert dialog (not both). Prefer using onConfirmPressed, since onConfirmPress will be deprecated soon!");

  AlertDialogText getText() => text ?? AlertDialogText();

  String getMessage() => content ?? message;

  AlertDialogStyle getStyle() => style ?? AlertDialogStyle();

  /// [dismissDialog] Dismiss Alert Dialog
  void dismissDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  /// [getOnCancelPress] Get On Cancel Press or Default action
  Function() getOnCancelPress(BuildContext context) => onCancelPress == null
      ? () => dismissDialog(context)
      : () {
          onCancelPress!();
          onCancelPressed!();
          dismissDialog(context);
        };

  /// [getOnConfirmPress] Get On Confirm Press or Default action
  Function() getOnConfirmPress(BuildContext context) => onConfirmPress == null
      ? () => dismissDialog(context)
      : () {
          onConfirmPress!();
          onConfirmPressed!();
          dismissDialog(context);
        };

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          (Platform.isIOS) ? Cupertino(this).showCupertinoWidget(context) : Material(this).showMaterialWidget(context),
    );
  }
}
