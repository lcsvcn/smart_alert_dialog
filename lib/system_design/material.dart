part of smart_alert_dialog_widget;

class Material {
  /// [_smartAlertDialog] Is an instance of smart dialog widget
  final SmartAlertDialog _smartAlertDialog;

  const Material(this._smartAlertDialog);

  /// [materialDismissable] Show dismissable alert for Android
  List<Widget> materialDismissable(BuildContext context) => [
        TextButton(
          child: Text(
            _smartAlertDialog.getText().dismiss,
            textAlign: TextAlign.center,
            style: _smartAlertDialog.getStyle().dismiss,
          ),
          onPressed: _smartAlertDialog.getOnConfirmPress(context),
        ),
      ];

  /// [materialYesOrNo] Show yes or no alert for Android
  List<Widget> materialYesOrNo(BuildContext context) => [
        TextButton(
          child: Text(
            _smartAlertDialog.getText().cancel,
            textAlign: TextAlign.center,
            style: _smartAlertDialog.getStyle().cancel,
          ),
          onPressed: _smartAlertDialog.getOnCancelPress(context),
        ),
        TextButton(
          child: Text(
            _smartAlertDialog.getText().confirm,
            textAlign: TextAlign.center,
            style: _smartAlertDialog.getStyle().confirm,
          ),
          onPressed: _smartAlertDialog.getOnConfirmPress(context),
        ),
      ];

  /// [showMaterialWidget] Show alert design for Android
  Widget showMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: Text(
        _smartAlertDialog.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      content: SingleChildScrollView(
        child: Text(
          _smartAlertDialog.content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      actions: _smartAlertDialog.isDismissible
          ? materialDismissable(context)
          : materialYesOrNo(context),
    );
  }
}
