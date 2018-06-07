package apollo.client.data;

import apollo.cache.ApolloCache;
import graphql_js.GraphQl;
import graphql_js.language.Ast;

extern class DataStore{
    public function new(initialCache: ApolloCache);
    public function getCache(): ApolloCache;
    public function markQueryResult(result: ExecutionResult, document: DocumentNode, variables: Dynamic, fetchMoreForQueryId:String, ?ignoreErrors:Bool):Void;
    public function markSubscriptionResult(result: ExecutionResult, document: DocumentNode, variables: Dynamic):Void;

    public function reset(): js.Promise<Dynamic>;

}
