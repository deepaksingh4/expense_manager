import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenuEntity {
  final int id;
  final String name;
  final String imagePath;
  final Icon icon;
  final Color iConBGColor;

  ProfileMenuEntity({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.icon,
    required this.iConBGColor
  });
}