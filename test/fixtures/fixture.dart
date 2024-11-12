import 'dart:io';

String fixture(String str) => File('test/fixtures/$str').readAsStringSync();
