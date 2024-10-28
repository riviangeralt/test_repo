import 'package:flutter/material.dart';

class CompareCompany extends StatelessWidget {
  const CompareCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xffDEDEDE),
          ),
          borderRadius: BorderRadius.circular(8.0),),
      child: Row(
        children: [
          const Text('Compare my company with the Industry'),
          Switch(value: false, onChanged: (value) {}, )
        ],
      ),
    );
  }
}
