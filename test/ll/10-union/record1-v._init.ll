@_Bi04root0 = constant {i32, i32, i64, [2 x i64]} {i32 0, i32 2, i64 1, [2 x i64] [i64 2305, i64 2305]}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}