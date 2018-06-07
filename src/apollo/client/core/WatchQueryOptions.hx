package apollo.client.core;

import graphql_js.language.Ast;

typedef FetchPolicy = Dynamic;
typedef ErrorPolicy = Dynamic;

typedef ModifiableWatchQueryOptions = {
  ?variables: Dynamic,
  ?pollInterval: Int,
  ?fetchPolicy: FetchPolicy,
  ?errorPolicy: ErrorPolicy,
  ?fetchResults: Bool,
  ?notifyOnNetworkStatusChange: Bool
}

typedef WatchQueryOptions = {>ModifiableWatchQueryOptions,
  query: DocumentNode,
  ?metadata: Dynamic,
  ?context: Dynamic
}