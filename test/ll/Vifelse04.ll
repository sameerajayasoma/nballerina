declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = call i64 @_B_foo (i64 1, i64 1)
  store i64 %_6, i64* %_0
  %_7 = load i64, i64* %_0
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 %_7, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 144115188075855872
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_1
  %_11 = call i64 @_B_foo (i64 1, i64 10)
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  %_13 = call i8* @_bal_alloc (i64 8)
  %_14 = bitcast i8* %_13 to i64*
  store i64 %_12, i64* %_14, align 8
  %_15 = getelementptr i8, i8* %_13, i64 144115188075855872
  call void @_Bio__println (i8* %_15)
  store i8* null, i8** %_3
  %_16 = call i64 @_B_foo (i64 11, i64 1)
  store i64 %_16, i64* %_4
  %_17 = load i64, i64* %_4
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 %_17, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_5
  ret void
}
define internal i64 @_B_foo (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i1
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_9 = load i64, i64* %x
  %_10 = call i64 @_B_bar (i64 %_9)
  store i64 %_10, i64* %_3
  %_11 = load i64, i64* %y
  %_12 = call i64 @_B_baz (i64 %_11)
  store i64 %_12, i64* %_4
  %_13 = load i64, i64* %_3
  %_14 = load i64, i64* %_4
  %_15 = icmp eq i64 %_13, %_14
  store i1 %_15, i1* %_2
  %_16 = load i1, i1* %_2
  br i1 %_16, label %L1, label %L2
L1:
  ret i64 0
L2:
  %_17 = load i64, i64* %x
  %_18 = call i64 @_B_bar (i64 %_17)
  store i64 %_18, i64* %_6
  %_19 = load i64, i64* %y
  %_20 = call i64 @_B_baz (i64 %_19)
  store i64 %_20, i64* %_7
  %_21 = load i64, i64* %_6
  %_22 = load i64, i64* %_7
  %_23 = icmp sgt i64 %_21, %_22
  store i1 %_23, i1* %_5
  %_24 = load i1, i1* %_5
  br i1 %_24, label %L3, label %L4
L3:
  ret i64 1
L4:
  ret i64 -1
}
define internal i64 @_B_bar (i64 %_0) {
  %x = alloca i64
  store i64 %_0, i64* %x
  %_1 = load i64, i64* %x
  ret i64 %_1
}
define internal i64 @_B_baz (i64 %_0) {
  %x = alloca i64
  store i64 %_0, i64* %x
  %_1 = load i64, i64* %x
  ret i64 %_1
}
