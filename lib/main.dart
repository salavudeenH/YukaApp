import 'package:flutter/material.dart';
import 'package:yuka/colors.dart';
import 'package:yuka/screens/details.dart';
import 'package:yuka/screens/list.dart';
import 'package:yuka/ui/resources/resources.dart';
import 'package:yuka/widgets/appbar.dart';
import 'package:yuka/widgets/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: AppColors.accent,
          primaryColor: AppColors.primary,
          primaryColorDark: AppColors.primaryDark),
      home: DetailsScreen(barcode: '5000159484695'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OFFAppBar(
        title: 'Mes produits',
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(AppImages.icEmptyList),
            SizedBox(height: 50.0),
            Text(
              'Vous n avez encore rien scanné !',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Cliquez sur le boutons ci-dessous pour commencer'),
            SizedBox(height: 50.0),
            OFFButton(
              text: 'Scanner un produit',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsListScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
