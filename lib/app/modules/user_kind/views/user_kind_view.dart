import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_kind_controller.dart';

class UserKindView extends GetView<UserKindController> {
  const UserKindView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserKindView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UserKindView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
