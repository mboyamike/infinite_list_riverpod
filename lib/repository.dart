import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:infinite_list/beer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

class Repository {
  Repository({required this.client});

  final http.Client client;

  static const beersPerPage = 30;

  Future<List<Beer>> fetchBeers({required int page}) async {
    final response = await client.get(
      Uri.parse(
        'https://api.punkapi.com/v2/beers?page=$page&per_page=$beersPerPage',
      ),
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Request failed with status code ${response.statusCode} - ${response.body}',
      );
    }

    final responseJson = jsonDecode(response.body) as List;

    return [
      for (final beerMap in responseJson)
        Beer.fromJson(
          Map<String, dynamic>.from(beerMap),
        ),
    ];
  }
}

@riverpod
http.Client client(ClientRef ref) {
  final client = http.Client();

  ref.onDispose(() {
    client.close();
  });

  return client;
}

@riverpod
Repository repository(RepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return Repository(client: client);
}
