import 'package:flutter/material.dart';
import 'dog_model.dart';
import 'dog_list.dart';
import 'new_dog_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZKDemo',
      theme: ThemeData(primarySwatch: Colors.purple),
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
  List<Dog> dataSource = []
    ..add(Dog('Ruby', 'Beijing', 'aaaaaa', rating: 3))
    ..add(Dog('Rex', 'Henan', 'werrwerw', rating: 5))
    ..add(Dog('Alex', 'Anhui', 'rwerwer', rating: 8))
    ..add((Dog('Herbert', 'Tawan', '342432', rating: 10)));

  void pushToAddDogPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDogFormPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: pushToAddDogPage,
        )
      ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.red, Colors.green, Colors.purple],
            stops: <double>[0.0, 0.6, 0.8],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: DogList(dataSource),
      ),
    );
  }
}
