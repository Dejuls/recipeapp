import 'package:flutter/material.dart';


class GridSample extends StatefulWidget {
  final List list;
 
  GridSample({super.key, required this.list});

  @override
  State<GridSample> createState() => _GridSampleState();
}

class _GridSampleState extends State<GridSample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: GridView.builder(
          padding: EdgeInsets.all(8),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 2.2),
          itemCount: widget.list.length,
          itemBuilder: (context, index) {
            var _list = widget.list[index];
            return kads(_list.name, _list.icon);
          }),
    );
  }

  Widget kads(String name, IconData icon) {
    return Container(
      margin: EdgeInsets.only(),
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 37,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
