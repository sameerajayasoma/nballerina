%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
%Type0 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}
%Type1 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
@.subtype0 = internal constant %Type0 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype1 = internal constant %Type1 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 0]}, align 8
@.member0 = internal constant {i32, i32, [2 x %UniformSubtype*]} {i32 2099107, i32 786432, [2 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type0* @.subtype0 to %UniformSubtype*), %UniformSubtype* bitcast(%Type1* @.subtype1 to %UniformSubtype*)]}
@_Bi04root0 = constant {i32, i32, i64, [3 x i64]} {i32 0, i32 3, i64 ptrtoint({i32, i32, [2 x %UniformSubtype*]}* @.member0 to i64), [3 x i64] [i64 257, i64 257, i64 259]}
declare i1 @_bal_precomputed_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
