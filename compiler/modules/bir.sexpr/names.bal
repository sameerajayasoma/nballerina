final readonly & map<string> INSN_NAMES_BIR_SEXPR = {
    "INSN_ABNORMAL_RET"                   : "abnormal-ret",
    "INSN_CATCH"                          : "catch",
    "INSN_CONVERT_TO_DECIMAL"             : "convert-to-decimal",
    "INSN_CONVERT_TO_FLOAT"               : "convert-to-float",
    "INSN_CONVERT_TO_INT"                 : "convert-to-int",
    "INSN_DECIMAL_NEGATE"                 : "decimal-negate",
    "INSN_ERROR_CONSTRUCT"                : "error-construct",
    "INSN_FLOAT_NEGATE"                   : "float-negate",
    "INSN_LIST_SET"                       : "list-set",
    "INSN_MAPPING_FILLING_GET"            : "mapping-filling-get",
    "INSN_MAPPING_GET"                    : "mapping-get",
    "INSN_MAPPING_SET"                    : "mapping-set",
    "INSN_PANIC"                          : "panic",
    "INSN_RET"                            : "ret",
    "INSN_STR_CONCAT"                     : "str-concat",
     // hand picked
    "INSN_ASSIGN"                         : "set",
    "INSN_BOOLEAN_NOT"                    : "boolean!",
    "INSN_COMPARE<"                       : "less-than",
    "INSN_COMPARE<="                      : "less-than-or-equal",
    "INSN_COMPARE>"                       : "greater-than",
    "INSN_COMPARE>="                      : "greater-than-or-equal",
    "INSN_DECIMAL_ARITHMETIC_BINARY%"     : "decimal%",
    "INSN_DECIMAL_ARITHMETIC_BINARY*"     : "decimal*",
    "INSN_DECIMAL_ARITHMETIC_BINARY+"     : "decimal+",
    "INSN_DECIMAL_ARITHMETIC_BINARY-"     : "decimal-",
    "INSN_DECIMAL_ARITHMETIC_BINARY/"     : "decimal/",
    "INSN_EQUALITY!="                     : "not-equal",
    "INSN_EQUALITY!=="                    : "not-exact-equal",
    "INSN_EQUALITY=="                     : "equal",
    "INSN_EQUALITY==="                    : "exact-equal",
    "INSN_FLOAT_ARITHMETIC_BINARY%"       : "float%",
    "INSN_FLOAT_ARITHMETIC_BINARY*"       : "float*",
    "INSN_FLOAT_ARITHMETIC_BINARY+"       : "float+",
    "INSN_FLOAT_ARITHMETIC_BINARY-"       : "float-",
    "INSN_FLOAT_ARITHMETIC_BINARY/"       : "float/",
    "INSN_INT_ARITHMETIC_BINARY%"         : "int%",
    "INSN_INT_ARITHMETIC_BINARY*"         : "int*",
    "INSN_INT_ARITHMETIC_BINARY+"         : "int+",
    "INSN_INT_ARITHMETIC_BINARY-"         : "int-",
    "INSN_INT_ARITHMETIC_BINARY/"         : "int/",
    "INSN_INT_BITWISE_BINARY&"            : "int&",
    "INSN_INT_BITWISE_BINARY<<"           : "int<<",
    "INSN_INT_BITWISE_BINARY>>"           : "int>>",
    "INSN_INT_BITWISE_BINARY>>>"          : "int>>>",
    "INSN_INT_BITWISE_BINARY^"            : "int^",
    "INSN_INT_BITWISE_BINARY|"            : "int|",
    "INSN_INT_NO_PANIC_ARITHMETIC_BINARY%": "no-panic-int%",
    "INSN_INT_NO_PANIC_ARITHMETIC_BINARY*": "no-panic-int*",
    "INSN_INT_NO_PANIC_ARITHMETIC_BINARY+": "no-panic-int+",
    "INSN_INT_NO_PANIC_ARITHMETIC_BINARY-": "no-panic-int-",
    "INSN_INT_NO_PANIC_ARITHMETIC_BINARY/": "no-panic-int/",
    "INSN_LIST_CONSTRUCT_RW"              : "list-construct"
};

function fromInsnNameOp(string insnName, string? op) returns string {
    return INSN_NAMES_BIR_SEXPR.get(op == () ? insnName : insnName + op);
}
