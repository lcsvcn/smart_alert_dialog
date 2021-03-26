part of smart_alert_dialog_widget;

class _SmartAlertDialogMobile extends StatelessWidget {
  /// [_smartAlertDialog] Is an instance of smart dialog widget
  final SmartAlertDialog _smartAlertDialog;

  /// [isDismissable] Set true to have an alert dialog
  final bool isDismissable;

  const _SmartAlertDialogMobile(this._smartAlertDialog, this.isDismissable);

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
          _smartAlertDialog.content,
          textAlign: TextAlign.center,
          style: _smartAlertDialog.getStyle().content,
        ),
      ),
      actions: isDismissable
          ? cupertinoDismissable(context)
          : cupertinoYesOrNo(context),
    );
  }

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
      actions: isDismissable
          ? materialDismissable(context)
          : materialYesOrNo(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Platform.isIOS)
          ? showCupertinoWidget(context)
          : showMaterialWidget(context),
    );
  }
}
