%FillerDesc = type {ptr}
@_Bi04root0 = constant {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [1 x i64]} {i32 0, i32 1, i64 1, ptr @_bal_list_generic_get_tagged, ptr @_bal_list_generic_set_tagged, ptr @_bal_list_generic_inexact_set_tagged, ptr @_bal_list_generic_get_int, ptr @_bal_list_generic_set_int, ptr @_bal_list_generic_inexact_set_int, ptr @_bal_list_generic_get_float, ptr @_bal_list_generic_set_float, ptr @_bal_list_generic_inexact_set_float, i64 65, ptr bitcast(ptr @_bal_string_empty_filler_desc to ptr), [1 x i64] [i64 9]}
@_bal_string_empty_filler_desc = external global %FillerDesc
declare ptr addrspace(1) @_bal_list_generic_get_tagged(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_inexact_set_tagged(ptr addrspace(1), i64, ptr addrspace(1))
declare i64 @_bal_list_generic_get_int(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_int(ptr addrspace(1), i64, i64)
declare i64 @_bal_list_generic_inexact_set_int(ptr addrspace(1), i64, i64)
declare double @_bal_list_generic_get_float(ptr addrspace(1), i64)
declare i64 @_bal_list_generic_set_float(ptr addrspace(1), i64, double)
declare i64 @_bal_list_generic_inexact_set_float(ptr addrspace(1), i64, double)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
