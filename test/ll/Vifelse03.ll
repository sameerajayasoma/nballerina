declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  call void @_B_printBranch (i1 1, i1 1)
  store i8* null, i8** %_0
  call void @_B_printBranch (i1 1, i1 0)
  store i8* null, i8** %_1
  call void @_B_printBranch (i1 0, i1 1)
  store i8* null, i8** %_2
  call void @_B_printBranch (i1 0, i1 0)
  store i8* null, i8** %_3
  ret void
}
define internal void @_B_printBranch (i1 %_0, i1 %_1) {
  %x = alloca i1
  %y = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8*
  store i1 %_0, i1* %x
  store i1 %_1, i1* %y
  %_6 = load i1, i1* %x
  br i1 %_6, label %L1, label %L5
L1:
  %_7 = load i1, i1* %y
  br i1 %_7, label %L2, label %L3
L2:
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 0, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 144115188075855872
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_2
  br label %L4
L3:
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 1, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 144115188075855872
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_3
  br label %L4
L4:
  br label %L9
L5:
  %_14 = load i1, i1* %y
  br i1 %_14, label %L6, label %L7
L6:
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 2, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 144115188075855872
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_4
  br label %L8
L7:
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 3, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_5
  br label %L8
L8:
  br label %L9
L9:
  ret void
}
