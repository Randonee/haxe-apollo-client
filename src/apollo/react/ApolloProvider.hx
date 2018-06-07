package apollo.react;


typedef ApolloProviderProps = {
    client: ApolloClient,
    children: Dynamic
}

@:jsRequire("react-apollo", "ApolloProvider")
extern class ApolloProvider{
    public function new(props: ApolloProviderProps, context: Dynamic);

    public function getChildContext():Dynamic;
    public function render():Void;
}