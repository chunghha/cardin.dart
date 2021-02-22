import 'package:flutter/material.dart';
import 'package:cardin/cardin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var theme = cardinTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardin Example',
      theme: theme,
      home: MyHomePage(
          themeChanged: (themeName) => setState(() {
                if (themeName == 'Cardin') {
                  theme = cardinTheme;
                } else if (themeName == 'Cardin-light') {
                  theme = cardinLightTheme;
                } else if (themeName == 'Cardin-dark') {
                  theme = cardinDarkTheme;
                }
              })),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.themeChanged}) : super(key: key);

  final void Function(String themeName) themeChanged;

  @override
  _MyHomePageState createState() => _MyHomePageState(themeChanged);
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController(
      text:
          'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.');
  var themeName = 'Cardin';
  final void Function(String themeName) themeChanged;

  _MyHomePageState(this.themeChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(themeName),
        leading: PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                themeName = value;
                themeChanged(themeName);
              });
            },
            itemBuilder: (context) => <PopupMenuItem<String>>[
                  PopupMenuItem(value: 'Cardin', child: Text('Standard')),
                  PopupMenuItem(value: 'Cardin-light', child: Text('Light')),
                  PopupMenuItem(value: 'Cardin-dark', child: Text('Dark')),
                ]),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Text(
              'headline1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'headline2',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'headline3',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'headline4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'headline5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'headline6',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'subtitle1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'subtitle2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'bodyText1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'bodyText2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'caption',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              'button',
              style: Theme.of(context).textTheme.button,
            ),
            Text(
              'overline',
              style: Theme.of(context).textTheme.overline,
            ),
            Row(children: <Widget>[
              TextButton(
                onPressed: () => print('TextButton'),
                child: const Text('Click me!'),
              ),
              SizedBox(width: 15),
              TextButton(
                onPressed: null,
                child: const Text("Can't click me!"),
              ),
            ]),
            Row(children: <Widget>[
              OutlinedButton(
                onPressed: () => print('OutlinedButton'),
                child: const Text('Click me!'),
              ),
              SizedBox(width: 15),
              OutlinedButton(
                onPressed: null,
                child: const Text("Can't click me!"),
              ),
            ]),
            Row(children: <Widget>[
              ElevatedButton(
                onPressed: () => print('RaisedButton'),
                child: const Text('Click me!'),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                onPressed: null,
                child: const Text("Can't click me!"),
              ),
            ]),
            Row(
              children: <Widget>[
                DropdownButton<int>(
                  onChanged: (value) => print('DropdownButton ${value}'),
                  value: 1,
                  items: <DropdownMenuItem<int>>[
                    DropdownMenuItem(value: 1, child: Text('One')),
                    DropdownMenuItem(value: 2, child: Text('Two')),
                    DropdownMenuItem(value: 3, child: Text('Three')),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(onChanged: (value) {}, value: true),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(onChanged: (value) {}, value: false),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(onChanged: null, value: true),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Switch(onChanged: (value) {}, value: true),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(onChanged: (value) {}, value: false),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(onChanged: null, value: true),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(onChanged: (value) {}, value: 1, groupValue: 1),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(onChanged: (value) {}, value: 2, groupValue: 1),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(onChanged: null, value: 3, groupValue: 1),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                errorText: "You're doing it wrong",
              ),
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.multiline,
              controller: textController,
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinBlue,
              child: Center(
                  child: Text('cardinBlue',
                      style: TextStyle(
                          color: cardinBlack,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinRed,
              child: Center(
                  child: Text('cardinRed',
                      style: TextStyle(
                          color: cardinWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinGreen,
              child: Center(
                  child: Text('cardinGreen',
                      style: TextStyle(
                          color: cardinBlack,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinMagenta,
              child: Center(
                  child: Text('cardinMagenta',
                      style: TextStyle(
                          color: cardinWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinCyan,
              child: Center(
                  child: Text('cardinCyan',
                      style: TextStyle(
                          color: cardinWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinYellow,
              child: Center(
                  child: Text('cardinYellow',
                      style: TextStyle(
                          color: cardinBlack,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinWhite,
              child: Center(
                  child: Text('cardinWhite',
                      style: TextStyle(
                          color: cardinBlack,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: cardinBlack,
              child: Center(
                  child: Text('cardinBlack',
                      style: TextStyle(
                          color: cardinWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'This button does nothing',
        child: Icon(Icons.add),
      ),
    );
  }
}
