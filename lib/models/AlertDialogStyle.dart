import 'package:flutter/material.dart';

class AlertDialogStyle {
  /// [confirm] Change the text from confirm button
  final TextStyle confirm;

  /// [cancel] Change the text from cancel button
  final TextStyle cancel;

  /// [dismiss] Change the text from dismiss button
  final TextStyle dismiss;

  /// [title] Change the text from title text
  final TextStyle title;

  /// [content] Change the text from content text
  final TextStyle? content;

  /// [DEFAULT_DISMISS] is default value of [dismiss]
  static const TextStyle DEFAULT_DISMISS = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xFF2962FF),
    fontSize: 18,
  );

  /// [DEFAULT_CONFIRM] is default value of [confirm]
  static const TextStyle DEFAULT_CONFIRM = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xFF26A69A),
    fontSize: 18,
  );

  /// [DEFAULT_CANCEL] is default value of [cancel]
  static const TextStyle DEFAULT_CANCEL = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xFFE53935),
    fontSize: 18,
  );

  /// [DEFAULT_TITLE] is default value of [title]
  static const TextStyle DEFAULT_TITLE = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  /// [confirm] default value is [DEFAULT_CONFIRM]
  /// [cancel] default value is  [DEFAULT_CANCEL]
  /// [dismiss] default value is [DEFAULT_DISMISS]
  /// [title] default value is [DEFAULT_TITLE]
  /// [content] default value is [DEFAULT_CONTENT]
  const AlertDialogStyle({
    this.confirm = DEFAULT_CONFIRM,
    this.cancel = DEFAULT_CANCEL,
    this.dismiss = DEFAULT_DISMISS,
    this.title = DEFAULT_TITLE,
    this.content,
  });
}
