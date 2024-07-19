

class JsonPhoto
{
  late String title;
  late String url;

  JsonPhoto({required this.title,required this.url});

  factory JsonPhoto.fromMap(Map m1)
  {
    return JsonPhoto(title: m1['title'], url: m1['url']);
  }

}