import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

class CounterStorage {
  // get local path

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  //get local file

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  // read file

  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      return int.parse(contents);
    } catch (erro) {
      return 0;
    }
  }

  //write file

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }
}
