part of smart_alert_dialog_widget;

class _SmartAlertDialogDesktop extends StatelessWidget {
  final SmartAlertDialog _smartAlertDialog;
  final bool isDismissable;

  const _SmartAlertDialogDesktop(this._smartAlertDialog, this.isDismissable);

  // [cupertinoYesOrNo] Show dismissable alert for IOS
  List<Widget> cupertinoDismissable(BuildContext context) => [
        CupertinoDialogAction(
          child: Text(
            _smartAlertDialog.text.dismiss,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[600],
              fontSize: 18,
            ),
          ),
          onPressed: () => _smartAlertDialog.dismissDialog(context),
        )
      ];

  // [cupertinoYesOrNo] Show yes or no alert for IOS
  List<Widget> cupertinoYesOrNo(BuildContext context) => [
        CupertinoDialogAction(
          child: Text(
            _smartAlertDialog.text.cancel,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[600],
              fontSize: 18,
            ),
          ),
          onPressed: _smartAlertDialog.getOnCancelPress(context),
        ),
        CupertinoDialogAction(
          child: Text(
            _smartAlertDialog.text.confirm,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal[400],
              fontSize: 18,
            ),
          ),
          onPressed: _smartAlertDialog.getOnConfirmPress(context),
        ),
      ];

  // [showCupertinoWidget] Show alert design for IOS
  Widget showCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
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
        ),
      ),
      actions: isDismissable
          ? cupertinoDismissable(context)
          : cupertinoYesOrNo(context),
    );
  }

  // [materialDismissable] Show dismissable alert for Android
  List<Widget> materialDismissable(BuildContext context) => [
        TextButton(
          child: Text(
            _smartAlertDialog.text.dismiss,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[700],
              fontSize: 18,
            ),
          ),
          onPressed: _smartAlertDialog.getOnConfirmPress(context),
        ),
      ];

  // [materialYesOrNo] Show yes or no alert for Android
  List<Widget> materialYesOrNo(BuildContext context) => [
        TextButton(
          child: Text(
            _smartAlertDialog.text.cancel,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[600],
              fontSize: 18,
            ),
          ),
          onPressed: _smartAlertDialog.getOnCancelPress(context),
        ),
        TextButton(
          child: Text(
            _smartAlertDialog.text.confirm,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal[400],
              fontSize: 18,
            ),
          ),
          onPressed: _smartAlertDialog.getOnConfirmPress(context),
        ),
      ];

  // [showMaterialWidget] Show alert design for Android
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
