/* token.h */

typedef enum
{
        ID = 256,
        NUM,
        // Keys
        ARRY,
        BOOL,
        KCHAR,
        ELSE,
        FLS,
        FOR,
        FNC,
        IF,
        INT,
        PRT,
        RTN,
        KSTR,
        TRUE,
        VOID,
        WHLE,
        // Composite Symbols
        LEQ,
        GEQ,
        EQ,
        NEQ,
        AND,
        OR,
        CHAR,
        STR,
        ERROR
} token_t;
