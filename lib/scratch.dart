import 'dart:io';
import 'package:flutter/foundation.dart';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String? task2result = await task2();
  task3(task2result);
}

void task1(){
  String result = 'task 1 data';
    debugPrint('Task 1 complete');
}

Future<String?> task2() async {
  String? result;
  Duration threesecs = const Duration(seconds: 3);
  await Future.delayed(threesecs, () {
    result = 'task 2 data';
    debugPrint('Task 2 complete');
  });
  return result;
}

void task3(String? test2data){
  String result = 'task 3 data';
    debugPrint('Task 3 complete with $test2data');
}