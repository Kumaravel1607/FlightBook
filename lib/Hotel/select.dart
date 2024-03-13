import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';
//import 'package:scrollable_list_tab_scroller/scrollable_list_tab_scroller.dart';
//import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

class SelectHotel extends StatefulWidget {
  SelectHotel({Key? key}) : super(key: key);

  @override
  State<SelectHotel> createState() => _SelectHotelState();
}

class _SelectHotelState extends State<SelectHotel>
    with SingleTickerProviderStateMixin {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: ScrollableListTabView(
        tabHeight: 48,
        bodyAnimationDuration: const Duration(milliseconds: 150),
        tabAnimationCurve: Curves.easeOut,
        tabAnimationDuration: const Duration(milliseconds: 200),
        tabs: [
          ScrollableListTab(
              tab: ListTab(
                  label: Text('Vegetables'),
                  icon: Icon(Icons.group),
                  showIconOnList: false),
              body: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    alignment: Alignment.center,
                    child: Text(index.toString()),
                  ),
                  title: Text('Vegetables element $index'),
                ),
              )),
          ScrollableListTab(
              tab: ListTab(label: Text('Fruits'), icon: Icon(Icons.add)),
              body: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    alignment: Alignment.center,
                    child: Text(index.toString()),
                  ),
                  title: Text('Fruits element $index'),
                ),
              )),
          ScrollableListTab(
              tab: ListTab(label: Text('Meat'), icon: Icon(Icons.group)),
              body: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    alignment: Alignment.center,
                    child: Text(index.toString()),
                  ),
                  title: Text('Meat element $index'),
                ),
              )),
          ScrollableListTab(
              tab: ListTab(
                  label: Text('Herbs&Spices'), icon: Icon(Icons.subject)),
              body: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => Card(
                  child: Center(child: Text('Herbs&Spices element $index')),
                ),
              )),
          ScrollableListTab(
              tab: ListTab(
                  label: Text('Egg'),
                  icon: Icon(Icons.subject),
                  showIconOnList: true),
              body: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => Card(
                  child: Center(child: Text('Egg element $index')),
                ),
              )),
        ],
      ),
    );
  }
}
