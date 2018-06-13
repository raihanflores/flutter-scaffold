import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPressed() {
    print('Search tapped');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: new Text('Fancy Day'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint('Send tapped')),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onPressed)
        ],
      ),
      backgroundColor: Colors.grey.shade400,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Bonni',
              style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepOrange),
            ),
            new InkWell(
              child: new Text('Button'),
              onTap: () => debugPrint('Button tapped'),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.redAccent,
        tooltip: 'Going Up!',
        child: new Icon(Icons.call_missed),
        onPressed: () => debugPrint('Pressed'),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            title: new Text('Hey!'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.print),
            title: new Text('Prnt!'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.call_missed),
            title: new Text('call_missed!'),
          )
        ],
        onTap: (int i) => debugPrint('Tapped $i'),
      ),
    );
  }
}
