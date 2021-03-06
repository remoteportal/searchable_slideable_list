import 'package:flutter/material.dart';
import 'package:searchable_slideable_list/searchable_slideable_list.dart';
import 'package:substring_highlight/substring_highlight.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Searchable Slidable List Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<SearchableListTile> list = names.map((String s) {
      return SearchableListTile(
//          buildHighlight: (String term) {
//            return ListTile(
//                title: SubstringHighlight(term: term, text: "($s)"));
////            return SubstringHighlight(term: term, text: s);
//          },
//          buildNolight: () {
//            return ListTile(title: Text('$s'));
////            return Text('$s');
//          },

          buildHighlightTile: (String term) {
            return SubstringHighlight(term: term, text: "($s)");
//            return SubstringHighlight(term: term, text: s);
          },
          buildNolightTile: () {
            return Text('$s');
//            return Text('$s');
          },
          text: s);

      // entire clickable
//      return SearchableListTile(
//          buildHighlight: (String term) {
//            return GestureDetector(
//                child:
//                    ListTile(title: SubstringHighlight(term: term, text: s)));
////            return SubstringHighlight(term: term, text: s);
//          },
//          buildNolight: () {
//            return ListTile(title: Text('$s'));
////            return Text('$s');
//          },
//          text: s);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Searchable Slidable List Demo'),
      ),
      body: SearchableSlideableList(list: list),
    );
  }
}

const List<String> names = [
  "michael",
  "james",
  "john",
  "robert",
  "david",
  "william",
  "mary",
  "christopher",
  "joseph",
  "richard",
  "daniel",
  "thomas",
  "matthew",
  "jennifer",
  "charles",
  "anthony",
  "patricia",
  "linda",
  "mark",
  "elizabeth",
  "joshua",
  "steven",
  "andrew",
  "kevin",
  "brian",
  "barbara",
  "jessica",
  "jason",
  "susan",
  "timothy",
  "paul",
  "kenneth",
  "lisa",
  "ryan",
  "sarah",
  "karen",
  "jeffrey",
  "donald",
  "ashley",
  "eric",
  "jacob",
  "nicholas",
  "jonathan",
  "ronald",
  "michelle",
  "kimberly",
  "nancy",
  "justin",
  "sandra",
  "amanda",
  "brandon",
  "stephanie",
  "emily",
  "melissa",
  "gary",
  "edward",
  "stephen",
  "scott",
  "george",
  "donna",
  "jose",
  "rebecca",
  "deborah",
  "laura",
  "cynthia",
  "carol",
  "amy",
  "margaret",
  "gregory",
  "sharon",
  "larry",
  "angela",
  "maria",
  "alexander",
  "benjamin",
  "nicole",
  "kathleen",
  "patrick",
  "samantha",
  "tyler",
  "samuel",
  "betty",
  "brenda",
  "pamela",
  "aaron",
  "kelly",
  "heather",
  "rachel",
  "adam",
  "christine",
  "zachary",
  "debra",
  "katherine",
  "dennis",
  "nathan",
  "christina",
  "julie",
  "jordan",
  "kyle",
  "anna",
];

//const List<String> names = [
//  "Michael",
//  "James",
//  "John",
//  "Robert",
//  "David",
//  "William",
//  "Mary",
//  "Christopher",
//  "Joseph",
//  "Richard",
//  "Daniel",
//  "Thomas",
//  "Matthew",
//  "Jennifer",
//  "Charles",
//  "Anthony",
//  "Patricia",
//  "Linda",
//  "Mark",
//  "Elizabeth",
//  "Joshua",
//  "Steven",
//  "Andrew",
//  "Kevin",
//  "Brian",
//  "Barbara",
//  "Jessica",
//  "Jason",
//  "Susan",
//  "Timothy",
//  "Paul",
//  "Kenneth",
//  "Lisa",
//  "Ryan",
//  "Sarah",
//  "Karen",
//  "Jeffrey",
//  "Donald",
//  "Ashley",
//  "Eric",
//  "Jacob",
//  "Nicholas",
//  "Jonathan",
//  "Ronald",
//  "Michelle",
//  "Kimberly",
//  "Nancy",
//  "Justin",
//  "Sandra",
//  "Amanda",
//  "Brandon",
//  "Stephanie",
//  "Emily",
//  "Melissa",
//  "Gary",
//  "Edward",
//  "Stephen",
//  "Scott",
//  "George",
//  "Donna",
//  "Jose",
//  "Rebecca",
//  "Deborah",
//  "Laura",
//  "Cynthia",
//  "Carol",
//  "Amy",
//  "Margaret",
//  "Gregory",
//  "Sharon",
//  "Larry",
//  "Angela",
//  "Maria",
//  "Alexander",
//  "Benjamin",
//  "Nicole",
//  "Kathleen",
//  "Patrick",
//  "Samantha",
//  "Tyler",
//  "Samuel",
//  "Betty",
//  "Brenda",
//  "Pamela",
//  "Aaron",
//  "Kelly",
//  "Heather",
//  "Rachel",
//  "Adam",
//  "Christine",
//  "Zachary",
//  "Debra",
//  "Katherine",
//  "Dennis",
//  "Nathan",
//  "Christina",
//  "Julie",
//  "Jordan",
//  "Kyle",
//  "Anna",
//];
