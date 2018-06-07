package apollo.react;

import graphql_js.language.Ast;


@:jsRequire("react-apollo", "parser")
extern class Parser{
    static public function parser(document:DocumentNode):Dynamic;
}