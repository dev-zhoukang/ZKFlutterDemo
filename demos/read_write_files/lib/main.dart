import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File read and write',
      home: HomePage(
        counterStorage: CounterStorage(),
      ),
    );
  }
}

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final directoryPath = await _localPath;
    final filePath = '$directoryPath/counter.text';
    return File(filePath);
  }

  Future<File> writeDataToDisk(int count) async {
    final file = await _localFile;
    return file.writeAsString('$count');
  }

  Future<int> readDataFromDisk() async {
    final file = await _localFile;
    try {
      final dataString = await file.readAsString();
      return int.parse(dataString);
    } catch (e) {
      print('$e');
      return 0;
    }
  }
}

class HomePage extends StatefulWidget {
  final CounterStorage counterStorage;
  HomePage({
    Key key,
    @required this.counterStorage,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _clickNum = 0;

  Future<File> buttonClickAction() async {
    print('按钮点击');
    setState(() {
      _clickNum++;
    });
    return widget.counterStorage.writeDataToDisk(_clickNum);
  }

  Future<Null> initClickNum() async {
    widget.counterStorage.readDataFromDisk().then((num) {
      setState(() {
        _clickNum = num;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initClickNum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Demo'),
      ),
      body: Container(
        child: Center(
          child: Text('$_clickNum'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: buttonClickAction,
        child: Icon(Icons.add),
      ),
    );
  }
}
