@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %26, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %v
  store i64 -1, ptr %i
  %14 = load ptr addrspace(1), ptr %v
  %15 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %14, i64 72057594037927928), !dbg !10
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load i64, ptr %i
  %18 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 0
  %19 = load ptr, ptr addrspace(1) %18, align 8
  %20 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = call i64 %21(ptr addrspace(1) %14, i64 %17, i64 0)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %28, label %43
24:
  %25 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !16
  unreachable
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !8
  unreachable
28:
  %29 = load ptr addrspace(1), ptr %v
  %30 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %29), !dbg !11
  %31 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %30), !dbg !12
  store i64 %31, ptr %2
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load i64, ptr %2
  %37 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %36), !dbg !14
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %39
  %40 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 864691128455135236
  store ptr addrspace(1) %41, ptr %3
  %42 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %42), !dbg !15
  store ptr addrspace(1) null, ptr %4
  ret void
43:
  %44 = or i64 %22, 1536
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 %44), !dbg !7
  store ptr addrspace(1) %45, ptr %5
  br label %24
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/13-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 6, column: 5, scope: !5)
!11 = !DILocation(line: 7, column: 17, scope: !5)
!12 = !DILocation(line: 7, column: 17, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 0, scope: !5)
