import 'package:flutter/material.dart';
import 'package:task6/custom_button.dart';
import 'package:task6/custom_column.dart';
import 'package:task6/logos_row.dart';
import 'package:task6/profile_image.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.more_vert)]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            children: [
              const ProfileImage(),
              const SizedBox(height: 20),
              const Text('Sathish Kumar', style: TextStyle(fontSize: 24)),
              Text(
                'UI/UX Mobile Designer',
                style: TextStyle(fontSize: 18, color: Colors.grey[500]),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  CustomColumn(title: 'Projects', des: '17'),
                  CustomColumn(title: 'Following', des: '159'),
                  CustomColumn(title: 'Followers', des: '205'),
                ],
              ),
              const SizedBox(height: 50),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed et est et velit ornare ultrices. Ut vitae diam '
                'volutpat risus eget.',
                textAlign: .center,
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 50),
              const LogosRow(),
              const SizedBox(height: 60),
              const CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
