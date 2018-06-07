package apollo.link;

import graphql_js.language.Ast;
import graphql_js.GraphQl;


@:jsRequire("apollo-link", "ApolloLink")
extern class ApolloLink{
    public function new(?request: RequestHandler);
}

typedef GraphQLRequest = {
    query: DocumentNode,
    ?variables: Dynamic,
    ?operationName:String,
    ?context: Dynamic,
    ?extensions:Dynamic
}

typedef Operation = {
    query: DocumentNode,
    variables: Dynamic,
    operationName: String,
    extensions: Dynamic,
    setContext: Dynamic->Dynamic,
    getContext: Void->Dynamic,
    toKey: Void->String
}

typedef NextLink = Operation->Dynamic;

typedef RequestHandler = Operation->NextLink->ExecutionResult;