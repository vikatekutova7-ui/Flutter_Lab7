import 'package:flutter/material.dart';
import 'package:slot_machine/slot_machine.dart';
import 'package:slot_machine/sound_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SoundService.init();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SlotMachine(),
      ),
    ),
  );
}