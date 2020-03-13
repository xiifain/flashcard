import 'package:flutter/material.dart';

void main() => runApp(AddDeckDialog());

class AddDeckDialog extends StatefulWidget {
  @override
  _AddDeckDialogState createState() => _AddDeckDialogState();
}

class _AddDeckDialogState extends State<AddDeckDialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(child: ShowDeck()),
      ),
    );
  }
}

class ShowDeck extends StatefulWidget {
  @override
  _ShowDeckState createState() => _ShowDeckState();
}

class _ShowDeckState extends State<ShowDeck> {

  Color colorDialog = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => {
        colorDialog == Colors.blue ?colorDialog = Colors.yellow :colorDialog = Colors.blue
      }),
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colorDialog,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}
