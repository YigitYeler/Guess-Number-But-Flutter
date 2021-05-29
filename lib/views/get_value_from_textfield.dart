import 'dart:convert';

import 'package:flutter/material.dart';
import '../api%20models/ActivateAccount.dart';
import 'package:http/http.dart' as http;

class GetValueFromTextField extends StatefulWidget {
  GetValueFromTextField({Key key}) : super(key: key);

  @override
  _GetValueFromTextFieldState createState() => _GetValueFromTextFieldState();
}

class _GetValueFromTextFieldState extends State<GetValueFromTextField> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final urlPrefix = 'http://api.oricin.com/api/v1/UsersAuth/ActivateEmail';

  Future<void> makePostRequest() async {
    final url = Uri.parse('$urlPrefix');
    final headers = {"Content-type": "application/json"};
    final json =
        '{"EmailAddress": "${myController.text}", "ActivationCode": "${myController2.text}"}';
    final response = await http.post(url, headers: headers, body: json);
    print('Status code: ${response.statusCode}');
    print(
        'Body: ${Response.fromJson(jsonDecode(response.body)).validationErrors[0].message}');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneme"),
      ),
      body: Column(
        children: [
          TextField(
            controller: myController,
          ),
          TextField(
            controller: myController2,
          ),
          TextButton(
            onPressed: () {
              makePostRequest();
            },
            child: Text("Bas"),
          )
        ],
      ),
    );
  }
}
