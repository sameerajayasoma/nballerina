declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  call void @_B_printBoolean ()
  store i8* null, i8** %_0
  ret void
}
define internal void @_B_printBoolean () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = call i8* @_bal_alloc (i64 8)
  %_3 = bitcast i8* %_2 to i64*
  store i64 1, i64* %_3, align 8
  %_4 = getelementptr i8, i8* %_2, i64 144115188075855872
  call void @_Bio__println (i8* %_4)
  store i8* null, i8** %_1
  ret void
}
