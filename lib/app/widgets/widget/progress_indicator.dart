import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topProgressView extends StatelessWidget {
  const topProgressView({
    required this.first,
    required this.second,
  });

  final Color first;
  final Color second;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: first,
              thickness: 3,
              indent: 25,
              endIndent: 5,
            ),
          ),
          Expanded(
            child: Divider(
              color: second,
              thickness: 3,
              indent: 5,
              endIndent: 25,
            ),
          ),
        ],
      ),
    );
  }
}
