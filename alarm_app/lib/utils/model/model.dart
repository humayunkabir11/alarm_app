import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings {
  final int id;
  final String ? settingNameText;
  final String ?settingTextDetails;
  final String ? subText;
  final IconData icon;


  Settings({
    required this.id,
    required this.settingNameText,
    this.settingTextDetails,
    this.subText,
    required this.icon,

  });
}

List<Settings> settingSName = [
  Settings(
      id: 1,
      settingNameText: "Notifications",
      settingTextDetails: " Notification",
      subText: "Sound and Vibration",
      icon: Icons.notification_important_sharp),
  Settings(
      id: 2,
      settingNameText: "Sound and Vibration",
      subText: "",
      icon: Icons.surround_sound_outlined),
  Settings(
      id: 3,
      settingNameText: "Alarm Type",
      settingTextDetails: " Sound and Vibration",
      subText: "Sound and Vibration",
      icon: Icons.alarm_add_rounded),
  Settings(
      id: 4,
      settingNameText: "Current Sound",
      settingTextDetails: " Sound and Vibration",
      subText: "Sound and Vibration",
      icon: Icons.music_note),

];

