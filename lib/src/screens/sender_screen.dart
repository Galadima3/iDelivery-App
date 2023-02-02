import 'package:flutter/material.dart';
import 'package:idelivery_app/src/utils/constants.dart';
import 'package:idelivery_app/src/utils/widgets.dart';

class SenderScreen extends StatefulWidget {
  const SenderScreen({super.key});

  @override
  State<SenderScreen> createState() => _SenderScreenState();
}

class _SenderScreenState extends State<SenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mode of Delivery', style: kDeliveryTextStyle),
            SizedBox(height: 5),
            Container(
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DeliveryMode(color: Colors.black),
                  DeliveryMode(color: Colors.red),
                  DeliveryMode(color: Colors.blue),
                ],
              ),
            ),
            SizedBox(height: 10),
            LocationButton(text: "Reciever's Location?"),
            SizedBox(height: 25),
            LocationButton(
              text: "Sender's Location?",
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ImageTile(imageUrl: imageTile1),
                  SizedBox(
                    width: 10,
                  ),
                  ImageTile(imageUrl: imageTile2)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
