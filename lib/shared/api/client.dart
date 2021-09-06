import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Api {
  static const graphQLEndPoint = 'https:/yoursite.co.tz/graphql';

  Future<ValueNotifier<GraphQLClient>> graphQLClient() async {
    final box = GetStorage();
    String? _token = box.read("token");
    await initHiveForFlutter();

    final HttpLink _httpLink = HttpLink(
      graphQLEndPoint,
    );

    final AuthLink _authLink = AuthLink(
      getToken: () async => 'Bearer $_token',
    );

    final Link _link = _authLink.concat(_httpLink);

    ValueNotifier<GraphQLClient> _client = ValueNotifier(
      GraphQLClient(
        link: _link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      ),
    );
    return _client;
  }
}
