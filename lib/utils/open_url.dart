import 'package:flutter/services.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

void launchMailClient() async {
  final mailtoLink = Mailto(
    to: ['shaheerahmedghori@gmail.com'],
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  try {
    await launch('$mailtoLink');
  }
  catch(e){
    print('=----> $e');
  }
}
