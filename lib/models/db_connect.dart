import 'package:http/http.dart' as http;
import 'package:quiz_app/models/question_model.dart';
import 'dart:convert';

class DBconnect {
  final url = Uri.parse(
      'https://simplequizapp-bcbed-default-rtdb.firebaseio.com/');
  Future<void> addQuestion(Question question) async {
    http.post(url, body: json.encode({
      'title': question.title,
      'options': question.options,
    }));
  
  
  }

  Future<void> fetxhQuestions() async {
    http.get(url).then((response) {
      var data = json.decode(response.body);
      print(data);
    });
  }
}
