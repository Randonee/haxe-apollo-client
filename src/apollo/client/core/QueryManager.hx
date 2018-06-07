package apollo.client.core;

import apollo.client.core.WatchQueryOptions;
import apollo.link.ApolloLink;
import apollo.client.data.DataStore;

extern class QueryManager{
    public function new(options:{link:ApolloLink, ?queryDeduplication:Bool, store:DataStore, onBroadcast:Void->Dynamic, ?ssrMode:Bool});
    public function mutate(options:Dynamic):js.Promise<Dynamic>;
    public function fetchQuery(queryId:String, options:WatchQueryOptions, ?fetchType:Dynamic, ?fetchMoreForQueryId:String):js.Promise<Dynamic>;
    public function queryListenerForObserver(queryId:String, options:WatchQueryOptions, observer:Dynamic):Dynamic; //QueryListener;

    public function watchQuery(options: WatchQueryOptions, ?shouldSubscribe:Bool):ObservableQuery;
    public function query(options: WatchQueryOptions):js.Promise<Dynamic>;
}