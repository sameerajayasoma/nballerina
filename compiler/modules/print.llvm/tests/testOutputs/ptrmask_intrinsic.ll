declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
define i8 addrspace(1)* @foo(i8 addrspace(1)* %0) {
  %2 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %0, i64 72057594037927928)
  ret i8 addrspace(1)* %2
}
