package apollo.client;

import apollo.cache.ApolloCache;
import apollo.link.ApolloLink;
import apollo.client.data.DataStore;
import apollo.client.core.QueryManager;
import apollo.client.core.WatchQueryOptions;

typedef ApolloClientOptions = {
  link: ApolloLink,
  cache: ApolloCache,
  ?ssrMode: Bool,
  ?ssrForceFetchDelay: Int,
  ?connectToDevTools: Bool,
  ?queryDeduplication: Bool,
  ?defaultOptions: DefaultOptions
};

typedef DefaultOptions = {
  ?watchQuery: Dynamic,
  ?query: Dynamic,
  ?mutate: Dynamic
}

@:jsRequire("apollo-client", "ApolloClient")
extern class ApolloClient{
    public var link: ApolloLink;
    public var store: DataStore;
    public var cache: ApolloCache;
    public var queryManager: QueryManager;
    public var disableNetworkFetches: Bool;
    public var version: String;
    public var queryDeduplication: Bool;
    public var defaultOptions: Dynamic;


    public function new(options:ApolloClientOptions);

    public function watchQuery(options: WatchQueryOptions):Void;
    public function query(options: WatchQueryOptions):js.Promise<Dynamic>;
    public function mutate(options: Dynamic):js.Promise<Dynamic>;
    public function readQuery(options: Dynamic):Dynamic;
    public function readFragment(options: Dynamic): Dynamic;
    public function writeQuery(options: Dynamic): Void;
    public function writeFragment(options: Dynamic): Void;
    public function writeData(options: Dynamic): Void;
    public function initQueryManager():Void;
    public function resetStore():js.Promise<Dynamic>;
    public function reFetchObservableQueries( ?includeStandby: Bool):js.Promise<Dynamic>;
    public function extract(?optimistic: Bool): Dynamic; //TCacheShape
    public function restore(serializedState:Dynamic):ApolloCache;
}
