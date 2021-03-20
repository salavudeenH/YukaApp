import 'package:flutter/material.dart';
import 'package:yuka/widgets/circle.dart';

class Nutrition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("Repères nutritionnels pour 100g",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        OFFCircleWidget(
                          color: Colors.yellow,
                          size: 30.00,
                        ),
                        SizedBox(
                          width: 20.00,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("14,2 de Matiere grasse"),
                            Text("en quantité elevé")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        OFFCircleWidget(
                          color: Colors.red,
                          size: 30.00,
                        ),
                        SizedBox(
                          width: 20.00,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("29.2 de Sucres"),
                            Text("en quantité elevé")
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          OFFCircleWidget(
                            color: Colors.yellow,
                            size: 30.00,
                          ),
                          SizedBox(
                            width: 20.00,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("0.3 de Sel"),
                              Text("en quantité elevé")
                            ],
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
