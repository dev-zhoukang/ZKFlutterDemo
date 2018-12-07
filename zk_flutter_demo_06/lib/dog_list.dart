import 'package:flutter/material.dart';
import 'dog_cell.dart';
import 'dog_model.dart';

class DogList extends StatelessWidget {
  final List<Dog> dogs;
  DogList(this.dogs);

  @override
  Widget build(BuildContext context) {
    return _buildListView(context);
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        return DogCell(dogs[index]);
      },
    );
  }
}
