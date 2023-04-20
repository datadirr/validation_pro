import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:validation_pro/validate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _conPassword = TextEditingController();

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('validation_pro'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                      ),
                      onChanged: (value) {
                        if (Validate.isEmail(value)) {
                          log("Email valid");
                        } else {
                          log("Email not valid");
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Mobile",
                        hintText: "Mobile",
                      ),
                      onChanged: (value) {
                        if (Validate.isMobile(value)) {
                          log("Mobile valid");
                        } else {
                          log("Mobile not valid");
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _conPassword,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !Validate.isPassword(value)) {
                          return "* Min 6 characters and Max 12 characters\n* At least one uppercase character\n* At least one lowercase character\n* At least one number\n* At least one special character [@#\u{0024}!%?]";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _submit();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Username",
                      ),
                      onChanged: (value) {
                        if (Validate.isUsername(value)) {
                          log("Username valid");
                        } else {
                          log("Username not valid");
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [Validate.intValueFormatter()],
                        decoration: const InputDecoration(
                          labelText: "Only int",
                          hintText: "Only int",
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          Validate.decimalValueFormatter(decimalPlaceValue: 2)
                        ],
                        decoration: const InputDecoration(
                          labelText: "Only double",
                          hintText: "Only double",
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
