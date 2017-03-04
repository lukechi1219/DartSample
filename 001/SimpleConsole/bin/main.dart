import 'dart:math';
import 'dart:async';

// import 'package:SimpleConsole/';

main(List<String> args) {
//  print('Hello world!');

  print('1');
  Stream<String> stringStream = reportSream(flybyObjects);

  print('2');
  stringStream.listen(print);

  print('3');
  report().then(print);

  print('4');
}

Future<String> report() async {
  await new Future.delayed(const Duration(seconds: 1));
  return 'delay 1 sec';
}

Stream<String> reportSream(Iterable<String> objects) async* {
  for (var object in objects) {
    await new Future.delayed(const Duration(seconds: 1));
    yield 'fly by $object';
  }
}

var name = 'V 1';
var year = 1977;
var diameter = 3.7;
var flybyObjects = ['J','S','U','N'];
var image = {
  'tags': ['s'],
  'url': '//path'
};

final immutable = 'final';
const constVar = 'constant';
