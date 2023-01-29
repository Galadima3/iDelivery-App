import 'package:flutter/material.dart';
import 'package:idelivery_app/src/utils/constants.dart';

Widget pseudoAppBar() => Expanded(
      child: Container(
        height: 50,
        child: Row(
          children: [
            Column(
              children: [
                Text('Hello Glory!'),
                Text('How may we help you today?')
              ],
            ),
            CircleAvatar(
              child: Image.network(profilePictureLink),
            )
          ],
        ),
      ),
    );


