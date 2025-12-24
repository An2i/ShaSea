; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.43.34808"

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$printf = comdat any

$scanf = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$_vfprintf_l = comdat any

$_vfscanf_l = comdat any

$__local_stdio_scanf_options = comdat any

$"??_C@_08OHHAENPO@Hello?5A?6?$AA@" = comdat any

$"??_C@_03OFAPEBGM@?$CFs?6?$AA@" = comdat any

$"??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@" = comdat any

$"??_C@_02DPKJAMEF@?$CFd?$AA@" = comdat any

$"??_C@_03PMGGPEJJ@?$CFd?6?$AA@" = comdat any

$"??_C@_07CILFBABA@Hello?5A?$AA@" = comdat any

@"??_C@_08OHHAENPO@Hello?5A?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"Hello A\0A\00", comdat, align 1
@strA = internal global ptr @"??_C@_07CILFBABA@Hello?5A?$AA@", align 8
@"??_C@_03OFAPEBGM@?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%s\0A\00", comdat, align 1
@"??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"Ohhhh bililib\00", comdat, align 1
@"??_C@_02DPKJAMEF@?$CFd?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"%d\00", comdat, align 1
@"??_C@_03PMGGPEJJ@?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%d\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_07CILFBABA@Hello?5A?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"Hello A\00", comdat, align 1
@__local_stdio_scanf_options._OptionsStorage = internal global i64 0, align 8
@opcodes = private global [18 x i32] [i32 1, i32 38, i32 0, i32 3, i32 6, i32 12, i32 1, i32 7719, i32 0, i32 1, i32 2437, i32 0, i32 1, i32 21238, i32 0, i32 2, i32 9, i32 0]
@opcodes.1 = private global [18 x i32] [i32 1, i32 38, i32 0, i32 3, i32 6, i32 12, i32 1, i32 7719, i32 0, i32 1, i32 2437, i32 0, i32 1, i32 21238, i32 0, i32 2, i32 9, i32 0]

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start.p0(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vsprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end.p0(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @_vsnprintf_l(ptr noundef %9, i64 noundef -1, ptr noundef %8, ptr noundef null, ptr noundef %7)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.va_start.p0(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsnprintf(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end.p0(ptr %8)
  %14 = load i32, ptr %7, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hello(i32 noundef %0) #0 {
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem1 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %.reg2mem, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %1
  %4 = load i32, ptr %VMpc, align 4
  %5 = add i32 %4, 1
  %6 = add i32 %4, 2
  %7 = getelementptr [18 x i32], ptr @opcodes, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [18 x i32], ptr @opcodes, i32 0, i32 %5
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %.reg2mem1, align 4
  %11 = getelementptr [18 x i32], ptr @opcodes, i32 0, i32 %6
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %.reg2mem5, align 4
  %13 = add i32 %4, 3
  store i32 %13, ptr %VMpc, align 4
  switch i32 %8, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload4 = load volatile i32, ptr %.reg2mem1, align 4
  switch i32 %.reload4, label %Default [
    i32 38, label %FirstBB
    i32 7719, label %18
    i32 21238, label %20
    i32 2437, label %23
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload3 = load volatile i32, ptr %.reg2mem1, align 4
  store i32 %.reload3, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %14 = load i32, ptr %VMJmpFlag, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload2 = load volatile i32, ptr %.reg2mem1, align 4
  store i32 %.reload2, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

FirstBB:                                          ; preds = %RunBlock
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  %16 = icmp eq i32 %.reload, 1
  %17 = select i1 %16, i32 1, i32 0
  store i32 %17, ptr %VMJmpFlag, align 4
  br label %Default

18:                                               ; preds = %RunBlock
  %19 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_08OHHAENPO@Hello?5A?6?$AA@")
  br label %Default

20:                                               ; preds = %RunBlock
  %21 = load ptr, ptr @strA, align 8
  %22 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr noundef %21)
  br label %Default

23:                                               ; preds = %RunBlock
  ret void

Default:                                          ; preds = %20, %18, %FirstBB, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 1)
  %8 = call i32 @_vfprintf_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end.p0(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 10, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store ptr @"??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", ptr %4, align 8
  %5 = call i32 (ptr, ...) @scanf(ptr noundef @"??_C@_02DPKJAMEF@?$CFd?$AA@", ptr noundef %3)
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, ptr %2, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr noundef %9)
  %11 = load i32, ptr %1, align 4
  %12 = load i32, ptr %3, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32, ptr %2, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03PMGGPEJJ@?$CFd?6?$AA@", i32 noundef %15)
  %17 = load i32, ptr %1, align 4
  %18 = load i32, ptr %3, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load i32, ptr %2, align 4
  %21 = add nsw i32 %19, %20
  call void @hello(i32 noundef %21)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @scanf(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 0)
  %8 = call i32 @_vfscanf_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end.p0(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef -1, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat {
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem7 = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem1 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @__local_stdio_printf_options()
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 1
  %20 = call i32 @__stdio_common_vsprintf(i64 noundef %19, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %20, ptr %11, align 4
  %21 = load i32, ptr %11, align 4
  store i32 %21, ptr %.reg2mem, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %5
  %22 = load i32, ptr %VMpc, align 4
  %23 = add i32 %22, 1
  %24 = add i32 %22, 2
  %25 = getelementptr [18 x i32], ptr @opcodes.1, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [18 x i32], ptr @opcodes.1, i32 0, i32 %23
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %.reg2mem1, align 4
  %29 = getelementptr [18 x i32], ptr @opcodes.1, i32 0, i32 %24
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %.reg2mem5, align 4
  %31 = add i32 %22, 3
  store i32 %31, ptr %VMpc, align 4
  switch i32 %26, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload4 = load volatile i32, ptr %.reg2mem1, align 4
  switch i32 %.reload4, label %Default [
    i32 38, label %FirstBB
    i32 7719, label %36
    i32 21238, label %37
    i32 2437, label %39
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload3 = load volatile i32, ptr %.reg2mem1, align 4
  store i32 %.reload3, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %32 = load i32, ptr %VMJmpFlag, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload2 = load volatile i32, ptr %.reg2mem1, align 4
  store i32 %.reload2, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

FirstBB:                                          ; preds = %RunBlock
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  %34 = icmp slt i32 %.reload, 0
  %35 = select i1 %34, i32 1, i32 0
  store i32 %35, ptr %VMJmpFlag, align 4
  br label %Default

36:                                               ; preds = %RunBlock
  store i32 -1, ptr %.reg2mem9, align 4
  br label %Default

37:                                               ; preds = %RunBlock
  %38 = load i32, ptr %11, align 4
  store i32 %38, ptr %.reg2mem7, align 4
  %.reload8 = load volatile i32, ptr %.reg2mem7, align 4
  store i32 %.reload8, ptr %.reg2mem9, align 4
  br label %Default

39:                                               ; preds = %RunBlock
  %.reload10 = load i32, ptr %.reg2mem9, align 4
  ret i32 %.reload10

Default:                                          ; preds = %37, %36, %FirstBB, %RunBlock, %VMEntry
  br label %VMEntry
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_printf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfprintf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #2

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfscanf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_scanf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfscanf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
}

declare dso_local i32 @__stdio_common_vfscanf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_scanf_options() #0 comdat {
  ret ptr @__local_stdio_scanf_options._OptionsStorage
}

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 20.1.8"}
