import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final Function? callback;
  final Widget? title;
  const CustomBtn({Key? key, this.title, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          color: const Color.fromARGB(255, 14, 169, 94),
          child: TextButton(
            onPressed: () => callback!(),
            child: title!,
          ),
        ),
      ),
    );
  }
}
