@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_printInts(i64 5), !dbg !13
  store ptr addrspace(1) null, ptr %1
  ret void
6:
  %7 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %7), !dbg !12
  unreachable
}
define internal void @_B_printInts(i64 %0) !dbg !7 {
  %maxExclusive = alloca i64
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %34, label %10
10:
  store i64 %0, ptr %maxExclusive
  %11 = load i64, ptr %maxExclusive
  store i64 %11, ptr %i
  br label %12
12:
  %13 = load i64, ptr %i
  %14 = call i64 @_B_decrease(i64 %13), !dbg !16
  store i64 %14, ptr %2
  %15 = load i64, ptr %2
  %16 = icmp sle i64 0, %15
  store i1 %16, ptr %3
  %17 = load i1, ptr %3
  br i1 %17, label %18, label %33
18:
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = load i64, ptr %i
  %24 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %23), !dbg !18
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %4
  %29 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %29), !dbg !19
  store ptr addrspace(1) null, ptr %5
  %30 = load i64, ptr %i
  %31 = call i64 @_B_decrease(i64 %30), !dbg !20
  store i64 %31, ptr %6
  %32 = load i64, ptr %6
  store i64 %32, ptr %i
  br label %12
33:
  ret void
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !15
  unreachable
}
define internal i64 @_B_decrease(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %x
  %8 = load i64, ptr %x
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !23
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 5380), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !22
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 5633), !dbg !21
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/while05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printInts", linkageName:"_B_printInts", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"decrease", linkageName:"_B_decrease", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 13, column: 9, scope: !7)
!16 = !DILocation(line: 15, column: 15, scope: !7)
!17 = !DILocation(line: 16, column: 19, scope: !7)
!18 = !DILocation(line: 16, column: 19, scope: !7)
!19 = !DILocation(line: 16, column: 8, scope: !7)
!20 = !DILocation(line: 17, column: 12, scope: !7)
!21 = !DILocation(line: 0, column: 0, scope: !9)
!22 = !DILocation(line: 21, column: 9, scope: !9)
!23 = !DILocation(line: 23, column: 0, scope: !9)
