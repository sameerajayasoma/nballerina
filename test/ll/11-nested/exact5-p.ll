@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_mapping_inexact_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %c = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %m = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %21, label %6
6:
  %7 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %8 = and i64 72057594037927935, 0
  %9 = or i64 2449958197289549824, %8
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  call void @_bal_mapping_init_member(ptr addrspace(1) %7, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr addrspace(1) %10), !dbg !10
  store ptr addrspace(1) %7, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %11, ptr %c
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261418), ptr %m
  %12 = load ptr addrspace(1), ptr %m
  %13 = load ptr addrspace(1), ptr %c
  %14 = and i64 72057594037927935, 8
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  %17 = call i64 @_bal_mapping_inexact_set(ptr addrspace(1) %13, ptr addrspace(1) %12, ptr addrspace(1) %16), !dbg !11
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %24
19:
  %20 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !12
  unreachable
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !8
  unreachable
23:
  ret void
24:
  %25 = or i64 %17, 2048
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 %25), !dbg !7
  store ptr addrspace(1) %26, ptr %2
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/exact5-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 10, scope: !5)
!10 = !DILocation(line: 6, column: 10, scope: !5)
!11 = !DILocation(line: 8, column: 5, scope: !5)
!12 = !DILocation(line: 9, column: 0, scope: !5)
