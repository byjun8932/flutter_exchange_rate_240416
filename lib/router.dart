import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => SearchListViewModel(
              subwayRepository: SubwayRepositoryImpl(
                  subWayDataSource: SubWayDataSource()
              )
          ),
          child: const SearchMain(),
        );
      },
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        final List<Subway> resultList = state.extra as List<Subway>;
        return ResultMain(subwayList: resultList,);
      },
    ),
  ],
);