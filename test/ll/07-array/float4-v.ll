@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %22, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %9 = bitcast i8 addrspace(1)* %8 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %10 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %10
  %11 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %11
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %13
  %14 = getelementptr i8, i8 addrspace(1)* %8, i64 1297036692682702848
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %x
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %18 = call i64 @_bal_list_set(i8 addrspace(1)* %16, i64 1, i8 addrspace(1)* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %29
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  %27 = call i64 @_bal_list_set(i8 addrspace(1)* %25, i64 3, i8 addrspace(1)* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %32, label %34
29:
  %30 = or i64 %18, 1536
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 %30)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %3
  br label %20
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
34:
  %35 = or i64 %27, 1792
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 %35)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %3
  br label %20
}