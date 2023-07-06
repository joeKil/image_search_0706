import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_0706/data/api/pixabay_api.dart';

void main() {
  test('pixabay api test', () async {
    final api = PixabayApi();

    final dto = await api.getImage('apple');

    expect(dto.total, 10650);
  });
}