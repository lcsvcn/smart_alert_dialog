import 'package:flutter/material.dart';
import 'package:smart_alert_dialog/models/alert_dialog_text.dart';
import 'package:smart_alert_dialog/smart_alert_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _yesNoSmartAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => SmartAlertDialog(
        title: "Are you liking it?",
        text: AlertDialogText(),
        message:
            "Do you think my library is awesome and want have a try?\n\nNote: Fell free to open PR to improve it :)",
        onConfirmPressed: () => print("do something on confirm"),
        onCancelPressed: () => print("do something on cancel"),
      ),
    );
  }

  void _okSmartAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => SmartAlertDialog(
        title: "This is an dismissable alert!",
        text: AlertDialogText(),
        message:
            "Hey, you can only dismiss this alert dialog. And also, don't tap again in that button. You have been alerted!",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                child: Text(
                  "Send a Dismissable Alert",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onPressed: () => _okSmartAlert(context),
                color: Colors.blue,
              ),
              MaterialButton(
                child: Text(
                  "Send a Accept/Cancel Alert",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onPressed: () => _yesNoSmartAlert(context),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
