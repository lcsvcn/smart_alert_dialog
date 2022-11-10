part of smart_alert_dialog_widget;

class Cupertino {
  /// [_smartAlertDialog] Is an instance of smart dialog widget
  final SmartAlertDialog _smartAlertDialog;

  const Cupertino(this._smartAlertDialog);

  /// [cupertinoYesOrNo] Show dismissable alert for IOS
  List<Widget> cupertinoDismissable(BuildContext context) => [
        CupertinoDialogAction(
          child: Text(
            _smartAlertDialog.getText().dismiss,
            textAlign: TextAlign.center,
            style: _smartAlertDialog.getStyle().dismiss,
          ),
          onPressed: () => _smartAlertDialog.dismissDialog(context),
        )
      ];

  /// [cupertinoYesOrNo] Show yes or no alert for IOS
  List<Widget> cupertinoYesOrNo(BuildContext context) => [
        CupertinoDialogAction(
          child: Text(
            _smartAlertDialog.getText().cancel,
            textAlign: TextAlign.center,
            style: _smartAlertDialog.getStyle().cancel,
          ),
          onPressed: _smartAlertDialog.getOnCancelPress(context),
        ),
        CupertinoDialogAction(
          child: Text(
            _smartAlertDialog.getText().confirm,
            textAlign: TextAlign.center,
            style: _smartAlertDialog.getStyle().confirm,
          ),
          onPressed: _smartAlertDialog.getOnConfirmPress(context),
        ),
      ];

  /// [showCupertinoWidget] Show alert design for IOS
  Widget showCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        _smartAlertDialog.title,
        textAlign: TextAlign.center,
        style: _smartAlertDialog.getStyle().title,
      ),
      content: SingleChildScrollView(
        child: Text(
          _smartAlertDialog.message,
          textAlign: TextAlign.center,
          style: _smartAlertDialog.getStyle().message,
        ),
      ),
      actions: _smartAlertDialog.isDismissible
          ? cupertinoDismissable(context)
          : cupertinoYesOrNo(context),
    );
  }
}
