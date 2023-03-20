import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  ListViewItems({Key? key}) : super(key: key);
    final List<Map<String, dynamic>> _items = List.generate(
      10,
      (index) =>
          {"id": index, "title": "Item $index", "subtitle": "Subtitle $index"});


  @override
  Widget build(BuildContext context) {
    // return ListView(

    // );
    return ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
    });
    // return ListTileTheme(
    //       contentPadding: const EdgeInsets.all(15),
    //       iconColor: Colors.red,
    //       textColor: Colors.black54,
    //       tileColor: Colors.yellow[100],
    //       style: ListTileStyle.list,
    //       dense: true,
    //       child: ListView.builder(
    //         itemCount: _items.length,
    //         itemBuilder: (_, index) => Card(
    //           margin: const EdgeInsets.all(10),
    //           child: ListTile(
    //             title: Text(_items[index]['title']),
    //             subtitle: Text(_items[index]['subtitle']),
    //             trailing: Row(
    //               mainAxisSize: MainAxisSize.min,
    //               children: [
    //                 IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
    //                 IconButton(
    //                     onPressed: () {}, icon: const Icon(Icons.delete)),
    //                 IconButton(
    //                     onPressed: () {}, icon: const Icon(Icons.add_box)),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
  }
}