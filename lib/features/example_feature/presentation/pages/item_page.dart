import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/item_bloc.dart';
import '../bloc/item_event.dart';
import '../bloc/item_state.dart';
import '../../../example_feature/domain/entities/item_entity.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocProvider.of<ItemBloc>(context)..add(ItemRequested()),
      child: Scaffold(
        appBar: AppBar(title: Text('Item Page')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Item Page Example',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // Example: How to use context.go for navigation
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Example usage: context.go('/some-other-route');
                  // Replace '/some-other-route' with your actual route path.
                  // context.go('/some-other-route');
                },
                child: const Text('Navigate Example (see code)'),
              ),
            ),
            Expanded(
              child: BlocBuilder<ItemBloc, ItemState>(
                builder: (context, state) {
                  if (state is ItemLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is ItemLoaded) {
                    return ListView.builder(
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        final ItemEntity item = state.items[index];
                        return ListTile(
                          title: Text(item.name),
                          subtitle: Text(item.description),
                        );
                      },
                    );
                  } else if (state is ItemError) {
                    return Center(child: Text(state.message));
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
