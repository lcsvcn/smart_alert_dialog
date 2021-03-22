part of smart_alert_dialog_widget;

class _SmartAlertDialogMobile extends StatelessWidget {
  final SmartAlertDialog _smartAlertDialog;
  final bool dismissableAlert;

  const _SmartAlertDialogMobile(this._smartAlertDialog, this.dismissableAlert);

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
      actions: dismissableAlert
          ? [
              CupertinoDialogAction(
                child: Text(
                  _smartAlertDialog.getConfirmText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red[600],
                    fontSize: 18,
                  ),
                ),
                onPressed: _smartAlertDialog.getOnConfirmPress(context),
              ),
            ]
          : [
              CupertinoDialogAction(
                child: Text(
                  _smartAlertDialog.getCancelText(),
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
                  _smartAlertDialog.getConfirmText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[400],
                    fontSize: 18,
                  ),
                ),
                onPressed: _smartAlertDialog.getOnConfirmPress(context),
              ),
            ],
    );
  }

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
      actions: dismissableAlert
          ? [
              TextButton(
                child: Text(
                  "Ok",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent[700],
                    fontSize: 18,
                  ),
                ),
                onPressed: _smartAlertDialog.getOnConfirmPress(context),
              ),
            ]
          : [
              TextButton(
                child: Text(
                  _smartAlertDialog.getCancelText(),
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
                  _smartAlertDialog.getConfirmText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[400],
                    fontSize: 18,
                  ),
                ),
                onPressed: _smartAlertDialog.getOnConfirmPress(context),
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
