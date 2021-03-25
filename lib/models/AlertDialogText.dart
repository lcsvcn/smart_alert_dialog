class AlertDialogText {
  // [confirm] Change the text from confirm button
  final String confirm;
  // [cancel] Change the text from cancel button
  final String cancel;
  // [dismiss] Change the text from dismiss button
  final String dismiss;

  // [confirm] default value is Yes
  // [cancel] default value is No
  // [dismiss] default value is Ok
  const AlertDialogText({
    this.confirm = "Yes",
    this.cancel = "No",
    this.dismiss = "Ok",
  });
}
