
import 'package:flutter/material.dart';

Widget buildImage(String image, int index) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
    ),
    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ));
