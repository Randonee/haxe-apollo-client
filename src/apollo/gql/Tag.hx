package apollo.gql;

import graphql_js.language.Ast;

class Tag{

    static public function gql(graphql:String):DocumentNode{
        var parser = new graphql.parser.Parser(graphql, { noLocation:true });
        return {kind:"Document", definitions:parser.document.definitions};
    }
}