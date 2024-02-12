import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/select_page.controller.dart';

class SelectPageScreen extends GetView<SelectPageController> {
  const SelectPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SelectPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
