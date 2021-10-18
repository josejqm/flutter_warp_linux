import 'package:flutter/material.dart';

class CheckingConnectionView extends StatelessWidget {
  const CheckingConnectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
    );
  }
}
