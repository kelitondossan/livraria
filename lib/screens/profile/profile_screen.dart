import 'package:flutter/material.dart';
import 'package:livraria/screens/profile/sections/bio_section.dart';
import 'package:livraria/widgets/keep_reading_section.dart';
import 'package:livraria/screens/profile/sections/level_progress_section.dart';
import 'package:livraria/screens/profile/sections/statis_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Score ",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              BioSection(),
              SizedBox(height: 16.0),
              LevelProgressSection(),
              SizedBox(height: 16.0),
              StatisSection(),
              SizedBox(height: 16.0),
              KeepReadingSection(),
            ],
          ),
        ),
      ),
    );
  }
}
