import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:servis_app/pages/request_service_flow.dart';
import 'package:servis_app/utils/helper.dart';
import 'package:servis_app/widgets/input_widget.dart';
import 'package:servis_app/widgets/primary_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputWidget(
            hintText: "Email",
            suffixIcon: Icon(Octicons.mail),
          ),
          SizedBox(
            height: 15.0,
          ),
          InputWidget(
            hintText: "Password",
            obscureText: true,
          ),
          SizedBox(
            height: 25.0,
          ),
          PrimaryButton(
            text: "Masuk",
            onPressed: () {
              Helper.nextPage(context, RequestServiceFlow());
            },
          )
        ],
      ),
    );
  }
}