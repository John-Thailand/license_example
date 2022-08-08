import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final appname = 'アプリ名';
  final appIcon = FlutterLogo();
  final version = '1.0.0';
  final legalese = '2020 takuchalle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(Icons.info),
              title: Text('showLicensePage'),
              onTap: () {
                showLicensePage(
                  context: context,
                  applicationName: appname,
                  applicationVersion: version,
                  applicationIcon: appIcon,
                  applicationLegalese: legalese,
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('showAboutDialog'),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: appname,
                  applicationVersion: version,
                  applicationIcon: appIcon,
                  applicationLegalese: legalese,
                );
              },
            ),
            AboutListTile(
              icon: Icon(Icons.info),
              applicationName: appname,
              applicationVersion: version,
              applicationIcon: appIcon,
              applicationLegalese: legalese,
            )
          ],
        ),
      ),
    );
  }
}
