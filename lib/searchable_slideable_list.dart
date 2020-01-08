library searchable_slideable_list;

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SearchableSlideableList extends StatefulWidget {
  @override
  _SearchableSlideableListState createState() =>
      _SearchableSlideableListState();
}

class _SearchableSlideableListState extends State<SearchableSlideableList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Slidable(
          key: ValueKey(index),
          actionPane: SlidableDrawerActionPane(),
          actions: <Widget>[
            IconSlideAction(
              caption: 'Archive',
              color: Colors.blue,
              icon: Icons.archive,
            ),
            IconSlideAction(
              caption: 'Share',
              color: Colors.indigo,
              icon: Icons.share,
            ),
          ],
          secondaryActions: <Widget>[
            IconSlideAction(
              caption: 'More',
              color: Colors.grey.shade200,
              icon: Icons.more_horiz,
            ),
            IconSlideAction(
              caption: 'Delete',
              color: Colors.red,
              icon: Icons.delete,
            ),
          ],
          dismissal: SlidableDismissal(
            child: SlidableDrawerDismissal(),
          ),
          child: ListTile(
            title: Text('$index'),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
