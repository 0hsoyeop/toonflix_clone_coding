class Webtoon {
  final String id;
  final String title;
  final String thumb;

  Webtoon.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
