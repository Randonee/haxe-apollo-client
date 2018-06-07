package apollo.cache;

import graphql_js.language.Ast;

@:jsRequire("apollo-cache", "ApolloCache")
extern class ApolloCache{
    public function read(query: Dynamic): Dynamic;
    public function write(write: Dynamic): Void;
    public function diff(query: Dynamic): Dynamic;
    public function watch(watch: Dynamic): Void->Void;
    public function evict(query: Dynamic): Dynamic;
    public function reset(): js.Promise<Dynamic>;
    public function restore(serializedState: Dynamic):Dynamic;
    public function extract(?optimistic: Bool): Dynamic;
    public function removeOptimistic(id: String): Void;
    public function performTransaction(transaction: Dynamic): Void;
    public function recordOptimisticTransaction(transaction: Dynamic, id: String): Void;
    public function transformDocument(document: DocumentNode): DocumentNode;
    public function transformForLink(document: DocumentNode): DocumentNode;
    public function readQuery(options:Dynamic, ?optimistic:Bool):Dynamic;
    public function readFragment(options:Dynamic, ?optimistic:Bool):Dynamic;
    public function writeQuery(options: Dynamic): Void;
    public function writeFragment(options: Dynamic): Void;
    public function writeData(data:Dynamic): Void;
}