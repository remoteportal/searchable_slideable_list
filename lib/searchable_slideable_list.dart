library searchable_slideable_list;

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pull_to_reveal/pull_to_reveal.dart';

class SearchableSlideableList extends StatefulWidget {
  SearchableSlideableList({this.list});

  List<ListTile> list;

  @override
  _SearchableSlideableListState createState() =>
      _SearchableSlideableListState();
}

class _SearchableSlideableListState extends State<SearchableSlideableList> {
  String _filter;
  TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PullToRevealTopItemList(
          dividerBuilder: (BuildContext context) {
            return Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text('Items', style: Theme.of(context).textTheme.headline),
            );
          },
          itemCount: widget.list.length,
          revealableHeight: 50,
          itemBuilder: (context, index) {
//          if (_filter != null && !items[index].contains(_filter)) {
//            return Container();
//          }

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
                  //HERE
//                title: Text('$index'),
                  title: widget.list[index]),
            );
          },
          revealableBuilder: (BuildContext context, RevealableToggler opener,
              RevealableToggler closer, BoxConstraints constraints) {
            return Row(
              key: Key('scrollable-row'),
              children: <Widget>[
                SizedBox(width: 10),
                Flexible(
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search,
                          color: Theme.of(context).backgroundColor),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    // Handles closing the `Revealable`
                    closer(completer: RevealableCompleter.snap);
                    // Removes any filtering effects
                    searchController.text = '';
                    setState(() {
                      _filter = null;
                    });
                  },
                )
              ],
            );
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    searchController = TextEditingController();
    searchController.addListener(_onSearch);
    super.initState();
  }

  void _onSearch() {
    setState(() {
      _filter = searchController.text;
    });
  }
}
