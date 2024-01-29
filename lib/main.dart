// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_list/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shimmer/shimmer.dart';

import 'beer.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Infinite Scrolling example',
      home: Home(),
    );
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scrolling'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final beerAsync = ref.watch(beerProvider(index));
          return switch (beerAsync) {
            AsyncData(value: final beer?) => BeerTile(beer: beer),
            AsyncData(value: null) => null,
            AsyncError(:final error) => Text('error: $error'),
            _ => const BeerTileShimmer(),
          };
        },
      ),
    );
  }
}

class BeerTile extends StatelessWidget {
  const BeerTile({super.key, required this.beer});

  final Beer beer;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(beer.name),
      subtitle: Text(beer.tagline),
    );
  }
}

class BeerTileShimmer extends StatelessWidget {
  const BeerTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade300,
      child: ListTile(
        leading: Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          width: 48,
          height: 48,
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.all(2),
            color: Colors.grey,
            width: 80,
            height: 24,
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.all(2),
            color: Colors.grey,
            width: 250,
            height: 24,
          ),
        ),
      ),
    );
  }
}

@riverpod
Future<List<Beer>> beers(BeersRef ref, {required int page}) async {
  return ref.watch(repositoryProvider).fetchBeers(page: page);
}

@riverpod
Future<Beer?> beer(BeerRef ref, int index) async {
  final page = (index ~/ Repository.beersPerPage) + 1;
  final indexInPage = index % Repository.beersPerPage;
  final beers = await ref.watch(beersProvider(page: page).future);

  return beers.elementAtOrNull(indexInPage);
}
