import 'package:flutter/material.dart';

void main() => runApp(ListViewExample());

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    const String APP_TITLE = 'Flutter ListView Example';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_TITLE,
      home: HomeRoute(),
    ); // MaterialApp()
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    final double screenHeight = MediaQuery.of(context).size.height;
    final double notificationPanelHeight = MediaQuery.of(context).padding.top;
    final double statusBarHeight = MediaQuery.of(context).padding.bottom;
    final double bodyHeight = screenHeight - notificationPanelHeight - statusBarHeight;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: (bodyHeight / 2) - 10,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.indigo,
                  width: 2.0,
                ), // Border.all()
              ), // BoxDecoration()
              child: ListViewContent(),
            ), // Container()
            Container(
              width: double.infinity,
              height: (bodyHeight / 2) - 10,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.indigo,
                  width: 2.0,
                ), // Border.all()
              ), // BoxDecoration()
              child: ListViewBuilderContent(),
            ), // Container()
          ], // List<Widget>[]
        ), // Column()
      ), // SafeArea()
    ); // Scaffold()
  }
}

class ListViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    final double _listViewItemHeight = MediaQuery.of(context).size.height / 5;

    return ListView(
      children: <Widget>[
        Container(
          height: _listViewItemHeight,
          color: Colors.amber,
          child: Text(
            'ListView Item 1',
            textAlign: TextAlign.center,
          ), // Text()
        ), // Container()
        Container(
          height: _listViewItemHeight,
          color: Colors.lightGreen,
          child: Text(
            'ListView Item 2',
            textAlign: TextAlign.center,
          ), // Text()
        ), // Container()
        Container(
          height: _listViewItemHeight,
          color: Colors.lightBlue,
          child: Text(
            'ListView Item 3',
            textAlign: TextAlign.center,
          ), // Text()
        ), // Container()
      ], // List<Widget>[]
    ); // ListView()
  }
}

class ListViewBuilderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return Container(
          height: 30.0,
          margin: const EdgeInsets.all(2.0),
          padding: const EdgeInsets.all(2.0),
          color: Colors.indigo,
          child: Text(
            'ListView.builder Item ${index + 1}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ), // TextStyle()
          ), // Text()
        ); // Container()
      }, // itemBuilder: (context, index) {}
    ); // ListView.builder()
  }
}
