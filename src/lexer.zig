const std = @import("std");

const Token = @import("token.zig").Token;

const Lexer = struct {
    input: []const u8,
    position: usize, // current position for the input
    readPosition: usize, // current reading position
    ch: u8, // current char being examined

    // Returns a new Lexer, to start going through the supplied
    // input.
    fn new(input: []const u8) Token {
        return .{
            .input = input,
        };
    }
};

test "testing the next token" {
    const expect = std.testing.expect;
    _ = "=+(){}.;";

    const TestCase = struct {
        expectedToken: Token,
        expectedLiteral: []const u8,
    };

    var testCases = [_]TestCase{
        .{ .expectedToken = Token.assign, .expectedLiteral = "=" },
        .{ .expectedToken = Token.plus, .expectedLiteral = "+" },
        .{ .expectedToken = Token.lparen, .expectedLiteral = "(" },
    };

    for (testCases) |case| {
        const actual = "=";
        try expect(std.mem.eql(u8, actual, case.expectedLiteral));
    }
}
