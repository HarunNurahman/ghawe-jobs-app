import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/pages/saved_jobs/saved_jobs_controller.dart';

class ProfileScreen extends GetView<SavedJobsController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}
