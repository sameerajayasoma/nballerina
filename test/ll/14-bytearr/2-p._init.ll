%BasicSubtype = type {ptr}
%Type0 = type {ptr, i64, [1 x {i64, i64}]}
%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]} {i32 0, i32 0, i64 0, ptr @_bal_list_byte_array_get_tagged, ptr @_bal_list_byte_array_set_tagged, ptr @_bal_list_byte_array_set_tagged, ptr @_bal_list_byte_array_get_int, ptr @_bal_list_byte_array_set_int, ptr @_bal_list_byte_array_set_int, ptr null, ptr @_bal_list_byte_array_set_float, ptr @_bal_list_byte_array_set_float, i64 ptrtoint(ptr @.member0 to i64), ptr bitcast(ptr @_bal_int_zero_filler_desc to ptr), [0 x i64] []}
@.subtype0 = internal constant %Type0 {ptr @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 0, i64 255}]}, align 8
@.member0 = internal constant {i32, i32, [1 x ptr]} {i32 0, i32 4, [1 x ptr] [ptr bitcast(ptr @.subtype0 to ptr)]}
@_bal_int_zero_filler_desc = external global %FillerDesc
declare ptr addrspace(1) @_bal_list_byte_array_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_byte_array_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_byte_array_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_byte_array_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_byte_array_set_float(ptr addrspace(1), i64, double)
declare i1 @_bal_int_subtype_contains(ptr, ptr addrspace(1))
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
