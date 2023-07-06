import 'package:image_search_0706/data/api/pixabay_api.dart';
import 'package:image_search_0706/data/mapper/photo_mapper.dart';
import 'package:image_search_0706/data/repository/photo_repository.dart';

class PixabayPhotoRepositoryImple implements PhotoRepository {
  final _api = PixabayApi();

  Future<List<Photo>> getPhotos(String query) async {
    final resultDto = await _api.getImage(query);

    if (resultDto.hits == null) {
      return [];
    }

    return resultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}