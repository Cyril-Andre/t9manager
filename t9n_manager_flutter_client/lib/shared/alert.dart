import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t9n_manager_flutter_client/shared/app_state_notifier.dart';

alert(String title, String message, String buttonLabel, String newRouteName, BuildContext context) {
  return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text(title),
      content: Text(message),
      actions: <Widget>[TextButton(onPressed:()=> onpressed(newRouteName, context), child: Text(buttonLabel))]);
}

onpressed(
  String newRouteName,
  BuildContext context,
) {
  if (newRouteName == "") {
    Navigator.pop(context);
  } else {
    Navigator.pop(context);
    Navigator.popAndPushNamed(context, newRouteName);
  }
}
