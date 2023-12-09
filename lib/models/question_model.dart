class Question{
  final String id;
  final String title;
  final Map<String, bool> options;

  Question({
    required this.id,
    required this.options,
    required this.title,
  });

  @override
  String toString() {
    return 'Question(id: $id, options: $options, title: $title)';
  }


}