import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/example_feature/presentation/pages/item_page.dart';
import '../../../features/example_feature/presentation/bloc/item_bloc.dart';
import '../../di.dart' as di;

class AppRouter {
  static const String itemsRouteName = 'items';

  static final GoRouter router = GoRouter(
    routes: [GoRoute(path: '/', name: itemsRouteName, builder: (context, state) => BlocProvider<ItemBloc>(create: (_) => di.sl<ItemBloc>(), child: const ItemPage()))],
  );
}
