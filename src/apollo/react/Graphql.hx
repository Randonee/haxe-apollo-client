package apollo.react;

import graphql_js.language.Ast;


@:jsRequire("react-apollo")
extern class Graphql{
    static public function graphql(document:DocumentNode, ?operationOptions:Dynamic):js.Promise<Dynamic>;
    static public function parser(document:DocumentNode):Dynamic;
}