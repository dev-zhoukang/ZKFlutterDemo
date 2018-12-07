import 'package:flutter/material.dart';
import 'dog_model.dart';

class AddDogFormPage extends StatefulWidget {
  @override
  _AddDogFormPageState createState() => _AddDogFormPageState();
}

class _AddDogFormPageState extends State<AddDogFormPage> {
  final double kDefaultMargin = 8.0;
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descController = TextEditingController();

  void submitBtnDidClick(BuildContext context) {
    print('submitBtnDidClick');
    if (nameController.text.isEmpty) {
      print('name can not be null');
    } else {
      Dog newDog = Dog(
          nameController.text, locationController.text, descController.text);
      Navigator.pop(context, newDog);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a dog')),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              onChanged: (text) => nameController.text = text,
              decoration: InputDecoration(
                labelText: '请输入名称',
              ),
            ),
            SizedBox(height: kDefaultMargin),
            TextField(
              controller: locationController,
              onChanged: (text) => locationController.text = text,
              decoration: InputDecoration(
                labelText: '请输入地址',
              ),
            ),
            SizedBox(height: kDefaultMargin),
            TextField(
              controller: descController,
              onChanged: (text) => descController.text = text,
              decoration: InputDecoration(
                labelText: '请输入描述',
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () => submitBtnDidClick(context),
              color: Colors.orange,
              child: Text('提交', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
