part of smart_alert_dialog_widget;

class _SmartAlertDialogTablet extends StatelessWidget {
  final SmartAlertDialogWidget _smartAlertDialog;

  const _SmartAlertDialogTablet(this._smartAlertDialog);

  Widget showCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        _smartAlertDialog.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      content: Text(
        _smartAlertDialog.content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      actions: [
        CupertinoDialogAction(
          child: Text(
            "Não",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[600],
              fontSize: 26,
            ),
          ),
          onPressed: () => dismissDialog(context),
        ),
        CupertinoDialogAction(
            child: Text(
              "Sim",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.teal[400],
                fontSize: 26,
              ),
            ),
            onPressed: _smartAlertDialog.onConfirmPress),
      ],
    );
  }

  void dismissDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  Widget showMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: Text(
        _smartAlertDialog.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      content: Text(
        _smartAlertDialog.content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            "Não",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[600],
              fontSize: 26,
            ),
          ),
          onPressed: () => dismissDialog(context),
        ),
        TextButton(
          child: Text(
            "Sim",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal[400],
              fontSize: 26,
            ),
          ),
          onPressed: _smartAlertDialog.onConfirmPress,
        ),
      ],
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
