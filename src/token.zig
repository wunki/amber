pub const Token = union(enum) {
    illegal,
    eof,

    identifier: []const u8,
    intLiteral: usize,

    // Operators
    assign,
    plus,

    // Delimiters
    comma,
    semicolon,

    lparen,
    rparen,
    lbrace,
    rbrace,

    // Keywords
    function,
    let,
};
