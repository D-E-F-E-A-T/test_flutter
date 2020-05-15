import 'dart:io' show Platform;
import 'package:base/ui/android/pages/index.dart';
import 'package:base/ui/ios/pages/index.dart';
import 'package:flutter/cupertino.dart';

void main() => Platform.isIOS ? runApp(IndexIOS()) : runApp(IndexAndroid());