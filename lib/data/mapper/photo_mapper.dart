import 'package:image_search_0706/data/dto/pixabay_result_dto.dart';
import 'package:image_search_0706/data/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id ?? 0,
      url: webformatURL ?? '',
      tags: tags ?? '',
      views: views ?? 0,
    );
  }
}