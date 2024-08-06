import 'package:flutter/material.dart';

class EmployeeForm extends StatelessWidget {
  const EmployeeForm(
      {super.key,
      required this.formTitle,
      required this.controller,
      required this.fSize});
  final String formTitle;
  final TextEditingController controller;
  final double fSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formTitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: fSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(
                  10,
                )),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
