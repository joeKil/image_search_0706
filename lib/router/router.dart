import 'package:go_router/go_router.dart';
import 'package:image_search_0706/data/repository/pixabay_photo_repository.dart';
import 'package:image_search_0706/ui/main/main_screen.dart';
import 'package:image_search_0706/ui/main/main_view_model.dart';
import 'package:provider/provider.dart';

import '../data/model/photo.dart';
import '../ui/detail/detail_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(PixabayPhotoRepositoryImple()),
          child: const MainScreen(),
        );
      },
      routes: [
        GoRoute(
          path: 'detail',
          builder: (context, state) {
            final photo = state.extra as Photo;
            return DetailScreen(photo: photo);
          },
        ),
      ],
    ),
  ],
);
