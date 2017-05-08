Lox Grammar
=========

## Chapters 1 - 5

```ebnf
expression → literal
           → unary
           → binary
           → grouping

literal    → NUMBER | STRING | "true" | "false" | "nil"
grouping   → "(" expression ")"
unary      → ( "-" | "!" ) expression
binary     → expression operator expression
operator   → "==" | "!=" | "<" | "<=" | ">" | ">="
           | "+"  | "-"  | "*" | "/"

```

## Chapter 6

```ebnf
expression → equality
equality   → comparison ( ( "!=" | "==" ) comparison )*
comparison → term ( ( ">" | ">=" | "<" | "<=" ) term )*
term       → factor ( ( "-" | "+" ) factor )*
factor     → unary ( ( "/" | "*" ) unary )*
unary      → ( "!" | "-" ) unary
           | primary
primary    → NUMBER | STRING | "false" | "true" | "nil"
           | "(" expression ")"

```