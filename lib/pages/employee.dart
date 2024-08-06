import 'package:crud_app/services/database.dart';
import 'package:crud_app/widgets/employee_form.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Employee',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Form',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          EmployeeForm(
            fSize: 24,
            formTitle: 'Name',
            controller: nameController,
          ),
          EmployeeForm(
            fSize: 24,
            formTitle: 'Age',
            controller: ageController,
          ),
          EmployeeForm(
            fSize: 24,
            formTitle: 'Location',
            controller: locationController,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              String id = randomAlphaNumeric(10);
              Map<String, dynamic> employeeInfoMap = {
                "Name": nameController.text,
                "Age": ageController.text,
                "Id": id,
                "Location": locationController.text,
              };
              await DatabaseMethods()
                  .addEmployeeDetails(employeeInfoMap, id)
                  .then((value) {
                Fluttertoast.showToast(
                    msg: "Employee Details have been added successfully",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0);
              });
              Navigator.pop(context);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
