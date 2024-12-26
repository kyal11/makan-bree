import 'package:flutter/material.dart';

class CardRestaurant extends StatelessWidget {
  const CardRestaurant(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});
  final String imagePath;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        imagePath,
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                )),
            Flexible(
              flex: 2,
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text(description,
                              maxLines: 2, overflow: TextOverflow.ellipsis),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      );
  }
}
