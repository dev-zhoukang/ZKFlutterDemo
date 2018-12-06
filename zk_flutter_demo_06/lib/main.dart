import 'package:flutter/material.dart';
import 'dog_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZKDemo',
      theme: ThemeData(brightness: Brightness.dark),
      home: ZKHomePage(title: 'ZKDemo'),
    );
  }
}

class ZKHomePage extends StatefulWidget {
  final String title;
  ZKHomePage({Key key, this.title}) : super(key: key);

  @override
  ZKHomePageState createState() => ZKHomePageState();
}

class ZKHomePageState extends State<ZKHomePage> {
  @override
  void initState() {
    super.initState();
    List<Dog> initData = []
      ..add(Dog('Ruby', 'Beijing', 'aaaaaa'))
      ..add(Dog('Rex', 'Henan', 'werrwerw'))
      ..add(Dog('Alex', 'Anhui', 'rwerwer'))
      ..add((Dog('Herbert', 'Tawan', '342432')));
    print('=========$initData');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      backgroundColor: Colors.black87,
      body: Container(),
    );
  }
}
