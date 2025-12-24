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
@"dec0??_C@_08OHHAENPO@Hello?5A?6?$AA@" = private global [9 x i8] zeroinitializer, align 1
@"dec_status_0??_C@_08OHHAENPO@Hello?5A?6?$AA@" = private global i32 0
@"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@" = private global [4 x i8] zeroinitializer, align 1
@"dec_status_1??_C@_03OFAPEBGM@?$CFs?6?$AA@" = private global i32 0
@"dec2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@" = private global [14 x i8] zeroinitializer, align 1
@"dec_status_2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@" = private global i32 0
@"dec3??_C@_02DPKJAMEF@?$CFd?$AA@" = private global [3 x i8] zeroinitializer, align 1
@"dec_status_3??_C@_02DPKJAMEF@?$CFd?$AA@" = private global i32 0
@"dec4??_C@_03PMGGPEJJ@?$CFd?6?$AA@" = private global [4 x i8] zeroinitializer, align 1
@"dec_status_4??_C@_03PMGGPEJJ@?$CFd?6?$AA@" = private global i32 0
@"dec5??_C@_07CILFBABA@Hello?5A?$AA@" = private global [8 x i8] zeroinitializer, align 1
@"dec_status_5??_C@_07CILFBABA@Hello?5A?$AA@" = private global i32 0
@EncryptedStringTable = private constant [321 x i8] c"M_d\DAA\8F@\83qR(\D7\05\99?CX\0F\E2*\06#Y9\FD\80\80\C2\F9\D2\D1\10\BB\D6\EASG\E1\D4)\10Io\1D6\CFUq\CA]\F5\9DB\11\\\91\EC\EF\E2\B8\D8\D1w#\04[\E0\AB\B1Z{\FB3[j(\02V\E1\FF\F0\198;\DA\98\00\A2o\9E\90@\C4%\A7\03\1E\F5k\B6\17\A4\A9E\F45t`\CE\7F\8C@jW\C2ApJ\ED\9A@\F2l\19\FB\E9F\B3\1D\B1C\A7\07\DB\C5\F1\DC\EF\C3x>S\E3\93c\83s\8A\F1x\BB\95-/0\AC\FC\80E\FF\0F\E5\DC\92\8F\D0\A0\BE\10\D3\FDE\0FR\C5\90\E9)\96m\E5O\F1\F5L\B1\03\C1$\06\F7S\F9w\A7\BE\BC\DDj&stX7\855/\BBd+\07\E2\9A\22\DAO\A7gQ<7\09\F7\CC\19%\A6\09\0A\D2bU_\C6@\BA\B4?5\08:\85_\D5c\EB\DB\CD\81{\C6\F0\E7\C4\8E\B0\A3\FAp\E9\CEj\8D\D2\BBz\BAI2\11\D5\83\CE\8E\A7\04p.\1B\0F\14\F2\0F\87\C1B\C796F.\DD\CD\8A~\E1\85u\869c\E1`\EC\224\F6\B7\BC\CA\92\13\E26\84\E9\19\E9\19\22\E1"
@hello_vv = private global [2 x ptr] [ptr getelementptr (ptr, ptr blockaddress(@hello, %25), i64 -8396654094108257377), ptr getelementptr (ptr, ptr blockaddress(@hello, %21), i64 -8396654094108257377)]
@x = common global i32 0
@y = common global i32 0
@sprintf_ll = private global [1 x ptr] [ptr getelementptr (i8, ptr @_vsprintf_l, i64 5555458730637290988)]
@opcodes = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.1 = common global i32 0
@y.2 = common global i32 0
@vsprintf_ll = private global [1 x ptr] [ptr getelementptr (i8, ptr @_vsnprintf_l, i64 -8893090970034271384)]
@opcodes.3 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.4 = common global i32 0
@y.5 = common global i32 0
@_snprintf_ll = private global [1 x ptr] [ptr getelementptr (i8, ptr @_vsnprintf, i64 -6884500249218504113)]
@opcodes.6 = private global [6 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0]
@x.7 = common global i32 0
@y.8 = common global i32 0
@_vsnprintf_ll = private global [1 x ptr] [ptr getelementptr (i8, ptr @_vsnprintf_l, i64 2734317687748773433)]
@opcodes.9 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.10 = common global i32 0
@y.11 = common global i32 0
@hello_ll = private global [3 x ptr] [ptr getelementptr (i8, ptr @goron_decrypt_string_0, i64 827311106186359364), ptr getelementptr (i8, ptr @printf, i64 827311106186359364), ptr getelementptr (i8, ptr @goron_decrypt_string_1, i64 827311106186359364)]
@opcodes.12 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.13 = common global i32 0
@y.14 = common global i32 0
@printf_ll = private global [2 x ptr] [ptr getelementptr (i8, ptr @__acrt_iob_func, i64 -378038182562629774), ptr getelementptr (i8, ptr @_vfprintf_l, i64 -378038182562629774)]
@opcodes.15 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.16 = common global i32 0
@y.17 = common global i32 0
@main_ll = private global [7 x ptr] [ptr getelementptr (i8, ptr @goron_decrypt_string_2, i64 5672307954545172313), ptr getelementptr (i8, ptr @goron_decrypt_string_3, i64 5672307954545172313), ptr getelementptr (i8, ptr @scanf, i64 5672307954545172313), ptr getelementptr (i8, ptr @goron_decrypt_string_1, i64 5672307954545172313), ptr getelementptr (i8, ptr @printf, i64 5672307954545172313), ptr getelementptr (i8, ptr @goron_decrypt_string_4, i64 5672307954545172313), ptr getelementptr (i8, ptr @hello, i64 5672307954545172313)]
@opcodes.18 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.19 = common global i32 0
@y.20 = common global i32 0
@scanf_ll = private global [2 x ptr] [ptr getelementptr (i8, ptr @__acrt_iob_func, i64 5840711461507808789), ptr getelementptr (i8, ptr @_vfscanf_l, i64 5840711461507808789)]
@opcodes.21 = private global [6 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0]
@x.22 = common global i32 0
@y.23 = common global i32 0
@x.24 = common global i32 0
@y.25 = common global i32 0
@_vsprintf_l_ll = private global [1 x ptr] [ptr getelementptr (i8, ptr @_vsnprintf_l, i64 2910666049604637224)]
@opcodes.26 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.27 = common global i32 0
@y.28 = common global i32 0
@x.29 = common global i32 0
@y.30 = common global i32 0
@_vsnprintf_l_ll = private global [2 x ptr] [ptr getelementptr (i8, ptr @__local_stdio_printf_options, i64 -3644335260559806637), ptr getelementptr (i8, ptr @__stdio_common_vsprintf, i64 -3644335260559806637)]
@opcodes.31 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.32 = common global i32 0
@y.33 = common global i32 0
@x.34 = common global i32 0
@y.35 = common global i32 0
@opcodes.36 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.37 = common global i32 0
@y.38 = common global i32 0
@_vfprintf_l_ll = private global [2 x ptr] [ptr getelementptr (i8, ptr @__local_stdio_printf_options, i64 5056546922401425291), ptr getelementptr (i8, ptr @__stdio_common_vfprintf, i64 5056546922401425291)]
@opcodes.39 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.40 = common global i32 0
@y.41 = common global i32 0
@x.42 = common global i32 0
@y.43 = common global i32 0
@x.44 = common global i32 0
@y.45 = common global i32 0
@_vfscanf_l_ll = private global [2 x ptr] [ptr getelementptr (i8, ptr @__local_stdio_scanf_options, i64 -5344656605197917744), ptr getelementptr (i8, ptr @__stdio_common_vfscanf, i64 -5344656605197917744)]
@llvm.compiler.used = appending global [13 x ptr] [ptr @hello_vv, ptr @sprintf_ll, ptr @vsprintf_ll, ptr @_snprintf_ll, ptr @_vsnprintf_ll, ptr @hello_ll, ptr @printf_ll, ptr @main_ll, ptr @scanf_ll, ptr @_vsprintf_l_ll, ptr @_vsnprintf_l_ll, ptr @_vfprintf_l_ll, ptr @_vfscanf_l_ll], section "llvm.metadata"
@opcodes.46 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.47 = common global i32 0
@y.48 = common global i32 0
@x.49 = common global i32 0
@y.50 = common global i32 0
@opcodes.51 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.52 = common global i32 0
@y.53 = common global i32 0
@opcodes.54 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.55 = common global i32 0
@y.56 = common global i32 0
@opcodes.57 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.58 = common global i32 0
@y.59 = common global i32 0
@opcodes.60 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.61 = common global i32 0
@y.62 = common global i32 0
@opcodes.63 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]
@x.64 = common global i32 0
@y.65 = common global i32 0
@opcodes.66 = private global [12 x i32] [i32 1, i32 38, i32 0, i32 1, i32 7719, i32 0, i32 1, i32 21238, i32 0, i32 1, i32 2437, i32 0]

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %.reg2mem37 = alloca i32, align 4
  %.reg2mem33 = alloca ptr, align 8
  %.reg2mem30 = alloca ptr, align 8
  %.reg2mem27 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %.reg2mem23 = alloca ptr, align 8
  %.reg2mem20 = alloca ptr, align 8
  %.reg2mem17 = alloca ptr, align 8
  %.reg2mem14 = alloca ptr, align 8
  %.reg2mem12 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem.reg2mem = alloca ptr, align 8
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %2
  %3 = load i32, ptr %VMpc, align 4
  %4 = add i32 %3, 1
  %5 = add i32 %3, 2
  %6 = getelementptr [12 x i32], ptr @opcodes, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes, i32 0, i32 %4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem5, align 4
  %10 = getelementptr [12 x i32], ptr @opcodes, i32 0, i32 %5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %.reg2mem9, align 4
  %12 = add i32 %3, 3
  store i32 %12, ptr %VMpc, align 4
  switch i32 %7, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload8 = load volatile i32, ptr %.reg2mem5, align 4
  switch i32 %.reload8, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %16
    i32 30612, label %.split2
    i32 5853, label %.split2.split
    i32 28100, label %28
    i32 1142, label %.split3
    i32 281, label %29
    i32 20537, label %.split4
    i32 15921, label %.split4.split
    i32 8945, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload7 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload7, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %13 = load i32, ptr %VMJmpFlag, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload10 = load volatile i32, ptr %.reg2mem9, align 4
  store i32 %.reload10, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem = alloca i32, align 4
  store ptr %.reg2mem, ptr %.reg2mem.reg2mem, align 8
  %fix_stack_point = bitcast i32 0 to i32
  store i32 41, ptr %swVar.ptr, align 4
  br label %Default

.split.split:                                     ; preds = %RunBlock
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 41, label %newBB
    i32 18467, label %16
    i32 6334, label %28
    i32 26500, label %29
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %15 = select i1 true, i32 18467, i32 26500
  store i32 %15, ptr %.reg2mem12, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload13 = load volatile i32, ptr %.reg2mem12, align 4
  store i32 %.reload13, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

16:                                               ; preds = %RunBlock, %dispatchBB.split
  %17 = alloca ptr, align 8
  store ptr %17, ptr %.reg2mem14, align 8
  %18 = alloca ptr, align 8
  store ptr %18, ptr %.reg2mem17, align 8
  %19 = alloca i32, align 4
  store ptr %19, ptr %.reg2mem20, align 8
  %20 = alloca ptr, align 8
  store ptr %20, ptr %.reg2mem23, align 8
  %.reload16 = load volatile ptr, ptr %.reg2mem14, align 8
  store ptr %1, ptr %.reload16, align 8
  %.reload19 = load volatile ptr, ptr %.reg2mem17, align 8
  store ptr %0, ptr %.reload19, align 8
  br label %Default

.split2:                                          ; preds = %RunBlock
  %.reload26 = load volatile ptr, ptr %.reg2mem23, align 8
  call void @llvm.va_start.p0(ptr %.reload26)
  br label %Default

.split2.split:                                    ; preds = %RunBlock
  %.reload25 = load volatile ptr, ptr %.reg2mem23, align 8
  %21 = load ptr, ptr %.reload25, align 8
  %.reload15 = load volatile ptr, ptr %.reg2mem14, align 8
  %22 = load ptr, ptr %.reload15, align 8
  %.reload18 = load volatile ptr, ptr %.reg2mem17, align 8
  %23 = load ptr, ptr %.reload18, align 8
  %24 = load ptr, ptr @sprintf_ll, align 8
  %Call__vsprintf_l = getelementptr i8, ptr %24, i64 -5555458730637290988
  %25 = call i32 %Call__vsprintf_l(ptr noundef %23, ptr noundef %22, ptr noundef null, ptr noundef %21)
  %.reload22 = load volatile ptr, ptr %.reg2mem20, align 8
  store i32 %25, ptr %.reload22, align 4
  %.reload24 = load volatile ptr, ptr %.reg2mem23, align 8
  call void @llvm.va_end.p0(ptr %.reload24)
  %.reload21 = load volatile ptr, ptr %.reg2mem20, align 8
  %26 = load i32, ptr %.reload21, align 4
  %.reg2mem.reload = load volatile ptr, ptr %.reg2mem.reg2mem, align 8
  store i32 %26, ptr %.reg2mem.reload, align 4
  %27 = select i1 true, i32 6334, i32 26500
  store i32 %27, ptr %swVar.ptr, align 4
  br label %Default

28:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem.reload11 = load volatile ptr, ptr %.reg2mem.reg2mem, align 8
  %.reload = load i32, ptr %.reg2mem.reload11, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split3:                                          ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

29:                                               ; preds = %RunBlock, %dispatchBB.split
  %30 = alloca ptr, align 8
  store ptr %30, ptr %.reg2mem27, align 8
  br label %Default

.split4:                                          ; preds = %RunBlock
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  store ptr %32, ptr %.reg2mem30, align 8
  %33 = alloca ptr, align 8
  store ptr %33, ptr %.reg2mem33, align 8
  %.reload29 = load volatile ptr, ptr %.reg2mem27, align 8
  store ptr %1, ptr %.reload29, align 8
  store ptr %0, ptr %31, align 8
  %.reload36 = load volatile ptr, ptr %.reg2mem33, align 8
  call void @llvm.va_start.p0(ptr %.reload36)
  %.reload35 = load volatile ptr, ptr %.reg2mem33, align 8
  %34 = load ptr, ptr %.reload35, align 8
  %.reload28 = load volatile ptr, ptr %.reg2mem27, align 8
  %35 = load ptr, ptr %.reload28, align 8
  %36 = load ptr, ptr %31, align 8
  %37 = load ptr, ptr @sprintf_ll, align 8
  %Call__vsprintf_l1 = getelementptr i8, ptr %37, i64 -5555458730637290988
  %38 = call i32 %Call__vsprintf_l1(ptr noundef %36, ptr noundef %35, ptr noundef null, ptr noundef %34)
  store i32 %38, ptr %.reg2mem37, align 4
  br label %Default

.split4.split:                                    ; preds = %RunBlock
  %.reload32 = load volatile ptr, ptr %.reg2mem30, align 8
  %.reload38 = load volatile i32, ptr %.reg2mem37, align 4
  store i32 %.reload38, ptr %.reload32, align 4
  %.reload34 = load volatile ptr, ptr %.reg2mem33, align 8
  call void @llvm.va_end.p0(ptr %.reload34)
  %.reload31 = load volatile ptr, ptr %.reg2mem30, align 8
  %39 = load i32, ptr %.reload31, align 4
  store i32 18467, ptr %swVar.ptr, align 4
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split4.split, %.split4, %29, %28, %.split2.split, %.split2, %16, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %.reg2mem41 = alloca ptr, align 8
  %.reg2mem39 = alloca ptr, align 8
  %.reg2mem37 = alloca ptr, align 8
  %.reg2mem35 = alloca ptr, align 8
  %.reg2mem32 = alloca ptr, align 8
  %.reg2mem29 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %Call__vsnprintf_l.reg2mem = alloca ptr, align 8
  %.reg2mem27 = alloca ptr, align 8
  %.reg2mem25 = alloca ptr, align 8
  %.reg2mem23 = alloca ptr, align 8
  %.reg2mem20 = alloca ptr, align 8
  %.reg2mem17 = alloca ptr, align 8
  %.reg2mem14 = alloca ptr, align 8
  %.reg2mem12 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem.reg2mem = alloca ptr, align 8
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %3
  %4 = load i32, ptr %VMpc, align 4
  %5 = add i32 %4, 1
  %6 = add i32 %4, 2
  %7 = getelementptr [12 x i32], ptr @opcodes.3, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [12 x i32], ptr @opcodes.3, i32 0, i32 %5
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %.reg2mem5, align 4
  %11 = getelementptr [12 x i32], ptr @opcodes.3, i32 0, i32 %6
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %.reg2mem9, align 4
  %13 = add i32 %4, 3
  store i32 %13, ptr %VMpc, align 4
  switch i32 %8, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload8 = load volatile i32, ptr %.reg2mem5, align 4
  switch i32 %.reload8, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %17
    i32 30612, label %.split2
    i32 5853, label %.split2.split
    i32 28100, label %27
    i32 1142, label %.split3
    i32 281, label %28
    i32 20537, label %.split4
    i32 15921, label %.split4.split
    i32 8945, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload7 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload7, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %14 = load i32, ptr %VMJmpFlag, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload10 = load volatile i32, ptr %.reg2mem9, align 4
  store i32 %.reload10, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem = alloca i32, align 4
  store ptr %.reg2mem, ptr %.reg2mem.reg2mem, align 8
  %fix_stack_point = bitcast i32 0 to i32
  store i32 26285, ptr %swVar.ptr, align 4
  br label %Default

.split.split:                                     ; preds = %RunBlock
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 26285, label %newBB
    i32 2997, label %17
    i32 14680, label %27
    i32 20976, label %28
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %16 = select i1 true, i32 2997, i32 20976
  store i32 %16, ptr %.reg2mem12, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload13 = load volatile i32, ptr %.reg2mem12, align 4
  store i32 %.reload13, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

17:                                               ; preds = %RunBlock, %dispatchBB.split
  %18 = alloca ptr, align 8
  store ptr %18, ptr %.reg2mem14, align 8
  %19 = alloca ptr, align 8
  store ptr %19, ptr %.reg2mem17, align 8
  %20 = alloca ptr, align 8
  store ptr %20, ptr %.reg2mem20, align 8
  %.reload16 = load volatile ptr, ptr %.reg2mem14, align 8
  store ptr %2, ptr %.reload16, align 8
  br label %Default

.split2:                                          ; preds = %RunBlock
  %.reload19 = load volatile ptr, ptr %.reg2mem17, align 8
  store ptr %1, ptr %.reload19, align 8
  %.reload22 = load volatile ptr, ptr %.reg2mem20, align 8
  store ptr %0, ptr %.reload22, align 8
  %.reload15 = load volatile ptr, ptr %.reg2mem14, align 8
  %21 = load ptr, ptr %.reload15, align 8
  store ptr %21, ptr %.reg2mem23, align 8
  %.reload18 = load volatile ptr, ptr %.reg2mem17, align 8
  %22 = load ptr, ptr %.reload18, align 8
  store ptr %22, ptr %.reg2mem25, align 8
  %.reload21 = load volatile ptr, ptr %.reg2mem20, align 8
  %23 = load ptr, ptr %.reload21, align 8
  store ptr %23, ptr %.reg2mem27, align 8
  %24 = load ptr, ptr @vsprintf_ll, align 8
  %Call__vsnprintf_l = getelementptr i8, ptr %24, i64 8893090970034271384
  store ptr %Call__vsnprintf_l, ptr %Call__vsnprintf_l.reg2mem, align 8
  br label %Default

.split2.split:                                    ; preds = %RunBlock
  %.reload24 = load volatile ptr, ptr %.reg2mem23, align 8
  %.reload26 = load volatile ptr, ptr %.reg2mem25, align 8
  %.reload28 = load volatile ptr, ptr %.reg2mem27, align 8
  %Call__vsnprintf_l.reload = load volatile ptr, ptr %Call__vsnprintf_l.reg2mem, align 8
  %25 = call i32 %Call__vsnprintf_l.reload(ptr noundef %.reload28, i64 noundef -1, ptr noundef %.reload26, ptr noundef null, ptr noundef %.reload24)
  %.reg2mem.reload = load volatile ptr, ptr %.reg2mem.reg2mem, align 8
  store i32 %25, ptr %.reg2mem.reload, align 4
  %26 = select i1 true, i32 14680, i32 20976
  store i32 %26, ptr %swVar.ptr, align 4
  br label %Default

27:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem.reload11 = load volatile ptr, ptr %.reg2mem.reg2mem, align 8
  %.reload = load i32, ptr %.reg2mem.reload11, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split3:                                          ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

28:                                               ; preds = %RunBlock, %dispatchBB.split
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  store ptr %30, ptr %.reg2mem29, align 8
  %31 = alloca ptr, align 8
  store ptr %31, ptr %.reg2mem32, align 8
  store ptr %2, ptr %29, align 8
  %.reload31 = load volatile ptr, ptr %.reg2mem29, align 8
  store ptr %1, ptr %.reload31, align 8
  %.reload34 = load volatile ptr, ptr %.reg2mem32, align 8
  store ptr %0, ptr %.reload34, align 8
  %32 = load ptr, ptr %29, align 8
  store ptr %32, ptr %.reg2mem35, align 8
  br label %Default

.split4:                                          ; preds = %RunBlock
  %.reload30 = load volatile ptr, ptr %.reg2mem29, align 8
  %33 = load ptr, ptr %.reload30, align 8
  store ptr %33, ptr %.reg2mem37, align 8
  %.reload33 = load volatile ptr, ptr %.reg2mem32, align 8
  %34 = load ptr, ptr %.reload33, align 8
  store ptr %34, ptr %.reg2mem39, align 8
  %35 = load ptr, ptr @vsprintf_ll, align 8
  store ptr %35, ptr %.reg2mem41, align 8
  br label %Default

.split4.split:                                    ; preds = %RunBlock
  %.reload42 = load volatile ptr, ptr %.reg2mem41, align 8
  %Call__vsnprintf_l1 = getelementptr i8, ptr %.reload42, i64 8893090970034271384
  %.reload36 = load volatile ptr, ptr %.reg2mem35, align 8
  %.reload38 = load volatile ptr, ptr %.reg2mem37, align 8
  %.reload40 = load volatile ptr, ptr %.reg2mem39, align 8
  %36 = call i32 %Call__vsnprintf_l1(ptr noundef %.reload40, i64 noundef -1, ptr noundef %.reload38, ptr noundef null, ptr noundef %.reload36)
  store i32 2997, ptr %swVar.ptr, align 4
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split4.split, %.split4, %28, %27, %.split2.split, %.split2, %17, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #0 comdat {
  %.reg2mem8 = alloca ptr, align 8
  %.reg2mem5 = alloca ptr, align 8
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %3
  %6 = load i32, ptr %VMpc, align 4
  %7 = add i32 %6, 1
  %8 = add i32 %6, 2
  %9 = getelementptr [6 x i32], ptr @opcodes.6, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [6 x i32], ptr @opcodes.6, i32 0, i32 %7
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %.reg2mem, align 4
  %13 = getelementptr [6 x i32], ptr @opcodes.6, i32 0, i32 %8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %.reg2mem3, align 4
  %15 = add i32 %6, 3
  store i32 %15, ptr %VMpc, align 4
  switch i32 %10, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload2 = load volatile i32, ptr %.reg2mem, align 4
  switch i32 %.reload2, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload1 = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload1, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %16 = load i32, ptr %VMJmpFlag, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload4 = load volatile i32, ptr %.reg2mem3, align 4
  store i32 %.reload4, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %18 = alloca ptr, align 8
  store ptr %18, ptr %.reg2mem5, align 8
  %19 = alloca i32, align 4
  store ptr %19, ptr %.reg2mem8, align 8
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %20 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %.reload7 = load volatile ptr, ptr %.reg2mem5, align 8
  store ptr %0, ptr %.reload7, align 8
  call void @llvm.va_start.p0(ptr %20)
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %5, align 8
  %.reload6 = load volatile ptr, ptr %.reg2mem5, align 8
  %24 = load ptr, ptr %.reload6, align 8
  %25 = load ptr, ptr @_snprintf_ll, align 8
  %Call__vsnprintf = getelementptr i8, ptr %25, i64 6884500249218504113
  %26 = call i32 %Call__vsnprintf(ptr noundef %24, i64 noundef %23, ptr noundef %22, ptr noundef %21)
  %.reload10 = load volatile ptr, ptr %.reg2mem8, align 8
  store i32 %26, ptr %.reload10, align 4
  call void @llvm.va_end.p0(ptr %20)
  %.reload9 = load volatile ptr, ptr %.reg2mem8, align 8
  %27 = load i32, ptr %.reload9, align 4
  ret i32 %27

Default:                                          ; preds = %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %Call__vsnprintf_l1.reg2mem = alloca ptr, align 8
  %.reg2mem27 = alloca ptr, align 8
  %.reg2mem25 = alloca i64, align 8
  %.reg2mem23 = alloca ptr, align 8
  %.reg2mem21 = alloca ptr, align 8
  %.reg2mem18 = alloca ptr, align 8
  %.reg2mem15 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem11 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %fix_stack_point = bitcast i32 0 to i32
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %4
  %5 = load i32, ptr %VMpc, align 4
  %6 = add i32 %5, 1
  %7 = add i32 %5, 2
  %8 = getelementptr [12 x i32], ptr @opcodes.9, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [12 x i32], ptr @opcodes.9, i32 0, i32 %6
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %.reg2mem5, align 4
  %12 = getelementptr [12 x i32], ptr @opcodes.9, i32 0, i32 %7
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %.reg2mem9, align 4
  %14 = add i32 %5, 3
  store i32 %14, ptr %VMpc, align 4
  switch i32 %9, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload8 = load volatile i32, ptr %.reg2mem5, align 4
  switch i32 %.reload8, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %18
    i32 30612, label %.split2
    i32 5853, label %.split2.split
    i32 28100, label %30
    i32 1142, label %.split3
    i32 281, label %31
    i32 20537, label %.split4
    i32 15921, label %.split4.split
    i32 8945, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload7 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload7, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %15 = load i32, ptr %VMJmpFlag, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload10 = load volatile i32, ptr %.reg2mem9, align 4
  store i32 %.reload10, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  store i32 21238, ptr %swVar.ptr, align 4
  br label %Default

.split.split:                                     ; preds = %RunBlock
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 21238, label %newBB
    i32 2437, label %18
    i32 8855, label %30
    i32 11797, label %31
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %17 = select i1 true, i32 2437, i32 11797
  store i32 %17, ptr %.reg2mem11, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload12 = load volatile i32, ptr %.reg2mem11, align 4
  store i32 %.reload12, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

18:                                               ; preds = %RunBlock, %dispatchBB.split
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr %3, ptr %19, align 8
  store ptr %2, ptr %20, align 8
  store i64 %1, ptr %21, align 8
  store ptr %0, ptr %22, align 8
  %23 = load ptr, ptr %19, align 8
  %24 = load ptr, ptr %20, align 8
  %25 = load i64, ptr %21, align 8
  %26 = load ptr, ptr %22, align 8
  %27 = load ptr, ptr @_vsnprintf_ll, align 8
  %Call__vsnprintf_l = getelementptr i8, ptr %27, i64 -2734317687748773433
  %28 = call i32 %Call__vsnprintf_l(ptr noundef %26, i64 noundef %25, ptr noundef %24, ptr noundef null, ptr noundef %23)
  store i32 %28, ptr %.reg2mem, align 4
  br label %Default

.split2:                                          ; preds = %RunBlock
  %29 = select i1 true, i32 8855, i32 11797
  store i32 %29, ptr %.reg2mem13, align 4
  br label %Default

.split2.split:                                    ; preds = %RunBlock
  %.reload14 = load volatile i32, ptr %.reg2mem13, align 4
  store i32 %.reload14, ptr %swVar.ptr, align 4
  br label %Default

30:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split3:                                          ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

31:                                               ; preds = %RunBlock, %dispatchBB.split
  %32 = alloca ptr, align 8
  store ptr %32, ptr %.reg2mem15, align 8
  %33 = alloca ptr, align 8
  store ptr %33, ptr %.reg2mem18, align 8
  br label %Default

.split4:                                          ; preds = %RunBlock
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  %.reload17 = load volatile ptr, ptr %.reg2mem15, align 8
  store ptr %3, ptr %.reload17, align 8
  %.reload20 = load volatile ptr, ptr %.reg2mem18, align 8
  store ptr %2, ptr %.reload20, align 8
  store i64 %1, ptr %34, align 8
  store ptr %0, ptr %35, align 8
  %.reload16 = load volatile ptr, ptr %.reg2mem15, align 8
  %36 = load ptr, ptr %.reload16, align 8
  store ptr %36, ptr %.reg2mem21, align 8
  %.reload19 = load volatile ptr, ptr %.reg2mem18, align 8
  %37 = load ptr, ptr %.reload19, align 8
  store ptr %37, ptr %.reg2mem23, align 8
  %38 = load i64, ptr %34, align 8
  store i64 %38, ptr %.reg2mem25, align 8
  %39 = load ptr, ptr %35, align 8
  store ptr %39, ptr %.reg2mem27, align 8
  %40 = load ptr, ptr @_vsnprintf_ll, align 8
  %Call__vsnprintf_l1 = getelementptr i8, ptr %40, i64 -2734317687748773433
  store ptr %Call__vsnprintf_l1, ptr %Call__vsnprintf_l1.reg2mem, align 8
  br label %Default

.split4.split:                                    ; preds = %RunBlock
  %.reload22 = load volatile ptr, ptr %.reg2mem21, align 8
  %.reload24 = load volatile ptr, ptr %.reg2mem23, align 8
  %.reload26 = load volatile i64, ptr %.reg2mem25, align 8
  %.reload28 = load volatile ptr, ptr %.reg2mem27, align 8
  %Call__vsnprintf_l1.reload = load volatile ptr, ptr %Call__vsnprintf_l1.reg2mem, align 8
  %41 = call i32 %Call__vsnprintf_l1.reload(ptr noundef %.reload28, i64 noundef %.reload26, ptr noundef %.reload24, ptr noundef null, ptr noundef %.reload22)
  store i32 2437, ptr %swVar.ptr, align 4
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split4.split, %.split4, %31, %30, %.split2.split, %.split2, %18, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hello(i32 noundef %0) #0 {
  %.reg2mem39 = alloca ptr, align 8
  %.reg2mem37 = alloca ptr, align 8
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem31 = alloca ptr, align 8
  %.reg2mem29 = alloca i32, align 4
  %Call_printf.reg2mem = alloca ptr, align 8
  %swVar.reg2mem = alloca i32, align 4
  %swVar.ptr.reg2mem = alloca ptr, align 8
  %.reg2mem18 = alloca i1, align 1
  %.reg2mem16 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %2 = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %1
  %3 = load i32, ptr %VMpc, align 4
  %4 = add i32 %3, 1
  %5 = add i32 %3, 2
  %6 = getelementptr [12 x i32], ptr @opcodes.12, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.12, i32 0, i32 %4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem, align 4
  %10 = getelementptr [12 x i32], ptr @opcodes.12, i32 0, i32 %5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %.reg2mem16, align 4
  %12 = add i32 %3, 3
  store i32 %12, ptr %VMpc, align 4
  switch i32 %7, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload15 = load volatile i32, ptr %.reg2mem, align 4
  switch i32 %.reload15, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %21
    i32 8365, label %.split6
    i32 32285, label %.split6.split
    i32 10450, label %25
    i32 30612, label %.split7
    i32 5853, label %.split7.split
    i32 28100, label %27
    i32 1142, label %.split8
    i32 281, label %.split8.split
    i32 20537, label %33
    i32 15921, label %.split9
    i32 8945, label %34
    i32 26285, label %.split10
    i32 2997, label %.split10.split
    i32 14680, label %36
    i32 20976, label %.split11
    i32 31891, label %.split11.split
    i32 21655, label %38
    i32 25906, label %39
    i32 18457, label %.split12
    i32 1323, label %.split12.split
    i32 28881, label %44
    i32 2240, label %.split13
    i32 9725, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload14 = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload14, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %13 = load i32, ptr %VMJmpFlag, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload17 = load volatile i32, ptr %.reg2mem16, align 4
  store i32 %.reload17, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  store i32 %0, ptr %2, align 4
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 1
  store i1 %16, ptr %.reg2mem18, align 1
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %.reload19 = load volatile i1, ptr %.reg2mem18, align 1
  %17 = select i1 %.reload19, i64 1, i64 0
  %18 = getelementptr [2 x ptr], ptr @hello_vv, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i64 8396654094108257377
  %swVar.ptr = alloca i32, align 4
  store ptr %swVar.ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar.ptr.reload28 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 26285, ptr %swVar.ptr.reload28, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar.ptr.reload27 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar = load i32, ptr %swVar.ptr.reload27, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 26285, label %21
    i32 2997, label %25
    i32 14680, label %27
    i32 20976, label %33
    i32 31891, label %34
    i32 21655, label %36
    i32 25906, label %38
    i32 18457, label %39
    i32 1323, label %44
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

21:                                               ; preds = %RunBlock, %dispatchBB.split
  %22 = load ptr, ptr @hello_ll, align 8
  %Call_goron_decrypt_string_0 = getelementptr i8, ptr %22, i64 -827311106186359364
  call void %Call_goron_decrypt_string_0(ptr @"dec0??_C@_08OHHAENPO@Hello?5A?6?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 22))
  %23 = load ptr, ptr getelementptr ([3 x ptr], ptr @hello_ll, i64 0, i64 1), align 8
  %Call_printf = getelementptr i8, ptr %23, i64 -827311106186359364
  store ptr %Call_printf, ptr %Call_printf.reg2mem, align 8
  br label %Default

.split6:                                          ; preds = %RunBlock
  %Call_printf.reload = load volatile ptr, ptr %Call_printf.reg2mem, align 8
  %24 = call i32 (ptr, ...) %Call_printf.reload(ptr noundef @"dec0??_C@_08OHHAENPO@Hello?5A?6?$AA@")
  %swVar.ptr.reload26 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 31891, ptr %swVar.ptr.reload26, align 4
  br label %Default

.split6.split:                                    ; preds = %RunBlock
  br label %Default

25:                                               ; preds = %RunBlock, %dispatchBB.split
  %26 = select i1 true, i32 14680, i32 18457
  store i32 %26, ptr %.reg2mem29, align 4
  br label %Default

.split7:                                          ; preds = %RunBlock
  %swVar.ptr.reload25 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload30 = load volatile i32, ptr %.reg2mem29, align 4
  store i32 %.reload30, ptr %swVar.ptr.reload25, align 4
  br label %Default

.split7.split:                                    ; preds = %RunBlock
  br label %Default

27:                                               ; preds = %RunBlock, %dispatchBB.split
  %28 = load ptr, ptr @strA, align 8
  store ptr %28, ptr %.reg2mem31, align 8
  %29 = load ptr, ptr getelementptr ([3 x ptr], ptr @hello_ll, i64 0, i64 2), align 8
  %Call_goron_decrypt_string_1 = getelementptr i8, ptr %29, i64 -827311106186359364
  call void %Call_goron_decrypt_string_1(ptr @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 88))
  br label %Default

.split8:                                          ; preds = %RunBlock
  %30 = load ptr, ptr getelementptr ([3 x ptr], ptr @hello_ll, i64 0, i64 1), align 8
  %Call_printf3 = getelementptr i8, ptr %30, i64 -827311106186359364
  %.reload32 = load volatile ptr, ptr %.reg2mem31, align 8
  %31 = call i32 (ptr, ...) %Call_printf3(ptr noundef @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr noundef %.reload32)
  br label %Default

.split8.split:                                    ; preds = %RunBlock
  %32 = select i1 true, i32 20976, i32 18457
  %swVar.ptr.reload24 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %32, ptr %swVar.ptr.reload24, align 4
  br label %Default

33:                                               ; preds = %RunBlock, %dispatchBB.split
  %swVar.ptr.reload23 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 31891, ptr %swVar.ptr.reload23, align 4
  br label %Default

.split9:                                          ; preds = %RunBlock
  br label %Default

34:                                               ; preds = %RunBlock, %dispatchBB.split
  %35 = select i1 true, i32 21655, i32 1323
  store i32 %35, ptr %.reg2mem33, align 4
  br label %Default

.split10:                                         ; preds = %RunBlock
  %swVar.ptr.reload22 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload34 = load volatile i32, ptr %.reg2mem33, align 4
  store i32 %.reload34, ptr %swVar.ptr.reload22, align 4
  br label %Default

.split10.split:                                   ; preds = %RunBlock
  br label %Default

36:                                               ; preds = %RunBlock, %dispatchBB.split
  %37 = select i1 true, i32 25906, i32 1323
  store i32 %37, ptr %.reg2mem35, align 4
  br label %Default

.split11:                                         ; preds = %RunBlock
  %swVar.ptr.reload21 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload36 = load volatile i32, ptr %.reg2mem35, align 4
  store i32 %.reload36, ptr %swVar.ptr.reload21, align 4
  br label %Default

.split11.split:                                   ; preds = %RunBlock
  br label %Default

38:                                               ; preds = %RunBlock, %dispatchBB.split
  ret void

39:                                               ; preds = %RunBlock, %dispatchBB.split
  %40 = load ptr, ptr @strA, align 8
  store ptr %40, ptr %.reg2mem37, align 8
  %41 = load ptr, ptr getelementptr ([3 x ptr], ptr @hello_ll, i64 0, i64 2), align 8
  %Call_goron_decrypt_string_14 = getelementptr i8, ptr %41, i64 -827311106186359364
  call void %Call_goron_decrypt_string_14(ptr @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 88))
  %42 = load ptr, ptr getelementptr ([3 x ptr], ptr @hello_ll, i64 0, i64 1), align 8
  store ptr %42, ptr %.reg2mem39, align 8
  br label %Default

.split12:                                         ; preds = %RunBlock
  %.reload40 = load volatile ptr, ptr %.reg2mem39, align 8
  %Call_printf5 = getelementptr i8, ptr %.reload40, i64 -827311106186359364
  %.reload38 = load volatile ptr, ptr %.reg2mem37, align 8
  %43 = call i32 (ptr, ...) %Call_printf5(ptr noundef @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr noundef %.reload38)
  %swVar.ptr.reload20 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 14680, ptr %swVar.ptr.reload20, align 4
  br label %Default

.split12.split:                                   ; preds = %RunBlock
  br label %Default

44:                                               ; preds = %RunBlock, %dispatchBB.split
  %swVar.ptr.reload = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 21655, ptr %swVar.ptr.reload, align 4
  br label %Default

.split13:                                         ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split13, %44, %.split12.split, %.split12, %39, %.split11.split, %.split11, %36, %.split10.split, %.split10, %34, %.split9, %33, %.split8.split, %.split8, %27, %.split7.split, %.split7, %25, %.split6.split, %.split6, %21, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #0 comdat {
  %.reg2mem37 = alloca ptr, align 8
  %.reg2mem35 = alloca ptr, align 8
  %.reg2mem33 = alloca ptr, align 8
  %.reg2mem31 = alloca ptr, align 8
  %.reg2mem27 = alloca ptr, align 8
  %.reg2mem24 = alloca ptr, align 8
  %.reg2mem21 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %.reg2mem17 = alloca ptr, align 8
  %.reg2mem14 = alloca ptr, align 8
  %.reg2mem12 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem6 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %1
  %2 = load i32, ptr %VMpc, align 4
  %3 = add i32 %2, 1
  %4 = add i32 %2, 2
  %5 = getelementptr [12 x i32], ptr @opcodes.15, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [12 x i32], ptr @opcodes.15, i32 0, i32 %3
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %.reg2mem6, align 4
  %9 = getelementptr [12 x i32], ptr @opcodes.15, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %.reg2mem10, align 4
  %11 = add i32 %2, 3
  store i32 %11, ptr %VMpc, align 4
  switch i32 %6, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload9 = load volatile i32, ptr %.reg2mem6, align 4
  switch i32 %.reload9, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %15
    i32 30612, label %.split3
    i32 5853, label %.split3.split
    i32 28100, label %27
    i32 1142, label %.split4
    i32 281, label %28
    i32 20537, label %.split5
    i32 15921, label %.split5.split
    i32 8945, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload8 = load volatile i32, ptr %.reg2mem6, align 4
  store i32 %.reload8, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %12 = load i32, ptr %VMJmpFlag, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload7 = load volatile i32, ptr %.reg2mem6, align 4
  store i32 %.reload7, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload11 = load volatile i32, ptr %.reg2mem10, align 4
  store i32 %.reload11, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  br label %Default

.split.split:                                     ; preds = %RunBlock
  store i32 32278, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 32278, label %newBB
    i32 2446, label %15
    i32 590, label %27
    i32 840, label %28
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %14 = select i1 true, i32 2446, i32 840
  store i32 %14, ptr %.reg2mem12, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload13 = load volatile i32, ptr %.reg2mem12, align 4
  store i32 %.reload13, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

15:                                               ; preds = %RunBlock, %dispatchBB.split
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  store ptr %17, ptr %.reg2mem14, align 8
  %18 = alloca ptr, align 8
  store ptr %18, ptr %.reg2mem17, align 8
  store ptr %0, ptr %16, align 8
  %.reload20 = load volatile ptr, ptr %.reg2mem17, align 8
  call void @llvm.va_start.p0(ptr %.reload20)
  %.reload19 = load volatile ptr, ptr %.reg2mem17, align 8
  %19 = load ptr, ptr %.reload19, align 8
  %20 = load ptr, ptr %16, align 8
  %21 = load ptr, ptr @printf_ll, align 8
  %Call___acrt_iob_func = getelementptr i8, ptr %21, i64 378038182562629774
  %22 = call ptr %Call___acrt_iob_func(i32 noundef 1)
  %23 = load ptr, ptr getelementptr ([2 x ptr], ptr @printf_ll, i64 0, i64 1), align 8
  %Call__vfprintf_l = getelementptr i8, ptr %23, i64 378038182562629774
  %24 = call i32 %Call__vfprintf_l(ptr noundef %22, ptr noundef %20, ptr noundef null, ptr noundef %19)
  %.reload16 = load volatile ptr, ptr %.reg2mem14, align 8
  store i32 %24, ptr %.reload16, align 4
  br label %Default

.split3:                                          ; preds = %RunBlock
  %.reload18 = load volatile ptr, ptr %.reg2mem17, align 8
  call void @llvm.va_end.p0(ptr %.reload18)
  %.reload15 = load volatile ptr, ptr %.reg2mem14, align 8
  %25 = load i32, ptr %.reload15, align 4
  store i32 %25, ptr %.reg2mem, align 4
  %26 = select i1 true, i32 590, i32 840
  store i32 %26, ptr %swVar.ptr, align 4
  br label %Default

.split3.split:                                    ; preds = %RunBlock
  br label %Default

27:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split4:                                          ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

28:                                               ; preds = %RunBlock, %dispatchBB.split
  %29 = alloca ptr, align 8
  store ptr %29, ptr %.reg2mem21, align 8
  %30 = alloca i32, align 4
  store ptr %30, ptr %.reg2mem24, align 8
  br label %Default

.split5:                                          ; preds = %RunBlock
  %31 = alloca ptr, align 8
  store ptr %31, ptr %.reg2mem27, align 8
  %.reload23 = load volatile ptr, ptr %.reg2mem21, align 8
  store ptr %0, ptr %.reload23, align 8
  %.reload30 = load volatile ptr, ptr %.reg2mem27, align 8
  call void @llvm.va_start.p0(ptr %.reload30)
  %.reload29 = load volatile ptr, ptr %.reg2mem27, align 8
  %32 = load ptr, ptr %.reload29, align 8
  store ptr %32, ptr %.reg2mem31, align 8
  %.reload22 = load volatile ptr, ptr %.reg2mem21, align 8
  %33 = load ptr, ptr %.reload22, align 8
  store ptr %33, ptr %.reg2mem33, align 8
  %34 = load ptr, ptr @printf_ll, align 8
  %Call___acrt_iob_func1 = getelementptr i8, ptr %34, i64 378038182562629774
  %35 = call ptr %Call___acrt_iob_func1(i32 noundef 1)
  store ptr %35, ptr %.reg2mem35, align 8
  %36 = load ptr, ptr getelementptr ([2 x ptr], ptr @printf_ll, i64 0, i64 1), align 8
  store ptr %36, ptr %.reg2mem37, align 8
  br label %Default

.split5.split:                                    ; preds = %RunBlock
  %.reload38 = load volatile ptr, ptr %.reg2mem37, align 8
  %Call__vfprintf_l2 = getelementptr i8, ptr %.reload38, i64 378038182562629774
  %.reload32 = load volatile ptr, ptr %.reg2mem31, align 8
  %.reload34 = load volatile ptr, ptr %.reg2mem33, align 8
  %.reload36 = load volatile ptr, ptr %.reg2mem35, align 8
  %37 = call i32 %Call__vfprintf_l2(ptr noundef %.reload36, ptr noundef %.reload34, ptr noundef null, ptr noundef %.reload32)
  %.reload26 = load volatile ptr, ptr %.reg2mem24, align 8
  store i32 %37, ptr %.reload26, align 4
  %.reload28 = load volatile ptr, ptr %.reg2mem27, align 8
  call void @llvm.va_end.p0(ptr %.reload28)
  %.reload25 = load volatile ptr, ptr %.reg2mem24, align 8
  %38 = load i32, ptr %.reload25, align 4
  store i32 2446, ptr %swVar.ptr, align 4
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split5.split, %.split5, %28, %27, %.split3.split, %.split3, %15, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem107 = alloca i32, align 4
  %.reg2mem102 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem95 = alloca i32, align 4
  %.reg2mem89 = alloca i32, align 4
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem80 = alloca ptr, align 8
  %.reg2mem74 = alloca ptr, align 8
  %.reg2mem68 = alloca ptr, align 8
  %.reg2mem64 = alloca ptr, align 8
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem59 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem53 = alloca ptr, align 8
  %.reg2mem47 = alloca ptr, align 8
  %.reg2mem41 = alloca ptr, align 8
  %.reg2mem37 = alloca ptr, align 8
  %.reg2mem35 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %fix_stack_point = bitcast i32 0 to i32
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %1 = load i32, ptr %VMpc, align 4
  %2 = add i32 %1, 1
  %3 = add i32 %1, 2
  %4 = getelementptr [12 x i32], ptr @opcodes.18, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [12 x i32], ptr @opcodes.18, i32 0, i32 %2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %.reg2mem, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.18, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem33, align 4
  %10 = add i32 %1, 3
  store i32 %10, ptr %VMpc, align 4
  switch i32 %5, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload32 = load volatile i32, ptr %.reg2mem, align 4
  switch i32 %.reload32, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %14
    i32 30612, label %.split29
    i32 5853, label %.split29.split
    i32 28100, label %60
    i32 1142, label %61
    i32 281, label %.split30
    i32 20537, label %.split30.split
    i32 15921, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload31 = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload31, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %11 = load i32, ptr %VMJmpFlag, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload34 = load volatile i32, ptr %.reg2mem33, align 4
  store i32 %.reload34, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  store i32 26285, ptr %swVar.ptr, align 4
  br label %Default

.split.split:                                     ; preds = %RunBlock
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 26285, label %newBB
    i32 2997, label %14
    i32 14680, label %60
    i32 20976, label %61
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %13 = select i1 true, i32 2997, i32 20976
  store i32 %13, ptr %.reg2mem35, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload36 = load volatile i32, ptr %.reg2mem35, align 4
  store i32 %.reload36, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

14:                                               ; preds = %RunBlock, %dispatchBB.split
  %15 = alloca i32, align 4
  store ptr %15, ptr %.reg2mem37, align 8
  %16 = alloca i32, align 4
  store ptr %16, ptr %.reg2mem41, align 8
  %17 = alloca i32, align 4
  store ptr %17, ptr %.reg2mem47, align 8
  %18 = alloca ptr, align 8
  store ptr %18, ptr %.reg2mem53, align 8
  %.reload40 = load volatile ptr, ptr %.reg2mem37, align 8
  store i32 10, ptr %.reload40, align 4
  %.reload46 = load volatile ptr, ptr %.reg2mem41, align 8
  store i32 2, ptr %.reload46, align 4
  %.reload52 = load volatile ptr, ptr %.reg2mem47, align 8
  store i32 0, ptr %.reload52, align 4
  %19 = load ptr, ptr @main_ll, align 8
  %Call_goron_decrypt_string_2 = getelementptr i8, ptr %19, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_2(ptr @"dec2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 148))
  %.reload55 = load volatile ptr, ptr %.reg2mem53, align 8
  store ptr @"dec2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", ptr %.reload55, align 8
  %20 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 1), align 8
  %Call_goron_decrypt_string_3 = getelementptr i8, ptr %20, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_3(ptr @"dec3??_C@_02DPKJAMEF@?$CFd?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 201))
  %21 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 2), align 8
  %Call_scanf = getelementptr i8, ptr %21, i64 -5672307954545172313
  %.reload51 = load volatile ptr, ptr %.reg2mem47, align 8
  %22 = call i32 (ptr, ...) %Call_scanf(ptr noundef @"dec3??_C@_02DPKJAMEF@?$CFd?$AA@", ptr noundef %.reload51)
  %.reload50 = load volatile ptr, ptr %.reg2mem47, align 8
  %23 = load i32, ptr %.reload50, align 4
  store i32 %23, ptr %.reg2mem56, align 4
  %.reload45 = load volatile ptr, ptr %.reg2mem41, align 8
  %24 = load i32, ptr %.reload45, align 4
  store i32 %24, ptr %.reg2mem59, align 4
  %.reload57 = load volatile i32, ptr %.reg2mem56, align 4
  %25 = sub i32 %.reload57, 838238811
  %.reload60 = load volatile i32, ptr %.reg2mem59, align 4
  %26 = add i32 %25, %.reload60
  store i32 %26, ptr %.reg2mem62, align 4
  br label %Default

.split29:                                         ; preds = %RunBlock
  %.reload63 = load volatile i32, ptr %.reg2mem62, align 4
  %27 = add i32 %.reload63, 838238811
  %.reload58 = load volatile i32, ptr %.reg2mem56, align 4
  %.reload61 = load volatile i32, ptr %.reg2mem59, align 4
  %28 = add nsw i32 %.reload58, %.reload61
  %.reload44 = load volatile ptr, ptr %.reg2mem41, align 8
  store i32 %27, ptr %.reload44, align 4
  br label %Default

.split29.split:                                   ; preds = %RunBlock
  %.reload54 = load volatile ptr, ptr %.reg2mem53, align 8
  %29 = load ptr, ptr %.reload54, align 8
  %30 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 3), align 8
  %Call_goron_decrypt_string_1 = getelementptr i8, ptr %30, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_1(ptr @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 88))
  %31 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 4), align 8
  %Call_printf = getelementptr i8, ptr %31, i64 -5672307954545172313
  %32 = call i32 (ptr, ...) %Call_printf(ptr noundef @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr noundef %29)
  %.reload39 = load volatile ptr, ptr %.reg2mem37, align 8
  %33 = load i32, ptr %.reload39, align 4
  %.reload49 = load volatile ptr, ptr %.reg2mem47, align 8
  %34 = load i32, ptr %.reload49, align 4
  %35 = sub i32 %33, -207210415
  %36 = sub i32 %35, %34
  %37 = add i32 %36, -207210415
  %38 = sub nsw i32 %33, %34
  %.reload43 = load volatile ptr, ptr %.reg2mem41, align 8
  %39 = load i32, ptr %.reload43, align 4
  %40 = add i32 %37, -1147390041
  %41 = add i32 %40, %39
  %42 = sub i32 %41, -1147390041
  %43 = add nsw i32 %37, %39
  %44 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 5), align 8
  %Call_goron_decrypt_string_4 = getelementptr i8, ptr %44, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_4(ptr @"dec4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 251))
  %45 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 4), align 8
  %Call_printf20 = getelementptr i8, ptr %45, i64 -5672307954545172313
  %46 = call i32 (ptr, ...) %Call_printf20(ptr noundef @"dec4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", i32 noundef %42)
  %.reload38 = load volatile ptr, ptr %.reg2mem37, align 8
  %47 = load i32, ptr %.reload38, align 4
  %.reload48 = load volatile ptr, ptr %.reg2mem47, align 8
  %48 = load i32, ptr %.reload48, align 4
  %49 = sub i32 %47, 245262435
  %50 = sub i32 %49, %48
  %51 = add i32 %50, 245262435
  %52 = sub nsw i32 %47, %48
  %.reload42 = load volatile ptr, ptr %.reg2mem41, align 8
  %53 = load i32, ptr %.reload42, align 4
  %54 = add i32 %51, -1695802425
  %55 = add i32 %54, %53
  %56 = sub i32 %55, -1695802425
  %57 = add nsw i32 %51, %53
  %58 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 6), align 8
  %Call_hello = getelementptr i8, ptr %58, i64 -5672307954545172313
  call void %Call_hello(i32 noundef %56)
  %59 = select i1 true, i32 14680, i32 20976
  store i32 %59, ptr %swVar.ptr, align 4
  br label %Default

60:                                               ; preds = %RunBlock, %dispatchBB.split
  ret void

61:                                               ; preds = %RunBlock, %dispatchBB.split
  %62 = alloca i32, align 4
  store ptr %62, ptr %.reg2mem64, align 8
  %63 = alloca i32, align 4
  store ptr %63, ptr %.reg2mem68, align 8
  %64 = alloca i32, align 4
  store ptr %64, ptr %.reg2mem74, align 8
  %65 = alloca ptr, align 8
  store ptr %65, ptr %.reg2mem80, align 8
  %.reload67 = load volatile ptr, ptr %.reg2mem64, align 8
  store i32 10, ptr %.reload67, align 4
  %.reload73 = load volatile ptr, ptr %.reg2mem68, align 8
  store i32 2, ptr %.reload73, align 4
  %.reload79 = load volatile ptr, ptr %.reg2mem74, align 8
  store i32 0, ptr %.reload79, align 4
  %66 = load ptr, ptr @main_ll, align 8
  %Call_goron_decrypt_string_221 = getelementptr i8, ptr %66, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_221(ptr @"dec2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 148))
  %.reload82 = load volatile ptr, ptr %.reg2mem80, align 8
  store ptr @"dec2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", ptr %.reload82, align 8
  %67 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 1), align 8
  %Call_goron_decrypt_string_322 = getelementptr i8, ptr %67, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_322(ptr @"dec3??_C@_02DPKJAMEF@?$CFd?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 201))
  %68 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 2), align 8
  %Call_scanf23 = getelementptr i8, ptr %68, i64 -5672307954545172313
  %.reload78 = load volatile ptr, ptr %.reg2mem74, align 8
  %69 = call i32 (ptr, ...) %Call_scanf23(ptr noundef @"dec3??_C@_02DPKJAMEF@?$CFd?$AA@", ptr noundef %.reload78)
  %.reload77 = load volatile ptr, ptr %.reg2mem74, align 8
  %70 = load i32, ptr %.reload77, align 4
  store i32 %70, ptr %.reg2mem83, align 4
  %.reload72 = load volatile ptr, ptr %.reg2mem68, align 8
  %71 = load i32, ptr %.reload72, align 4
  store i32 %71, ptr %.reg2mem89, align 4
  %.reload87 = load volatile i32, ptr %.reg2mem83, align 4
  %.reload93 = load volatile i32, ptr %.reg2mem89, align 4
  %72 = shl i32 %.reload87, %.reload93
  %73 = add i32 0, 1909913299
  store i32 %73, ptr %.reg2mem95, align 4
  br label %Default

.split30:                                         ; preds = %RunBlock
  %.reload85 = load volatile i32, ptr %.reg2mem83, align 4
  %.reload96 = load volatile i32, ptr %.reg2mem95, align 4
  %74 = sub i32 %.reload96, %.reload85
  %75 = sub i32 %74, 1909913299
  %.reload86 = load volatile i32, ptr %.reg2mem83, align 4
  %76 = sub i32 0, %.reload86
  %77 = sub i32 %75, -1705246259
  %.reload91 = load volatile i32, ptr %.reg2mem89, align 4
  %78 = add i32 %77, %.reload91
  %79 = add i32 %78, -1705246259
  %.reload92 = load volatile i32, ptr %.reg2mem89, align 4
  %80 = add i32 %75, %.reload92
  %.reload84 = load volatile i32, ptr %.reg2mem83, align 4
  %81 = sub i32 0, %.reload84
  %.reload90 = load volatile i32, ptr %.reg2mem89, align 4
  %82 = sub i32 0, %.reload90
  %83 = add i32 %81, %82
  %84 = sub i32 0, %83
  %.reload88 = load volatile i32, ptr %.reg2mem83, align 4
  %.reload94 = load volatile i32, ptr %.reg2mem89, align 4
  %85 = add nsw i32 %.reload88, %.reload94
  %.reload71 = load volatile ptr, ptr %.reg2mem68, align 8
  store i32 %84, ptr %.reload71, align 4
  %.reload81 = load volatile ptr, ptr %.reg2mem80, align 8
  %86 = load ptr, ptr %.reload81, align 8
  %87 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 3), align 8
  %Call_goron_decrypt_string_124 = getelementptr i8, ptr %87, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_124(ptr @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 88))
  %88 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 4), align 8
  %Call_printf25 = getelementptr i8, ptr %88, i64 -5672307954545172313
  %89 = call i32 (ptr, ...) %Call_printf25(ptr noundef @"dec1??_C@_03OFAPEBGM@?$CFs?6?$AA@", ptr noundef %86)
  %.reload66 = load volatile ptr, ptr %.reg2mem64, align 8
  %90 = load i32, ptr %.reload66, align 4
  store i32 %90, ptr %.reg2mem97, align 4
  %.reload76 = load volatile ptr, ptr %.reg2mem74, align 8
  %91 = load i32, ptr %.reload76, align 4
  store i32 %91, ptr %.reg2mem102, align 4
  %92 = add i32 0, -1895323388
  %.reload99 = load volatile i32, ptr %.reg2mem97, align 4
  %93 = sub i32 %92, %.reload99
  %94 = sub i32 %93, -1895323388
  store i32 %94, ptr %.reg2mem107, align 4
  %.reload100 = load volatile i32, ptr %.reg2mem97, align 4
  %95 = sub i32 0, %.reload100
  %.reload108 = load volatile i32, ptr %.reg2mem107, align 4
  %96 = add i32 %.reload108, 1928533105
  %.reload104 = load volatile i32, ptr %.reg2mem102, align 4
  %97 = add i32 %96, %.reload104
  store i32 %97, ptr %.reg2mem110, align 4
  br label %Default

.split30.split:                                   ; preds = %RunBlock
  %.reload111 = load volatile i32, ptr %.reg2mem110, align 4
  %98 = sub i32 %.reload111, 1928533105
  %.reload105 = load volatile i32, ptr %.reg2mem102, align 4
  %.reload109 = load volatile i32, ptr %.reg2mem107, align 4
  %99 = add i32 %.reload109, %.reload105
  %.reload98 = load volatile i32, ptr %.reg2mem97, align 4
  %100 = sub i32 %.reload98, -214369548
  %.reload103 = load volatile i32, ptr %.reg2mem102, align 4
  %101 = sub i32 %100, %.reload103
  %102 = add i32 %101, -214369548
  %.reload101 = load volatile i32, ptr %.reg2mem97, align 4
  %.reload106 = load volatile i32, ptr %.reg2mem102, align 4
  %103 = sub nsw i32 %.reload101, %.reload106
  %.reload70 = load volatile ptr, ptr %.reg2mem68, align 8
  %104 = load i32, ptr %.reload70, align 4
  %105 = sub i32 %102, -1281552477
  %106 = sub i32 %105, %104
  %107 = add i32 %106, -1281552477
  %108 = sub i32 %102, %104
  %109 = mul i32 %107, %104
  %110 = add i32 0, -611584464
  %111 = sub i32 %110, %102
  %112 = sub i32 %111, -611584464
  %113 = sub i32 0, %102
  %114 = sub i32 0, %104
  %115 = sub i32 %112, %114
  %116 = add i32 %112, %104
  %117 = shl i32 %102, %104
  %118 = sub i32 %102, -1755546255
  %119 = add i32 %118, %104
  %120 = add i32 %119, -1755546255
  %121 = add nsw i32 %102, %104
  %122 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 5), align 8
  %Call_goron_decrypt_string_426 = getelementptr i8, ptr %122, i64 -5672307954545172313
  call void %Call_goron_decrypt_string_426(ptr @"dec4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", ptr getelementptr inbounds ([321 x i8], ptr @EncryptedStringTable, i32 0, i32 251))
  %123 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 4), align 8
  %Call_printf27 = getelementptr i8, ptr %123, i64 -5672307954545172313
  %124 = call i32 (ptr, ...) %Call_printf27(ptr noundef @"dec4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", i32 noundef %120)
  %.reload65 = load volatile ptr, ptr %.reg2mem64, align 8
  %125 = load i32, ptr %.reload65, align 4
  %.reload75 = load volatile ptr, ptr %.reg2mem74, align 8
  %126 = load i32, ptr %.reload75, align 4
  %127 = sub i32 %125, 917043381
  %128 = sub i32 %127, %126
  %129 = add i32 %128, 917043381
  %130 = sub i32 %125, %126
  %131 = mul i32 %129, %126
  %132 = sub i32 0, -1105411851
  %133 = sub i32 %132, %125
  %134 = add i32 %133, -1105411851
  %135 = sub i32 0, %125
  %136 = sub i32 0, %126
  %137 = sub i32 %134, %136
  %138 = add i32 %134, %126
  %139 = shl i32 %125, %126
  %140 = shl i32 %125, %126
  %141 = add i32 %125, -1504218133
  %142 = sub i32 %141, %126
  %143 = sub i32 %142, -1504218133
  %144 = sub i32 %125, %126
  %145 = mul i32 %143, %126
  %146 = sub i32 0, %126
  %147 = add i32 %125, %146
  %148 = sub i32 %125, %126
  %149 = mul i32 %147, %126
  %150 = sub i32 %125, -1874273051
  %151 = sub i32 %150, %126
  %152 = add i32 %151, -1874273051
  %153 = sub nsw i32 %125, %126
  %.reload69 = load volatile ptr, ptr %.reg2mem68, align 8
  %154 = load i32, ptr %.reload69, align 4
  %155 = shl i32 %152, %154
  %156 = add i32 %152, 1035223934
  %157 = add i32 %156, %154
  %158 = sub i32 %157, 1035223934
  %159 = add nsw i32 %152, %154
  %160 = load ptr, ptr getelementptr ([7 x ptr], ptr @main_ll, i64 0, i64 6), align 8
  %Call_hello28 = getelementptr i8, ptr %160, i64 -5672307954545172313
  call void %Call_hello28(i32 noundef %158)
  store i32 2997, ptr %swVar.ptr, align 4
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split30.split, %.split30, %61, %.split29.split, %.split29, %14, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @scanf(ptr noundef %0, ...) #0 comdat {
  %Call__vfscanf_l.reg2mem = alloca ptr, align 8
  %.reg2mem9 = alloca ptr, align 8
  %.reg2mem7 = alloca ptr, align 8
  %.reg2mem5 = alloca ptr, align 8
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start.p0(ptr %4)
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %1
  %5 = load i32, ptr %VMpc, align 4
  %6 = add i32 %5, 1
  %7 = add i32 %5, 2
  %8 = getelementptr [6 x i32], ptr @opcodes.21, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [6 x i32], ptr @opcodes.21, i32 0, i32 %6
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %.reg2mem, align 4
  %12 = getelementptr [6 x i32], ptr @opcodes.21, i32 0, i32 %7
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %.reg2mem3, align 4
  %14 = add i32 %5, 3
  store i32 %14, ptr %VMpc, align 4
  switch i32 %9, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload2 = load volatile i32, ptr %.reg2mem, align 4
  switch i32 %.reload2, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload1 = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload1, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %15 = load i32, ptr %VMJmpFlag, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload4 = load volatile i32, ptr %.reg2mem3, align 4
  store i32 %.reload4, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %17 = load ptr, ptr %4, align 8
  store ptr %17, ptr %.reg2mem5, align 8
  %18 = load ptr, ptr %2, align 8
  store ptr %18, ptr %.reg2mem7, align 8
  %19 = load ptr, ptr @scanf_ll, align 8
  %Call___acrt_iob_func = getelementptr i8, ptr %19, i64 -5840711461507808789
  %20 = call ptr %Call___acrt_iob_func(i32 noundef 0)
  store ptr %20, ptr %.reg2mem9, align 8
  %21 = load ptr, ptr getelementptr ([2 x ptr], ptr @scanf_ll, i64 0, i64 1), align 8
  %Call__vfscanf_l = getelementptr i8, ptr %21, i64 -5840711461507808789
  store ptr %Call__vfscanf_l, ptr %Call__vfscanf_l.reg2mem, align 8
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %.reload6 = load volatile ptr, ptr %.reg2mem5, align 8
  %.reload8 = load volatile ptr, ptr %.reg2mem7, align 8
  %.reload10 = load volatile ptr, ptr %.reg2mem9, align 8
  %Call__vfscanf_l.reload = load volatile ptr, ptr %Call__vfscanf_l.reg2mem, align 8
  %22 = call i32 %Call__vfscanf_l.reload(ptr noundef %.reload10, ptr noundef %.reload8, ptr noundef null, ptr noundef %.reload6)
  store i32 %22, ptr %3, align 4
  call void @llvm.va_end.p0(ptr %4)
  %23 = load i32, ptr %3, align 4
  ret i32 %23

Default:                                          ; preds = %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %.reg2mem27 = alloca ptr, align 8
  %.reg2mem24 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem20 = alloca ptr, align 8
  %.reg2mem18 = alloca ptr, align 8
  %.reg2mem16 = alloca ptr, align 8
  %.reg2mem13 = alloca ptr, align 8
  %.reg2mem11 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %4
  %5 = load i32, ptr %VMpc, align 4
  %6 = add i32 %5, 1
  %7 = add i32 %5, 2
  %8 = getelementptr [12 x i32], ptr @opcodes.26, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [12 x i32], ptr @opcodes.26, i32 0, i32 %6
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %.reg2mem5, align 4
  %12 = getelementptr [12 x i32], ptr @opcodes.26, i32 0, i32 %7
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %.reg2mem9, align 4
  %14 = add i32 %5, 3
  store i32 %14, ptr %VMpc, align 4
  switch i32 %9, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload8 = load volatile i32, ptr %.reg2mem5, align 4
  switch i32 %.reload8, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %18
    i32 30612, label %.split2
    i32 5853, label %.split2.split
    i32 28100, label %30
    i32 1142, label %.split3
    i32 281, label %31
    i32 20537, label %.split4
    i32 15921, label %.split4.split
    i32 8945, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload7 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload7, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %15 = load i32, ptr %VMJmpFlag, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload10 = load volatile i32, ptr %.reg2mem9, align 4
  store i32 %.reload10, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  br label %Default

.split.split:                                     ; preds = %RunBlock
  store i32 38, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 38, label %newBB
    i32 7719, label %18
    i32 21238, label %30
    i32 2437, label %31
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %17 = select i1 true, i32 7719, i32 2437
  store i32 %17, ptr %.reg2mem11, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload12 = load volatile i32, ptr %.reg2mem11, align 4
  store i32 %.reload12, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

18:                                               ; preds = %RunBlock, %dispatchBB.split
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  store ptr %22, ptr %.reg2mem13, align 8
  store ptr %3, ptr %19, align 8
  store ptr %2, ptr %20, align 8
  store ptr %1, ptr %21, align 8
  %.reload15 = load volatile ptr, ptr %.reg2mem13, align 8
  store ptr %0, ptr %.reload15, align 8
  %23 = load ptr, ptr %19, align 8
  store ptr %23, ptr %.reg2mem16, align 8
  %24 = load ptr, ptr %20, align 8
  store ptr %24, ptr %.reg2mem18, align 8
  %25 = load ptr, ptr %21, align 8
  store ptr %25, ptr %.reg2mem20, align 8
  br label %Default

.split2:                                          ; preds = %RunBlock
  %.reload14 = load volatile ptr, ptr %.reg2mem13, align 8
  %26 = load ptr, ptr %.reload14, align 8
  %27 = load ptr, ptr @_vsprintf_l_ll, align 8
  %Call__vsnprintf_l = getelementptr i8, ptr %27, i64 -2910666049604637224
  %.reload17 = load volatile ptr, ptr %.reg2mem16, align 8
  %.reload19 = load volatile ptr, ptr %.reg2mem18, align 8
  %.reload21 = load volatile ptr, ptr %.reg2mem20, align 8
  %28 = call i32 %Call__vsnprintf_l(ptr noundef %26, i64 noundef -1, ptr noundef %.reload21, ptr noundef %.reload19, ptr noundef %.reload17)
  store i32 %28, ptr %.reg2mem22, align 4
  br label %Default

.split2.split:                                    ; preds = %RunBlock
  %.reload23 = load volatile i32, ptr %.reg2mem22, align 4
  store i32 %.reload23, ptr %.reg2mem, align 4
  %29 = select i1 true, i32 21238, i32 2437
  store i32 %29, ptr %swVar.ptr, align 4
  br label %Default

30:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split3:                                          ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

31:                                               ; preds = %RunBlock, %dispatchBB.split
  %32 = alloca ptr, align 8
  store ptr %32, ptr %.reg2mem24, align 8
  %33 = alloca ptr, align 8
  store ptr %33, ptr %.reg2mem27, align 8
  br label %Default

.split4:                                          ; preds = %RunBlock
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %.reload26 = load volatile ptr, ptr %.reg2mem24, align 8
  store ptr %3, ptr %.reload26, align 8
  %.reload29 = load volatile ptr, ptr %.reg2mem27, align 8
  store ptr %2, ptr %.reload29, align 8
  store ptr %1, ptr %34, align 8
  store ptr %0, ptr %35, align 8
  %.reload25 = load volatile ptr, ptr %.reg2mem24, align 8
  %36 = load ptr, ptr %.reload25, align 8
  %.reload28 = load volatile ptr, ptr %.reg2mem27, align 8
  %37 = load ptr, ptr %.reload28, align 8
  %38 = load ptr, ptr %34, align 8
  %39 = load ptr, ptr %35, align 8
  %40 = load ptr, ptr @_vsprintf_l_ll, align 8
  %Call__vsnprintf_l1 = getelementptr i8, ptr %40, i64 -2910666049604637224
  %41 = call i32 %Call__vsnprintf_l1(ptr noundef %39, i64 noundef -1, ptr noundef %38, ptr noundef %37, ptr noundef %36)
  store i32 7719, ptr %swVar.ptr, align 4
  br label %Default

.split4.split:                                    ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split4.split, %.split4, %31, %30, %.split2.split, %.split2, %18, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat {
  %.reg2mem120 = alloca i64, align 8
  %.reg2mem116 = alloca i64, align 8
  %.reg2mem113 = alloca i64, align 8
  %.reg2mem110 = alloca i64, align 8
  %.reg2mem108 = alloca i64, align 8
  %.reg2mem98 = alloca i64, align 8
  %.reg2mem96 = alloca ptr, align 8
  %.reg2mem94 = alloca i64, align 8
  %.reg2mem92 = alloca ptr, align 8
  %.reg2mem90 = alloca ptr, align 8
  %.reg2mem88 = alloca ptr, align 8
  %.reg2mem85 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem81 = alloca i32, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reload17.reg2mem = alloca ptr, align 8
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem75 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem71 = alloca i32, align 4
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem66 = alloca ptr, align 8
  %.reg2mem63 = alloca ptr, align 8
  %.reg2mem60 = alloca ptr, align 8
  %.reg2mem57 = alloca ptr, align 8
  %.reg2mem54 = alloca ptr, align 8
  %.reg2mem52 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem20.reg2mem = alloca ptr, align 8
  %.reg2mem15.reg2mem = alloca ptr, align 8
  %.reg2mem13.reg2mem = alloca ptr, align 8
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %.reg2mem11 = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %5
  %6 = load i32, ptr %VMpc, align 4
  %7 = add i32 %6, 1
  %8 = add i32 %6, 2
  %9 = getelementptr [12 x i32], ptr @opcodes.31, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [12 x i32], ptr @opcodes.31, i32 0, i32 %7
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %.reg2mem39, align 4
  %13 = getelementptr [12 x i32], ptr @opcodes.31, i32 0, i32 %8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %.reg2mem43, align 4
  %15 = add i32 %6, 3
  store i32 %15, ptr %VMpc, align 4
  switch i32 %10, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload42 = load volatile i32, ptr %.reg2mem39, align 4
  switch i32 %.reload42, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %19
    i32 30612, label %.split24
    i32 5853, label %.split24.split
    i32 28100, label %43
    i32 1142, label %.split25
    i32 281, label %.split25.split
    i32 20537, label %45
    i32 15921, label %.split26
    i32 8945, label %.split26.split
    i32 26285, label %47
    i32 2997, label %.split27
    i32 14680, label %.split27.split
    i32 20976, label %49
    i32 31891, label %.split28
    i32 21655, label %.split28.split
    i32 25906, label %50
    i32 18457, label %.split29
    i32 1323, label %.split29.split
    i32 28881, label %52
    i32 2240, label %.split30
    i32 9725, label %.split30.split
    i32 32278, label %55
    i32 2446, label %.split31
    i32 590, label %.split31.split
    i32 840, label %56
    i32 18587, label %.split32
    i32 16907, label %.split32.split
    i32 21237, label %58
    i32 23611, label %.split33
    i32 12617, label %.split33.split
    i32 12456, label %60
    i32 867, label %.split34
    i32 29533, label %61
    i32 6878, label %.split35
    i32 28223, label %.split35.split
    i32 17887, label %111
    i32 31597, label %.split36
    i32 20584, label %112
    i32 12212, label %.split37
    i32 31111, label %.split37.split
    i32 7578, label %114
    i32 17066, label %.split38
    i32 7629, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload41 = load volatile i32, ptr %.reg2mem39, align 4
  store i32 %.reload41, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %16 = load i32, ptr %VMJmpFlag, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload40 = load volatile i32, ptr %.reg2mem39, align 4
  store i32 %.reload40, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload44 = load volatile i32, ptr %.reg2mem43, align 4
  store i32 %.reload44, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem13 = alloca i1, align 1
  store ptr %.reg2mem13, ptr %.reg2mem13.reg2mem, align 8
  %.reg2mem15 = alloca ptr, align 8
  store ptr %.reg2mem15, ptr %.reg2mem15.reg2mem, align 8
  %.reg2mem20 = alloca i32, align 4
  store ptr %.reg2mem20, ptr %.reg2mem20.reg2mem, align 8
  %fix_stack_point = bitcast i32 0 to i32
  br label %Default

.split.split:                                     ; preds = %RunBlock
  store i32 38, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 38, label %newBB
    i32 7719, label %19
    i32 21238, label %43
    i32 2437, label %45
    i32 8855, label %47
    i32 11797, label %49
    i32 8365, label %50
    i32 32285, label %52
    i32 10450, label %55
    i32 30612, label %56
    i32 5853, label %58
    i32 28100, label %60
    i32 1142, label %61
    i32 281, label %111
    i32 20537, label %112
    i32 15921, label %114
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %18 = select i1 true, i32 7719, i32 1142
  store i32 %18, ptr %.reg2mem52, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload53 = load volatile i32, ptr %.reg2mem52, align 4
  store i32 %.reload53, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

19:                                               ; preds = %RunBlock, %dispatchBB.split
  %20 = alloca ptr, align 8
  store ptr %20, ptr %.reg2mem54, align 8
  %21 = alloca ptr, align 8
  store ptr %21, ptr %.reg2mem57, align 8
  %22 = alloca ptr, align 8
  store ptr %22, ptr %.reg2mem60, align 8
  %23 = alloca i64, align 8
  store ptr %23, ptr %.reg2mem63, align 8
  %24 = alloca ptr, align 8
  store ptr %24, ptr %.reg2mem66, align 8
  %25 = alloca i32, align 4
  %.reg2mem15.reload = load volatile ptr, ptr %.reg2mem15.reg2mem, align 8
  store ptr %25, ptr %.reg2mem15.reload, align 8
  %.reload56 = load volatile ptr, ptr %.reg2mem54, align 8
  store ptr %4, ptr %.reload56, align 8
  %.reload59 = load volatile ptr, ptr %.reg2mem57, align 8
  store ptr %3, ptr %.reload59, align 8
  %.reload62 = load volatile ptr, ptr %.reg2mem60, align 8
  store ptr %2, ptr %.reload62, align 8
  %.reload65 = load volatile ptr, ptr %.reg2mem63, align 8
  store i64 %1, ptr %.reload65, align 8
  br label %Default

.split24:                                         ; preds = %RunBlock
  %.reload68 = load volatile ptr, ptr %.reg2mem66, align 8
  store ptr %0, ptr %.reload68, align 8
  %.reload55 = load volatile ptr, ptr %.reg2mem54, align 8
  %26 = load ptr, ptr %.reload55, align 8
  %.reload58 = load volatile ptr, ptr %.reg2mem57, align 8
  %27 = load ptr, ptr %.reload58, align 8
  %.reload61 = load volatile ptr, ptr %.reg2mem60, align 8
  %28 = load ptr, ptr %.reload61, align 8
  %.reload64 = load volatile ptr, ptr %.reg2mem63, align 8
  %29 = load i64, ptr %.reload64, align 8
  %.reload67 = load volatile ptr, ptr %.reg2mem66, align 8
  %30 = load ptr, ptr %.reload67, align 8
  %31 = load ptr, ptr @_vsnprintf_l_ll, align 8
  %Call___local_stdio_printf_options = getelementptr i8, ptr %31, i64 3644335260559806637
  %32 = call ptr %Call___local_stdio_printf_options()
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 1
  %35 = xor i64 %33, 1
  %36 = or i64 %34, %35
  %37 = or i64 %33, 1
  %38 = load ptr, ptr getelementptr ([2 x ptr], ptr @_vsnprintf_l_ll, i64 0, i64 1), align 8
  %Call___stdio_common_vsprintf = getelementptr i8, ptr %38, i64 3644335260559806637
  %39 = call i32 %Call___stdio_common_vsprintf(i64 noundef %36, ptr noundef %30, i64 noundef %29, ptr noundef %28, ptr noundef %27, ptr noundef %26)
  %.reg2mem15.reload46 = load volatile ptr, ptr %.reg2mem15.reg2mem, align 8
  %.reload19 = load ptr, ptr %.reg2mem15.reload46, align 8
  store i32 %39, ptr %.reload19, align 4
  %.reg2mem15.reload47 = load volatile ptr, ptr %.reg2mem15.reg2mem, align 8
  %.reload18 = load ptr, ptr %.reg2mem15.reload47, align 8
  %40 = load i32, ptr %.reload18, align 4
  %41 = icmp slt i32 %40, 0
  %.reg2mem13.reload = load volatile ptr, ptr %.reg2mem13.reg2mem, align 8
  store i1 %41, ptr %.reg2mem13.reload, align 1
  %42 = select i1 true, i32 21238, i32 1142
  store i32 %42, ptr %.reg2mem69, align 4
  br label %Default

.split24.split:                                   ; preds = %RunBlock
  %.reload70 = load volatile i32, ptr %.reg2mem69, align 4
  store i32 %.reload70, ptr %swVar.ptr, align 4
  br label %Default

43:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem13.reload45 = load volatile ptr, ptr %.reg2mem13.reg2mem, align 8
  %.reload14 = load i1, ptr %.reg2mem13.reload45, align 1
  %44 = select i1 %.reload14, i32 2437, i32 8365
  store i32 %44, ptr %.reg2mem71, align 4
  br label %Default

.split25:                                         ; preds = %RunBlock
  %.reload72 = load volatile i32, ptr %.reg2mem71, align 4
  store i32 %.reload72, ptr %swVar.ptr, align 4
  br label %Default

.split25.split:                                   ; preds = %RunBlock
  br label %Default

45:                                               ; preds = %RunBlock, %dispatchBB.split
  %46 = select i1 true, i32 8855, i32 281
  store i32 %46, ptr %.reg2mem73, align 4
  br label %Default

.split26:                                         ; preds = %RunBlock
  %.reload74 = load volatile i32, ptr %.reg2mem73, align 4
  store i32 %.reload74, ptr %swVar.ptr, align 4
  br label %Default

.split26.split:                                   ; preds = %RunBlock
  br label %Default

47:                                               ; preds = %RunBlock, %dispatchBB.split
  %48 = select i1 true, i32 11797, i32 281
  store i32 %48, ptr %.reg2mem75, align 4
  br label %Default

.split27:                                         ; preds = %RunBlock
  %.reload76 = load volatile i32, ptr %.reg2mem75, align 4
  store i32 %.reload76, ptr %swVar.ptr, align 4
  br label %Default

.split27.split:                                   ; preds = %RunBlock
  br label %Default

49:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 30612, ptr %swVar.ptr, align 4
  br label %Default

.split28:                                         ; preds = %RunBlock
  %.reg2mem20.reload51 = load volatile ptr, ptr %.reg2mem20.reg2mem, align 8
  store i32 -1, ptr %.reg2mem20.reload51, align 4
  br label %Default

.split28.split:                                   ; preds = %RunBlock
  br label %Default

50:                                               ; preds = %RunBlock, %dispatchBB.split
  %51 = select i1 true, i32 32285, i32 20537
  store i32 %51, ptr %.reg2mem77, align 4
  br label %Default

.split29:                                         ; preds = %RunBlock
  %.reload78 = load volatile i32, ptr %.reg2mem77, align 4
  store i32 %.reload78, ptr %swVar.ptr, align 4
  br label %Default

.split29.split:                                   ; preds = %RunBlock
  br label %Default

52:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem15.reload48 = load volatile ptr, ptr %.reg2mem15.reg2mem, align 8
  %.reload17 = load ptr, ptr %.reg2mem15.reload48, align 8
  store ptr %.reload17, ptr %.reload17.reg2mem, align 8
  br label %Default

.split30:                                         ; preds = %RunBlock
  %.reload17.reload = load volatile ptr, ptr %.reload17.reg2mem, align 8
  %53 = load i32, ptr %.reload17.reload, align 4
  store i32 %53, ptr %.reg2mem79, align 4
  br label %Default

.split30.split:                                   ; preds = %RunBlock
  %.reload80 = load volatile i32, ptr %.reg2mem79, align 4
  store i32 %.reload80, ptr %.reg2mem11, align 4
  %54 = select i1 true, i32 10450, i32 20537
  store i32 %54, ptr %swVar.ptr, align 4
  br label %Default

55:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 30612, ptr %swVar.ptr, align 4
  br label %Default

.split31:                                         ; preds = %RunBlock
  %.reload12 = load i32, ptr %.reg2mem11, align 4
  %.reg2mem20.reload50 = load volatile ptr, ptr %.reg2mem20.reg2mem, align 8
  store i32 %.reload12, ptr %.reg2mem20.reload50, align 4
  br label %Default

.split31.split:                                   ; preds = %RunBlock
  br label %Default

56:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem20.reload = load volatile ptr, ptr %.reg2mem20.reg2mem, align 8
  %.reload21 = load i32, ptr %.reg2mem20.reload, align 4
  store i32 %.reload21, ptr %.reg2mem, align 4
  %57 = select i1 true, i32 5853, i32 15921
  store i32 %57, ptr %.reg2mem81, align 4
  br label %Default

.split32:                                         ; preds = %RunBlock
  %.reload82 = load volatile i32, ptr %.reg2mem81, align 4
  store i32 %.reload82, ptr %swVar.ptr, align 4
  br label %Default

.split32.split:                                   ; preds = %RunBlock
  br label %Default

58:                                               ; preds = %RunBlock, %dispatchBB.split
  %59 = select i1 true, i32 28100, i32 15921
  store i32 %59, ptr %.reg2mem83, align 4
  br label %Default

.split33:                                         ; preds = %RunBlock
  %.reload84 = load volatile i32, ptr %.reg2mem83, align 4
  store i32 %.reload84, ptr %swVar.ptr, align 4
  br label %Default

.split33.split:                                   ; preds = %RunBlock
  br label %Default

60:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split34:                                         ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

61:                                               ; preds = %RunBlock, %dispatchBB.split
  %62 = alloca ptr, align 8
  %63 = alloca ptr, align 8
  %64 = alloca ptr, align 8
  %65 = alloca i64, align 8
  %66 = alloca ptr, align 8
  %67 = alloca i32, align 4
  store ptr %67, ptr %.reg2mem85, align 8
  store ptr %4, ptr %62, align 8
  store ptr %3, ptr %63, align 8
  store ptr %2, ptr %64, align 8
  store i64 %1, ptr %65, align 8
  store ptr %0, ptr %66, align 8
  %68 = load ptr, ptr %62, align 8
  store ptr %68, ptr %.reg2mem88, align 8
  %69 = load ptr, ptr %63, align 8
  store ptr %69, ptr %.reg2mem90, align 8
  %70 = load ptr, ptr %64, align 8
  store ptr %70, ptr %.reg2mem92, align 8
  %71 = load i64, ptr %65, align 8
  store i64 %71, ptr %.reg2mem94, align 8
  %72 = load ptr, ptr %66, align 8
  store ptr %72, ptr %.reg2mem96, align 8
  %73 = load ptr, ptr @_vsnprintf_l_ll, align 8
  %Call___local_stdio_printf_options22 = getelementptr i8, ptr %73, i64 3644335260559806637
  %74 = call ptr %Call___local_stdio_printf_options22()
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %.reg2mem98, align 8
  %.reload106 = load volatile i64, ptr %.reg2mem98, align 8
  %76 = shl i64 %.reload106, 1
  %.reload105 = load volatile i64, ptr %.reg2mem98, align 8
  %77 = shl i64 %.reload105, 1
  %.reload102 = load volatile i64, ptr %.reg2mem98, align 8
  %78 = add i64 %.reload102, -8466991449196114643
  %79 = sub i64 %78, 1
  %80 = sub i64 %79, -8466991449196114643
  %.reload104 = load volatile i64, ptr %.reg2mem98, align 8
  %81 = sub i64 %.reload104, 1
  %82 = mul i64 %80, 1
  %83 = sub i64 0, -8051965061457309010
  store i64 %83, ptr %.reg2mem108, align 8
  br label %Default

.split35:                                         ; preds = %RunBlock
  %.reload101 = load volatile i64, ptr %.reg2mem98, align 8
  %.reload109 = load volatile i64, ptr %.reg2mem108, align 8
  %84 = sub i64 %.reload109, %.reload101
  %85 = add i64 %84, -8051965061457309010
  %.reload103 = load volatile i64, ptr %.reg2mem98, align 8
  %86 = sub i64 0, %.reload103
  %87 = add i64 %85, -9099029014451171052
  %88 = add i64 %87, 1
  %89 = sub i64 %88, -9099029014451171052
  %90 = add i64 %85, 1
  %.reload100 = load volatile i64, ptr %.reg2mem98, align 8
  %91 = xor i64 %.reload100, -1
  store i64 %91, ptr %.reg2mem110, align 8
  %92 = xor i64 1, -1
  store i64 %92, ptr %.reg2mem113, align 8
  %93 = xor i64 1950378284233987932, -1
  store i64 %93, ptr %.reg2mem116, align 8
  %.reload112 = load volatile i64, ptr %.reg2mem110, align 8
  %94 = and i64 %.reload112, 1950378284233987932
  %.reload99 = load volatile i64, ptr %.reg2mem98, align 8
  %.reload119 = load volatile i64, ptr %.reg2mem116, align 8
  %95 = and i64 %.reload99, %.reload119
  %.reload115 = load volatile i64, ptr %.reg2mem113, align 8
  %96 = and i64 %.reload115, 1950378284233987932
  %.reload118 = load volatile i64, ptr %.reg2mem116, align 8
  %97 = and i64 1, %.reload118
  %98 = or i64 %94, %95
  %99 = or i64 %96, %97
  %100 = xor i64 %98, %99
  store i64 %100, ptr %.reg2mem120, align 8
  br label %Default

.split35.split:                                   ; preds = %RunBlock
  %.reload111 = load volatile i64, ptr %.reg2mem110, align 8
  %.reload114 = load volatile i64, ptr %.reg2mem113, align 8
  %101 = or i64 %.reload111, %.reload114
  %102 = xor i64 %101, -1
  %.reload117 = load volatile i64, ptr %.reg2mem116, align 8
  %103 = or i64 1950378284233987932, %.reload117
  %104 = and i64 %102, %103
  %.reload121 = load volatile i64, ptr %.reg2mem120, align 8
  %105 = or i64 %.reload121, %104
  %.reload107 = load volatile i64, ptr %.reg2mem98, align 8
  %106 = or i64 %.reload107, 1
  %107 = load ptr, ptr getelementptr ([2 x ptr], ptr @_vsnprintf_l_ll, i64 0, i64 1), align 8
  %Call___stdio_common_vsprintf23 = getelementptr i8, ptr %107, i64 3644335260559806637
  %.reload89 = load volatile ptr, ptr %.reg2mem88, align 8
  %.reload91 = load volatile ptr, ptr %.reg2mem90, align 8
  %.reload93 = load volatile ptr, ptr %.reg2mem92, align 8
  %.reload95 = load volatile i64, ptr %.reg2mem94, align 8
  %.reload97 = load volatile ptr, ptr %.reg2mem96, align 8
  %108 = call i32 %Call___stdio_common_vsprintf23(i64 noundef %105, ptr noundef %.reload97, i64 noundef %.reload95, ptr noundef %.reload93, ptr noundef %.reload91, ptr noundef %.reload89)
  %.reload87 = load volatile ptr, ptr %.reg2mem85, align 8
  store i32 %108, ptr %.reload87, align 4
  %.reload86 = load volatile ptr, ptr %.reg2mem85, align 8
  %109 = load i32, ptr %.reload86, align 4
  %110 = icmp slt i32 %109, 0
  store i32 7719, ptr %swVar.ptr, align 4
  br label %Default

111:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 8855, ptr %swVar.ptr, align 4
  br label %Default

.split36:                                         ; preds = %RunBlock
  br label %Default

112:                                              ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem15.reload49 = load volatile ptr, ptr %.reg2mem15.reg2mem, align 8
  %.reload16 = load ptr, ptr %.reg2mem15.reload49, align 8
  %113 = load i32, ptr %.reload16, align 4
  br label %Default

.split37:                                         ; preds = %RunBlock
  store i32 32285, ptr %swVar.ptr, align 4
  br label %Default

.split37.split:                                   ; preds = %RunBlock
  br label %Default

114:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 5853, ptr %swVar.ptr, align 4
  br label %Default

.split38:                                         ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split38, %114, %.split37.split, %.split37, %112, %.split36, %111, %.split35.split, %.split35, %61, %60, %.split33.split, %.split33, %58, %.split32.split, %.split32, %56, %.split31.split, %.split31, %55, %.split30.split, %.split30, %52, %.split29.split, %.split29, %50, %.split28.split, %.split28, %49, %.split27.split, %.split27, %47, %.split26.split, %.split26, %45, %.split25.split, %.split25, %43, %.split24.split, %.split24, %19, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem7 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %1 = load i32, ptr %VMpc, align 4
  %2 = add i32 %1, 1
  %3 = add i32 %1, 2
  %4 = getelementptr [12 x i32], ptr @opcodes.36, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [12 x i32], ptr @opcodes.36, i32 0, i32 %2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %.reg2mem, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.36, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem5, align 4
  %10 = add i32 %1, 3
  store i32 %10, ptr %VMpc, align 4
  switch i32 %5, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload4 = load volatile i32, ptr %.reg2mem, align 4
  switch i32 %.reload4, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %14
    i32 30612, label %.split1
    i32 5853, label %.split1.split
    i32 28100, label %16
    i32 1142, label %17
    i32 281, label %.split2
    i32 20537, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload3 = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload3, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %11 = load i32, ptr %VMJmpFlag, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  br label %Default

.split.split:                                     ; preds = %RunBlock
  store i32 38, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 38, label %newBB
    i32 7719, label %14
    i32 21238, label %16
    i32 2437, label %17
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %13 = select i1 true, i32 7719, i32 2437
  store i32 %13, ptr %.reg2mem7, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload8 = load volatile i32, ptr %.reg2mem7, align 4
  store i32 %.reload8, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

14:                                               ; preds = %RunBlock, %dispatchBB.split
  %15 = select i1 true, i32 21238, i32 2437
  store i32 %15, ptr %.reg2mem9, align 4
  br label %Default

.split1:                                          ; preds = %RunBlock
  %.reload10 = load volatile i32, ptr %.reg2mem9, align 4
  store i32 %.reload10, ptr %swVar.ptr, align 4
  br label %Default

.split1.split:                                    ; preds = %RunBlock
  br label %Default

16:                                               ; preds = %RunBlock, %dispatchBB.split
  ret ptr @__local_stdio_printf_options._OptionsStorage

17:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 7719, ptr %swVar.ptr, align 4
  br label %Default

.split2:                                          ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split2, %17, %.split1.split, %.split1, %14, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %.reg2mem36 = alloca ptr, align 8
  %.reg2mem33 = alloca ptr, align 8
  %.reg2mem30 = alloca ptr, align 8
  %.reg2mem27 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %.reg2mem25 = alloca ptr, align 8
  %.reg2mem23 = alloca ptr, align 8
  %.reg2mem21 = alloca ptr, align 8
  %.reg2mem19 = alloca ptr, align 8
  %.reg2mem17 = alloca ptr, align 8
  %.reg2mem15 = alloca ptr, align 8
  %.reg2mem13 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem.reg2mem = alloca ptr, align 8
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem6 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %4
  %5 = load i32, ptr %VMpc, align 4
  %6 = add i32 %5, 1
  %7 = add i32 %5, 2
  %8 = getelementptr [12 x i32], ptr @opcodes.39, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [12 x i32], ptr @opcodes.39, i32 0, i32 %6
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %.reg2mem6, align 4
  %12 = getelementptr [12 x i32], ptr @opcodes.39, i32 0, i32 %7
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %.reg2mem10, align 4
  %14 = add i32 %5, 3
  store i32 %14, ptr %VMpc, align 4
  switch i32 %9, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload9 = load volatile i32, ptr %.reg2mem6, align 4
  switch i32 %.reload9, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %18
    i32 30612, label %.split3
    i32 5853, label %.split3.split
    i32 28100, label %33
    i32 1142, label %.split4
    i32 281, label %34
    i32 20537, label %.split5
    i32 15921, label %.split5.split
    i32 8945, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload8 = load volatile i32, ptr %.reg2mem6, align 4
  store i32 %.reload8, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %15 = load i32, ptr %VMJmpFlag, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload7 = load volatile i32, ptr %.reg2mem6, align 4
  store i32 %.reload7, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload11 = load volatile i32, ptr %.reg2mem10, align 4
  store i32 %.reload11, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem = alloca i32, align 4
  store ptr %.reg2mem, ptr %.reg2mem.reg2mem, align 8
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  store i32 15921, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 15921, label %newBB
    i32 8945, label %18
    i32 26285, label %33
    i32 2997, label %34
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %17 = select i1 true, i32 8945, i32 2997
  store i32 %17, ptr %.reg2mem13, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload14 = load volatile i32, ptr %.reg2mem13, align 4
  store i32 %.reload14, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

18:                                               ; preds = %RunBlock, %dispatchBB.split
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  store ptr %3, ptr %19, align 8
  store ptr %2, ptr %20, align 8
  store ptr %1, ptr %21, align 8
  store ptr %0, ptr %22, align 8
  %23 = load ptr, ptr %19, align 8
  store ptr %23, ptr %.reg2mem15, align 8
  %24 = load ptr, ptr %20, align 8
  store ptr %24, ptr %.reg2mem17, align 8
  %25 = load ptr, ptr %21, align 8
  store ptr %25, ptr %.reg2mem19, align 8
  %26 = load ptr, ptr %22, align 8
  store ptr %26, ptr %.reg2mem21, align 8
  %27 = load ptr, ptr @_vfprintf_l_ll, align 8
  store ptr %27, ptr %.reg2mem23, align 8
  br label %Default

.split3:                                          ; preds = %RunBlock
  %.reload24 = load volatile ptr, ptr %.reg2mem23, align 8
  %Call___local_stdio_printf_options = getelementptr i8, ptr %.reload24, i64 -5056546922401425291
  %28 = call ptr %Call___local_stdio_printf_options()
  store ptr %28, ptr %.reg2mem25, align 8
  br label %Default

.split3.split:                                    ; preds = %RunBlock
  %.reload26 = load volatile ptr, ptr %.reg2mem25, align 8
  %29 = load i64, ptr %.reload26, align 8
  %30 = load ptr, ptr getelementptr ([2 x ptr], ptr @_vfprintf_l_ll, i64 0, i64 1), align 8
  %Call___stdio_common_vfprintf = getelementptr i8, ptr %30, i64 -5056546922401425291
  %.reload16 = load volatile ptr, ptr %.reg2mem15, align 8
  %.reload18 = load volatile ptr, ptr %.reg2mem17, align 8
  %.reload20 = load volatile ptr, ptr %.reg2mem19, align 8
  %.reload22 = load volatile ptr, ptr %.reg2mem21, align 8
  %31 = call i32 %Call___stdio_common_vfprintf(i64 noundef %29, ptr noundef %.reload22, ptr noundef %.reload20, ptr noundef %.reload18, ptr noundef %.reload16)
  %.reg2mem.reload = load volatile ptr, ptr %.reg2mem.reg2mem, align 8
  store i32 %31, ptr %.reg2mem.reload, align 4
  %32 = select i1 true, i32 26285, i32 2997
  store i32 %32, ptr %swVar.ptr, align 4
  br label %Default

33:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem.reload12 = load volatile ptr, ptr %.reg2mem.reg2mem, align 8
  %.reload = load i32, ptr %.reg2mem.reload12, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split4:                                          ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

34:                                               ; preds = %RunBlock, %dispatchBB.split
  %35 = alloca ptr, align 8
  store ptr %35, ptr %.reg2mem27, align 8
  %36 = alloca ptr, align 8
  store ptr %36, ptr %.reg2mem30, align 8
  %37 = alloca ptr, align 8
  store ptr %37, ptr %.reg2mem33, align 8
  %38 = alloca ptr, align 8
  store ptr %38, ptr %.reg2mem36, align 8
  %.reload29 = load volatile ptr, ptr %.reg2mem27, align 8
  store ptr %3, ptr %.reload29, align 8
  %.reload32 = load volatile ptr, ptr %.reg2mem30, align 8
  store ptr %2, ptr %.reload32, align 8
  br label %Default

.split5:                                          ; preds = %RunBlock
  %.reload35 = load volatile ptr, ptr %.reg2mem33, align 8
  store ptr %1, ptr %.reload35, align 8
  %.reload38 = load volatile ptr, ptr %.reg2mem36, align 8
  store ptr %0, ptr %.reload38, align 8
  br label %Default

.split5.split:                                    ; preds = %RunBlock
  %.reload28 = load volatile ptr, ptr %.reg2mem27, align 8
  %39 = load ptr, ptr %.reload28, align 8
  %.reload31 = load volatile ptr, ptr %.reg2mem30, align 8
  %40 = load ptr, ptr %.reload31, align 8
  %.reload34 = load volatile ptr, ptr %.reg2mem33, align 8
  %41 = load ptr, ptr %.reload34, align 8
  %.reload37 = load volatile ptr, ptr %.reg2mem36, align 8
  %42 = load ptr, ptr %.reload37, align 8
  %43 = load ptr, ptr @_vfprintf_l_ll, align 8
  %Call___local_stdio_printf_options1 = getelementptr i8, ptr %43, i64 -5056546922401425291
  %44 = call ptr %Call___local_stdio_printf_options1()
  %45 = load i64, ptr %44, align 8
  %46 = load ptr, ptr getelementptr ([2 x ptr], ptr @_vfprintf_l_ll, i64 0, i64 1), align 8
  %Call___stdio_common_vfprintf2 = getelementptr i8, ptr %46, i64 -5056546922401425291
  %47 = call i32 %Call___stdio_common_vfprintf2(i64 noundef %45, ptr noundef %42, ptr noundef %41, ptr noundef %40, ptr noundef %39)
  store i32 8945, ptr %swVar.ptr, align 4
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split5.split, %.split5, %34, %33, %.split3.split, %.split3, %18, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #2

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfscanf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %.reg2mem42 = alloca ptr, align 8
  %.reg2mem40 = alloca ptr, align 8
  %.reg2mem38 = alloca ptr, align 8
  %.reg2mem36 = alloca ptr, align 8
  %.reg2mem33 = alloca ptr, align 8
  %.reg2mem30 = alloca ptr, align 8
  %.reg2mem27 = alloca ptr, align 8
  %.reg2mem24 = alloca ptr, align 8
  %.reload.reg2mem = alloca i32, align 4
  %.reg2mem22 = alloca ptr, align 8
  %.reg2mem20 = alloca ptr, align 8
  %.reg2mem18 = alloca ptr, align 8
  %.reg2mem16 = alloca ptr, align 8
  %.reg2mem14 = alloca ptr, align 8
  %.reg2mem12 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem6 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %4
  %5 = load i32, ptr %VMpc, align 4
  %6 = add i32 %5, 1
  %7 = add i32 %5, 2
  %8 = getelementptr [12 x i32], ptr @opcodes.46, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [12 x i32], ptr @opcodes.46, i32 0, i32 %6
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %.reg2mem6, align 4
  %12 = getelementptr [12 x i32], ptr @opcodes.46, i32 0, i32 %7
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %.reg2mem10, align 4
  %14 = add i32 %5, 3
  store i32 %14, ptr %VMpc, align 4
  switch i32 %9, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload9 = load volatile i32, ptr %.reg2mem6, align 4
  switch i32 %.reload9, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %18
    i32 30612, label %.split3
    i32 5853, label %.split3.split
    i32 28100, label %33
    i32 1142, label %.split4
    i32 281, label %34
    i32 20537, label %.split5
    i32 15921, label %.split5.split
    i32 8945, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload8 = load volatile i32, ptr %.reg2mem6, align 4
  store i32 %.reload8, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %15 = load i32, ptr %VMJmpFlag, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload7 = load volatile i32, ptr %.reg2mem6, align 4
  store i32 %.reload7, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload11 = load volatile i32, ptr %.reg2mem10, align 4
  store i32 %.reload11, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  store i32 38, ptr %swVar.ptr, align 4
  br label %Default

.split.split:                                     ; preds = %RunBlock
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 38, label %newBB
    i32 7719, label %18
    i32 21238, label %33
    i32 2437, label %34
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %17 = select i1 true, i32 7719, i32 2437
  store i32 %17, ptr %.reg2mem12, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload13 = load volatile i32, ptr %.reg2mem12, align 4
  store i32 %.reload13, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

18:                                               ; preds = %RunBlock, %dispatchBB.split
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  store ptr %3, ptr %19, align 8
  store ptr %2, ptr %20, align 8
  store ptr %1, ptr %21, align 8
  store ptr %0, ptr %22, align 8
  %23 = load ptr, ptr %19, align 8
  store ptr %23, ptr %.reg2mem14, align 8
  %24 = load ptr, ptr %20, align 8
  store ptr %24, ptr %.reg2mem16, align 8
  %25 = load ptr, ptr %21, align 8
  store ptr %25, ptr %.reg2mem18, align 8
  %26 = load ptr, ptr %22, align 8
  store ptr %26, ptr %.reg2mem20, align 8
  br label %Default

.split3:                                          ; preds = %RunBlock
  %27 = load ptr, ptr @_vfscanf_l_ll, align 8
  %Call___local_stdio_scanf_options = getelementptr i8, ptr %27, i64 5344656605197917744
  %28 = call ptr %Call___local_stdio_scanf_options()
  store ptr %28, ptr %.reg2mem22, align 8
  br label %Default

.split3.split:                                    ; preds = %RunBlock
  %.reload23 = load volatile ptr, ptr %.reg2mem22, align 8
  %29 = load i64, ptr %.reload23, align 8
  %30 = load ptr, ptr getelementptr ([2 x ptr], ptr @_vfscanf_l_ll, i64 0, i64 1), align 8
  %Call___stdio_common_vfscanf = getelementptr i8, ptr %30, i64 5344656605197917744
  %.reload15 = load volatile ptr, ptr %.reg2mem14, align 8
  %.reload17 = load volatile ptr, ptr %.reg2mem16, align 8
  %.reload19 = load volatile ptr, ptr %.reg2mem18, align 8
  %.reload21 = load volatile ptr, ptr %.reg2mem20, align 8
  %31 = call i32 %Call___stdio_common_vfscanf(i64 noundef %29, ptr noundef %.reload21, ptr noundef %.reload19, ptr noundef %.reload17, ptr noundef %.reload15)
  store i32 %31, ptr %.reg2mem, align 4
  %32 = select i1 true, i32 21238, i32 2437
  store i32 %32, ptr %swVar.ptr, align 4
  br label %Default

33:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reload.reg2mem, align 4
  br label %Default

.split4:                                          ; preds = %RunBlock
  %.reload.reload = load volatile i32, ptr %.reload.reg2mem, align 4
  ret i32 %.reload.reload

34:                                               ; preds = %RunBlock, %dispatchBB.split
  %35 = alloca ptr, align 8
  store ptr %35, ptr %.reg2mem24, align 8
  %36 = alloca ptr, align 8
  store ptr %36, ptr %.reg2mem27, align 8
  %37 = alloca ptr, align 8
  store ptr %37, ptr %.reg2mem30, align 8
  %38 = alloca ptr, align 8
  store ptr %38, ptr %.reg2mem33, align 8
  %.reload26 = load volatile ptr, ptr %.reg2mem24, align 8
  store ptr %3, ptr %.reload26, align 8
  %.reload29 = load volatile ptr, ptr %.reg2mem27, align 8
  store ptr %2, ptr %.reload29, align 8
  br label %Default

.split5:                                          ; preds = %RunBlock
  %.reload32 = load volatile ptr, ptr %.reg2mem30, align 8
  store ptr %1, ptr %.reload32, align 8
  %.reload35 = load volatile ptr, ptr %.reg2mem33, align 8
  store ptr %0, ptr %.reload35, align 8
  %.reload25 = load volatile ptr, ptr %.reg2mem24, align 8
  %39 = load ptr, ptr %.reload25, align 8
  store ptr %39, ptr %.reg2mem36, align 8
  %.reload28 = load volatile ptr, ptr %.reg2mem27, align 8
  %40 = load ptr, ptr %.reload28, align 8
  store ptr %40, ptr %.reg2mem38, align 8
  %.reload31 = load volatile ptr, ptr %.reg2mem30, align 8
  %41 = load ptr, ptr %.reload31, align 8
  store ptr %41, ptr %.reg2mem40, align 8
  %.reload34 = load volatile ptr, ptr %.reg2mem33, align 8
  %42 = load ptr, ptr %.reload34, align 8
  store ptr %42, ptr %.reg2mem42, align 8
  br label %Default

.split5.split:                                    ; preds = %RunBlock
  %43 = load ptr, ptr @_vfscanf_l_ll, align 8
  %Call___local_stdio_scanf_options1 = getelementptr i8, ptr %43, i64 5344656605197917744
  %44 = call ptr %Call___local_stdio_scanf_options1()
  %45 = load i64, ptr %44, align 8
  %46 = load ptr, ptr getelementptr ([2 x ptr], ptr @_vfscanf_l_ll, i64 0, i64 1), align 8
  %Call___stdio_common_vfscanf2 = getelementptr i8, ptr %46, i64 5344656605197917744
  %.reload37 = load volatile ptr, ptr %.reg2mem36, align 8
  %.reload39 = load volatile ptr, ptr %.reg2mem38, align 8
  %.reload41 = load volatile ptr, ptr %.reg2mem40, align 8
  %.reload43 = load volatile ptr, ptr %.reg2mem42, align 8
  %47 = call i32 %Call___stdio_common_vfscanf2(i64 noundef %45, ptr noundef %.reload43, ptr noundef %.reload41, ptr noundef %.reload39, ptr noundef %.reload37)
  store i32 7719, ptr %swVar.ptr, align 4
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split5.split, %.split5, %34, %33, %.split3.split, %.split3, %18, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

declare dso_local i32 @__stdio_common_vfscanf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_scanf_options() #0 comdat {
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem7 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %1 = load i32, ptr %VMpc, align 4
  %2 = add i32 %1, 1
  %3 = add i32 %1, 2
  %4 = getelementptr [12 x i32], ptr @opcodes.51, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [12 x i32], ptr @opcodes.51, i32 0, i32 %2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %.reg2mem, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.51, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem5, align 4
  %10 = add i32 %1, 3
  store i32 %10, ptr %VMpc, align 4
  switch i32 %5, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload4 = load volatile i32, ptr %.reg2mem, align 4
  switch i32 %.reload4, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %14
    i32 30612, label %.split1
    i32 5853, label %.split1.split
    i32 28100, label %16
    i32 1142, label %17
    i32 281, label %.split2
    i32 20537, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload3 = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload3, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %11 = load i32, ptr %VMJmpFlag, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload = load volatile i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload6 = load volatile i32, ptr %.reg2mem5, align 4
  store i32 %.reload6, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  br label %Default

.split.split:                                     ; preds = %RunBlock
  store i32 38, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 38, label %newBB
    i32 7719, label %14
    i32 21238, label %16
    i32 2437, label %17
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %13 = select i1 true, i32 7719, i32 2437
  store i32 %13, ptr %.reg2mem7, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload8 = load volatile i32, ptr %.reg2mem7, align 4
  store i32 %.reload8, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

14:                                               ; preds = %RunBlock, %dispatchBB.split
  %15 = select i1 true, i32 21238, i32 2437
  store i32 %15, ptr %.reg2mem9, align 4
  br label %Default

.split1:                                          ; preds = %RunBlock
  %.reload10 = load volatile i32, ptr %.reg2mem9, align 4
  store i32 %.reload10, ptr %swVar.ptr, align 4
  br label %Default

.split1.split:                                    ; preds = %RunBlock
  br label %Default

16:                                               ; preds = %RunBlock, %dispatchBB.split
  ret ptr @__local_stdio_scanf_options._OptionsStorage

17:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 7719, ptr %swVar.ptr, align 4
  br label %Default

.split2:                                          ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split2, %17, %.split1.split, %.split1, %14, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

define private void @goron_decrypt_string_0(ptr nocapture %plain_string, ptr nocapture readonly %data) {
  %.reg2mem166 = alloca i8, align 1
  %.reg2mem164 = alloca i8, align 1
  %.reg2mem152 = alloca i8, align 1
  %.reg2mem142 = alloca i8, align 1
  %.reg2mem140 = alloca i32, align 4
  %.reg2mem138 = alloca i32, align 4
  %.reg2mem136 = alloca i32, align 4
  %.reg2mem134 = alloca i32, align 4
  %.reg2mem132 = alloca i32, align 4
  %.reg2mem130 = alloca i32, align 4
  %.reload.reg2mem = alloca i1, align 1
  %.reg2mem128 = alloca i8, align 1
  %.reg2mem126 = alloca i8, align 1
  %.reg2mem123 = alloca i8, align 1
  %.reg2mem121 = alloca i8, align 1
  %.reg2mem117 = alloca i8, align 1
  %.reload73.reg2mem = alloca i32, align 4
  %.reg2mem113 = alloca i8, align 1
  %.reg2mem111 = alloca i32, align 4
  %.reload81.reg2mem = alloca i32, align 4
  %.reload76.reg2mem = alloca i1, align 1
  %.reg2mem109 = alloca i32, align 4
  %.reg2mem107 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem80.reg2mem = alloca ptr, align 8
  %.reg2mem77.reg2mem = alloca ptr, align 8
  %.reg2mem75.reg2mem = alloca ptr, align 8
  %.reg2mem100 = alloca i32, align 4
  %.reg2mem96 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %.reg2mem = alloca i1, align 1
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %1 = load i32, ptr %VMpc, align 4
  %2 = add i32 %1, 1
  %3 = add i32 %1, 2
  %4 = getelementptr [12 x i32], ptr @opcodes.54, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [12 x i32], ptr @opcodes.54, i32 0, i32 %2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %.reg2mem96, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.54, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem100, align 4
  %10 = add i32 %1, 3
  store i32 %10, ptr %VMpc, align 4
  switch i32 %5, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload99 = load volatile i32, ptr %.reg2mem96, align 4
  switch i32 %.reload99, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %14
    i32 30612, label %.split82
    i32 5853, label %.split82.split
    i32 28100, label %19
    i32 1142, label %.split83
    i32 281, label %.split83.split
    i32 20537, label %21
    i32 15921, label %.split84
    i32 8945, label %.split84.split
    i32 26285, label %23
    i32 2997, label %.split85
    i32 14680, label %.split85.split
    i32 20976, label %47
    i32 31891, label %.split86
    i32 21655, label %.split86.split
    i32 25906, label %49
    i32 18457, label %.split87
    i32 1323, label %.split87.split
    i32 28881, label %51
    i32 2240, label %.split88
    i32 9725, label %.split88.split
    i32 32278, label %53
    i32 2446, label %.split89
    i32 590, label %54
    i32 840, label %.split90
    i32 18587, label %.split90.split
    i32 16907, label %56
    i32 21237, label %.split91
    i32 23611, label %.split91.split
    i32 12617, label %58
    i32 12456, label %59
    i32 867, label %.split92
    i32 29533, label %.split92.split
    i32 6878, label %63
    i32 28223, label %.split93
    i32 17887, label %.split93.split
    i32 31597, label %167
    i32 20584, label %.split94
    i32 12212, label %.split94.split
    i32 31111, label %168
    i32 7578, label %.split95
    i32 17066, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload98 = load volatile i32, ptr %.reg2mem96, align 4
  store i32 %.reload98, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %11 = load i32, ptr %VMJmpFlag, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload97 = load volatile i32, ptr %.reg2mem96, align 4
  store i32 %.reload97, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload101 = load volatile i32, ptr %.reg2mem100, align 4
  store i32 %.reload101, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem75 = alloca i1, align 1
  store ptr %.reg2mem75, ptr %.reg2mem75.reg2mem, align 8
  %.reg2mem77 = alloca ptr, align 8
  store ptr %.reg2mem77, ptr %.reg2mem77.reg2mem, align 8
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %.reg2mem80 = alloca i32, align 4
  store ptr %.reg2mem80, ptr %.reg2mem80.reg2mem, align 8
  %fix_stack_point = bitcast i32 0 to i32
  store i32 15921, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 15921, label %newBB
    i32 8945, label %14
    i32 26285, label %19
    i32 2997, label %21
    i32 14680, label %23
    i32 20976, label %47
    i32 31891, label %49
    i32 21655, label %51
    i32 25906, label %53
    i32 18457, label %54
    i32 1323, label %56
    i32 28881, label %58
    i32 2240, label %59
    i32 9725, label %63
    i32 32278, label %167
    i32 2446, label %168
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %13 = select i1 true, i32 8945, i32 2240
  store i32 %13, ptr %.reg2mem107, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload108 = load volatile i32, ptr %.reg2mem107, align 4
  store i32 %.reload108, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

14:                                               ; preds = %RunBlock, %dispatchBB.split
  %15 = getelementptr inbounds i8, ptr %data, i32 31
  %.reg2mem77.reload = load volatile ptr, ptr %.reg2mem77.reg2mem, align 8
  store ptr %15, ptr %.reg2mem77.reload, align 8
  br label %Default

.split82:                                         ; preds = %RunBlock
  %16 = load i32, ptr @"dec_status_0??_C@_08OHHAENPO@Hello?5A?6?$AA@", align 4
  store i32 %16, ptr %.reg2mem109, align 4
  br label %Default

.split82.split:                                   ; preds = %RunBlock
  %.reload110 = load volatile i32, ptr %.reg2mem109, align 4
  %17 = icmp eq i32 %.reload110, 1
  %.reg2mem75.reload = load volatile ptr, ptr %.reg2mem75.reg2mem, align 8
  store i1 %17, ptr %.reg2mem75.reload, align 1
  %18 = select i1 true, i32 26285, i32 2240
  store i32 %18, ptr %swVar.ptr, align 4
  br label %Default

19:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem75.reload102 = load volatile ptr, ptr %.reg2mem75.reg2mem, align 8
  %.reload76 = load i1, ptr %.reg2mem75.reload102, align 1
  store i1 %.reload76, ptr %.reload76.reg2mem, align 1
  br label %Default

.split83:                                         ; preds = %RunBlock
  %.reload76.reload = load volatile i1, ptr %.reload76.reg2mem, align 1
  %20 = select i1 %.reload76.reload, i32 18457, i32 2997
  store i32 %20, ptr %swVar.ptr, align 4
  %.reg2mem80.reload106 = load volatile ptr, ptr %.reg2mem80.reg2mem, align 8
  store i32 0, ptr %.reg2mem80.reload106, align 4
  br label %Default

.split83.split:                                   ; preds = %RunBlock
  br label %Default

21:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem80.reload = load volatile ptr, ptr %.reg2mem80.reg2mem, align 8
  %.reload81 = load i32, ptr %.reg2mem80.reload, align 4
  store i32 %.reload81, ptr %.reload81.reg2mem, align 4
  br label %Default

.split84:                                         ; preds = %RunBlock
  %.reload81.reload = load volatile i32, ptr %.reload81.reg2mem, align 4
  store i32 %.reload81.reload, ptr %.reg2mem39, align 4
  %22 = select i1 true, i32 14680, i32 9725
  store i32 %22, ptr %.reg2mem111, align 4
  br label %Default

.split84.split:                                   ; preds = %RunBlock
  %.reload112 = load volatile i32, ptr %.reg2mem111, align 4
  store i32 %.reload112, ptr %swVar.ptr, align 4
  br label %Default

23:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload74 = load i32, ptr %.reg2mem39, align 4
  %.reg2mem77.reload103 = load volatile ptr, ptr %.reg2mem77.reg2mem, align 8
  %.reload79 = load ptr, ptr %.reg2mem77.reload103, align 8
  %24 = getelementptr inbounds i8, ptr %.reload79, i32 %.reload74
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr %.reg2mem113, align 1
  %.reload73 = load i32, ptr %.reg2mem39, align 4
  store i32 %.reload73, ptr %.reload73.reg2mem, align 4
  br label %Default

.split85:                                         ; preds = %RunBlock
  %.reload73.reload = load volatile i32, ptr %.reload73.reg2mem, align 4
  %26 = urem i32 %.reload73.reload, 31
  %27 = getelementptr inbounds i8, ptr %data, i32 %26
  %28 = load i8, ptr %27, align 1
  store i8 %28, ptr %.reg2mem117, align 1
  %.reload115 = load volatile i8, ptr %.reg2mem113, align 1
  %29 = xor i8 %.reload115, -1
  %30 = and i8 -122, %29
  store i8 %30, ptr %.reg2mem121, align 1
  %31 = xor i8 -122, -1
  store i8 %31, ptr %.reg2mem123, align 1
  %.reload114 = load volatile i8, ptr %.reg2mem113, align 1
  %.reload125 = load volatile i8, ptr %.reg2mem123, align 1
  %32 = and i8 %.reload114, %.reload125
  store i8 %32, ptr %.reg2mem126, align 1
  %.reload119 = load volatile i8, ptr %.reg2mem117, align 1
  %33 = xor i8 %.reload119, -1
  store i8 %33, ptr %.reg2mem128, align 1
  br label %Default

.split85.split:                                   ; preds = %RunBlock
  %.reload129 = load volatile i8, ptr %.reg2mem128, align 1
  %34 = and i8 %.reload129, -122
  %.reload118 = load volatile i8, ptr %.reg2mem117, align 1
  %.reload124 = load volatile i8, ptr %.reg2mem123, align 1
  %35 = and i8 %.reload118, %.reload124
  %.reload122 = load volatile i8, ptr %.reg2mem121, align 1
  %.reload127 = load volatile i8, ptr %.reg2mem126, align 1
  %36 = or i8 %.reload122, %.reload127
  %37 = or i8 %34, %35
  %38 = xor i8 %36, %37
  %.reload116 = load volatile i8, ptr %.reg2mem113, align 1
  %.reload120 = load volatile i8, ptr %.reg2mem117, align 1
  %39 = xor i8 %.reload116, %.reload120
  %.reload72 = load i32, ptr %.reg2mem39, align 4
  %40 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload72
  store i8 %38, ptr %40, align 1
  %.reload53 = load i32, ptr %.reg2mem39, align 4
  %41 = add i32 %.reload53, -1454733001
  %42 = add i32 %41, 1
  %43 = sub i32 %42, -1454733001
  store i32 %43, ptr %.reg2mem36, align 4
  %.reload71 = load i32, ptr %.reg2mem39, align 4
  %44 = add nuw nsw i32 %.reload71, 1
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %45 = icmp eq i32 %.reload38, 9
  store i1 %45, ptr %.reg2mem, align 1
  %46 = select i1 true, i32 20976, i32 9725
  store i32 %46, ptr %swVar.ptr, align 4
  br label %Default

47:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i1, ptr %.reg2mem, align 1
  store i1 %.reload, ptr %.reload.reg2mem, align 1
  br label %Default

.split86:                                         ; preds = %RunBlock
  %.reload.reload = load volatile i1, ptr %.reload.reg2mem, align 1
  %48 = select i1 %.reload.reload, i32 31891, i32 2997
  store i32 %48, ptr %.reg2mem130, align 4
  br label %Default

.split86.split:                                   ; preds = %RunBlock
  %.reload131 = load volatile i32, ptr %.reg2mem130, align 4
  store i32 %.reload131, ptr %swVar.ptr, align 4
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  %.reg2mem80.reload105 = load volatile ptr, ptr %.reg2mem80.reg2mem, align 8
  store i32 %.reload37, ptr %.reg2mem80.reload105, align 4
  br label %Default

49:                                               ; preds = %RunBlock, %dispatchBB.split
  %50 = select i1 true, i32 21655, i32 32278
  store i32 %50, ptr %.reg2mem132, align 4
  br label %Default

.split87:                                         ; preds = %RunBlock
  %.reload133 = load volatile i32, ptr %.reg2mem132, align 4
  store i32 %.reload133, ptr %swVar.ptr, align 4
  br label %Default

.split87.split:                                   ; preds = %RunBlock
  br label %Default

51:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_0??_C@_08OHHAENPO@Hello?5A?6?$AA@", align 4
  br label %Default

.split88:                                         ; preds = %RunBlock
  %52 = select i1 true, i32 25906, i32 32278
  store i32 %52, ptr %.reg2mem134, align 4
  br label %Default

.split88.split:                                   ; preds = %RunBlock
  %.reload135 = load volatile i32, ptr %.reg2mem134, align 4
  store i32 %.reload135, ptr %swVar.ptr, align 4
  br label %Default

53:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 18457, ptr %swVar.ptr, align 4
  br label %Default

.split89:                                         ; preds = %RunBlock
  br label %Default

54:                                               ; preds = %RunBlock, %dispatchBB.split
  %55 = select i1 true, i32 1323, i32 2446
  store i32 %55, ptr %.reg2mem136, align 4
  br label %Default

.split90:                                         ; preds = %RunBlock
  %.reload137 = load volatile i32, ptr %.reg2mem136, align 4
  store i32 %.reload137, ptr %swVar.ptr, align 4
  br label %Default

.split90.split:                                   ; preds = %RunBlock
  br label %Default

56:                                               ; preds = %RunBlock, %dispatchBB.split
  %57 = select i1 true, i32 28881, i32 2446
  store i32 %57, ptr %.reg2mem138, align 4
  br label %Default

.split91:                                         ; preds = %RunBlock
  %.reload139 = load volatile i32, ptr %.reg2mem138, align 4
  store i32 %.reload139, ptr %swVar.ptr, align 4
  br label %Default

.split91.split:                                   ; preds = %RunBlock
  br label %Default

58:                                               ; preds = %RunBlock, %dispatchBB.split
  ret void

59:                                               ; preds = %RunBlock, %dispatchBB.split
  %60 = getelementptr inbounds i8, ptr %data, i32 31
  br label %Default

.split92:                                         ; preds = %RunBlock
  %61 = load i32, ptr @"dec_status_0??_C@_08OHHAENPO@Hello?5A?6?$AA@", align 4
  store i32 %61, ptr %.reg2mem140, align 4
  br label %Default

.split92.split:                                   ; preds = %RunBlock
  %.reload141 = load volatile i32, ptr %.reg2mem140, align 4
  %62 = icmp eq i32 %.reload141, 1
  store i32 8945, ptr %swVar.ptr, align 4
  br label %Default

63:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload70 = load i32, ptr %.reg2mem39, align 4
  %.reg2mem77.reload104 = load volatile ptr, ptr %.reg2mem77.reg2mem, align 8
  %.reload78 = load ptr, ptr %.reg2mem77.reload104, align 8
  %64 = getelementptr inbounds i8, ptr %.reload78, i32 %.reload70
  %65 = load i8, ptr %64, align 1
  store i8 %65, ptr %.reg2mem142, align 1
  %.reload52 = load i32, ptr %.reg2mem39, align 4
  %66 = sub i32 %.reload52, 1871073495
  %67 = sub i32 %66, 31
  %68 = add i32 %67, 1871073495
  %.reload66 = load i32, ptr %.reg2mem39, align 4
  %69 = sub i32 %.reload66, 31
  %70 = mul i32 %68, 31
  %71 = sub i32 0, 31
  %.reload51 = load i32, ptr %.reg2mem39, align 4
  %72 = add i32 %.reload51, %71
  %.reload65 = load i32, ptr %.reg2mem39, align 4
  %73 = sub i32 %.reload65, 31
  %74 = mul i32 %72, 31
  %75 = sub i32 0, 2059414719
  %.reload50 = load i32, ptr %.reg2mem39, align 4
  %76 = sub i32 %75, %.reload50
  %77 = add i32 %76, 2059414719
  %.reload64 = load i32, ptr %.reg2mem39, align 4
  %78 = sub i32 0, %.reload64
  %79 = sub i32 %77, -1959587663
  %80 = add i32 %79, 31
  %81 = add i32 %80, -1959587663
  %82 = add i32 %77, 31
  %83 = sub i32 0, 31
  %.reload49 = load i32, ptr %.reg2mem39, align 4
  %84 = add i32 %.reload49, %83
  %.reload63 = load i32, ptr %.reg2mem39, align 4
  %85 = sub i32 %.reload63, 31
  %86 = mul i32 %84, 31
  %.reload48 = load i32, ptr %.reg2mem39, align 4
  %87 = sub i32 0, %.reload48
  %88 = add i32 0, %87
  %.reload62 = load i32, ptr %.reg2mem39, align 4
  %89 = sub i32 0, %.reload62
  %90 = sub i32 0, 31
  %91 = sub i32 %88, %90
  %92 = add i32 %88, 31
  %.reload47 = load i32, ptr %.reg2mem39, align 4
  %93 = sub i32 %.reload47, 876589445
  %94 = sub i32 %93, 31
  %95 = add i32 %94, 876589445
  %.reload61 = load i32, ptr %.reg2mem39, align 4
  %96 = sub i32 %.reload61, 31
  %97 = mul i32 %95, 31
  %98 = add i32 0, 1087353007
  %.reload46 = load i32, ptr %.reg2mem39, align 4
  %99 = sub i32 %98, %.reload46
  %100 = sub i32 %99, 1087353007
  %.reload60 = load i32, ptr %.reg2mem39, align 4
  %101 = sub i32 0, %.reload60
  %102 = sub i32 0, 31
  %103 = sub i32 %100, %102
  %104 = add i32 %100, 31
  %.reload45 = load i32, ptr %.reg2mem39, align 4
  %105 = sub i32 0, %.reload45
  %106 = add i32 0, %105
  %.reload59 = load i32, ptr %.reg2mem39, align 4
  %107 = sub i32 0, %.reload59
  %108 = add i32 %106, 1689070416
  %109 = add i32 %108, 31
  %110 = sub i32 %109, 1689070416
  %111 = add i32 %106, 31
  %.reload69 = load i32, ptr %.reg2mem39, align 4
  %112 = urem i32 %.reload69, 31
  %113 = getelementptr inbounds i8, ptr %data, i32 %112
  %114 = load i8, ptr %113, align 1
  store i8 %114, ptr %.reg2mem152, align 1
  %.reload146 = load volatile i8, ptr %.reg2mem142, align 1
  %115 = add i8 %.reload146, 96
  %.reload156 = load volatile i8, ptr %.reg2mem152, align 1
  %116 = sub i8 %115, %.reload156
  store i8 %116, ptr %.reg2mem164, align 1
  br label %Default

.split93:                                         ; preds = %RunBlock
  %.reload165 = load volatile i8, ptr %.reg2mem164, align 1
  %117 = sub i8 %.reload165, 96
  %.reload150 = load volatile i8, ptr %.reg2mem142, align 1
  %.reload162 = load volatile i8, ptr %.reg2mem152, align 1
  %118 = sub i8 %.reload150, %.reload162
  %.reload161 = load volatile i8, ptr %.reg2mem152, align 1
  %119 = mul i8 %117, %.reload161
  %.reload149 = load volatile i8, ptr %.reg2mem142, align 1
  %.reload160 = load volatile i8, ptr %.reg2mem152, align 1
  %120 = shl i8 %.reload149, %.reload160
  %.reload148 = load volatile i8, ptr %.reg2mem142, align 1
  %.reload159 = load volatile i8, ptr %.reg2mem152, align 1
  %121 = shl i8 %.reload148, %.reload159
  %.reload145 = load volatile i8, ptr %.reg2mem142, align 1
  %122 = sub i8 %.reload145, -54
  %.reload155 = load volatile i8, ptr %.reg2mem152, align 1
  %123 = sub i8 %122, %.reload155
  %124 = add i8 %123, -54
  %.reload147 = load volatile i8, ptr %.reg2mem142, align 1
  %.reload158 = load volatile i8, ptr %.reg2mem152, align 1
  %125 = sub i8 %.reload147, %.reload158
  %.reload157 = load volatile i8, ptr %.reg2mem152, align 1
  %126 = mul i8 %124, %.reload157
  %.reload144 = load volatile i8, ptr %.reg2mem142, align 1
  %127 = xor i8 %.reload144, -1
  store i8 %127, ptr %.reg2mem166, align 1
  br label %Default

.split93.split:                                   ; preds = %RunBlock
  %.reload154 = load volatile i8, ptr %.reg2mem152, align 1
  %.reload167 = load volatile i8, ptr %.reg2mem166, align 1
  %128 = and i8 %.reload154, %.reload167
  %.reload153 = load volatile i8, ptr %.reg2mem152, align 1
  %129 = xor i8 %.reload153, -1
  %.reload143 = load volatile i8, ptr %.reg2mem142, align 1
  %130 = and i8 %.reload143, %129
  %131 = or i8 %128, %130
  %.reload151 = load volatile i8, ptr %.reg2mem142, align 1
  %.reload163 = load volatile i8, ptr %.reg2mem152, align 1
  %132 = xor i8 %.reload151, %.reload163
  %.reload68 = load i32, ptr %.reg2mem39, align 4
  %133 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload68
  store i8 %131, ptr %133, align 1
  %134 = sub i32 0, 1
  %.reload44 = load i32, ptr %.reg2mem39, align 4
  %135 = add i32 %.reload44, %134
  %.reload58 = load i32, ptr %.reg2mem39, align 4
  %136 = sub i32 %.reload58, 1
  %137 = mul i32 %135, 1
  %138 = sub i32 0, 557156109
  %.reload43 = load i32, ptr %.reg2mem39, align 4
  %139 = sub i32 %138, %.reload43
  %140 = add i32 %139, 557156109
  %.reload57 = load i32, ptr %.reg2mem39, align 4
  %141 = sub i32 0, %.reload57
  %142 = add i32 %140, 432195424
  %143 = add i32 %142, 1
  %144 = sub i32 %143, 432195424
  %145 = add i32 %140, 1
  %.reload56 = load i32, ptr %.reg2mem39, align 4
  %146 = shl i32 %.reload56, 1
  %147 = add i32 0, -1924860908
  %.reload42 = load i32, ptr %.reg2mem39, align 4
  %148 = sub i32 %147, %.reload42
  %149 = sub i32 %148, -1924860908
  %.reload55 = load i32, ptr %.reg2mem39, align 4
  %150 = sub i32 0, %.reload55
  %151 = sub i32 %149, -1325388111
  %152 = add i32 %151, 1
  %153 = add i32 %152, -1325388111
  %154 = add i32 %149, 1
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %155 = sub i32 0, %.reload41
  %156 = add i32 0, %155
  %.reload54 = load i32, ptr %.reg2mem39, align 4
  %157 = sub i32 0, %.reload54
  %158 = sub i32 %156, 1608561152
  %159 = add i32 %158, 1
  %160 = add i32 %159, 1608561152
  %161 = add i32 %156, 1
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  %162 = add i32 %.reload40, -37649083
  %163 = add i32 %162, 1
  %164 = sub i32 %163, -37649083
  %.reload67 = load i32, ptr %.reg2mem39, align 4
  %165 = add nuw nsw i32 %.reload67, 1
  %166 = icmp eq i32 %164, 9
  store i32 14680, ptr %swVar.ptr, align 4
  br label %Default

167:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_0??_C@_08OHHAENPO@Hello?5A?6?$AA@", align 4
  br label %Default

.split94:                                         ; preds = %RunBlock
  store i32 21655, ptr %swVar.ptr, align 4
  br label %Default

.split94.split:                                   ; preds = %RunBlock
  br label %Default

168:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 1323, ptr %swVar.ptr, align 4
  br label %Default

.split95:                                         ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split95, %168, %.split94.split, %.split94, %167, %.split93.split, %.split93, %63, %.split92.split, %.split92, %59, %.split91.split, %.split91, %56, %.split90.split, %.split90, %54, %.split89, %53, %.split88.split, %.split88, %51, %.split87.split, %.split87, %49, %.split86.split, %.split86, %47, %.split85.split, %.split85, %23, %.split84.split, %.split84, %21, %.split83.split, %.split83, %19, %.split82.split, %.split82, %14, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

define private void @goron_decrypt_string_1(ptr nocapture %plain_string, ptr nocapture readonly %data) {
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reload7.reg2mem = alloca i32, align 4
  %.reload3.reg2mem = alloca i1, align 1
  %swVar.reg2mem = alloca i32, align 4
  %swVar.ptr.reg2mem = alloca ptr, align 8
  %.reg2mem6.reg2mem = alloca ptr, align 8
  %.reg2mem4.reg2mem = alloca ptr, align 8
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %.reg2mem2 = alloca i1, align 1
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %1 = load i32, ptr %VMpc, align 4
  %2 = add i32 %1, 1
  %3 = add i32 %1, 2
  %4 = getelementptr [12 x i32], ptr @opcodes.57, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [12 x i32], ptr @opcodes.57, i32 0, i32 %2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %.reg2mem13, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.57, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem17, align 4
  %10 = add i32 %1, 3
  store i32 %10, ptr %VMpc, align 4
  switch i32 %5, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload16 = load volatile i32, ptr %.reg2mem13, align 4
  switch i32 %.reload16, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %17
    i32 30612, label %.split8
    i32 5853, label %.split8.split
    i32 28100, label %35
    i32 1142, label %.split9
    i32 281, label %.split9.split
    i32 20537, label %36
    i32 15921, label %.split10
    i32 8945, label %.split10.split
    i32 26285, label %38
    i32 2997, label %.split11
    i32 14680, label %.split11.split
    i32 20976, label %40
    i32 31891, label %41
    i32 21655, label %.split12
    i32 25906, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload15 = load volatile i32, ptr %.reg2mem13, align 4
  store i32 %.reload15, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %11 = load i32, ptr %VMJmpFlag, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload14 = load volatile i32, ptr %.reg2mem13, align 4
  store i32 %.reload14, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload18 = load volatile i32, ptr %.reg2mem17, align 4
  store i32 %.reload18, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem4 = alloca ptr, align 8
  store ptr %.reg2mem4, ptr %.reg2mem4.reg2mem, align 8
  %.reg2mem6 = alloca i32, align 4
  store ptr %.reg2mem6, ptr %.reg2mem6.reg2mem, align 8
  %fix_stack_point = bitcast i32 0 to i32
  %13 = getelementptr inbounds i8, ptr %data, i32 29
  %.reg2mem4.reload = load volatile ptr, ptr %.reg2mem4.reg2mem, align 8
  store ptr %13, ptr %.reg2mem4.reload, align 8
  %14 = load i32, ptr @"dec_status_1??_C@_03OFAPEBGM@?$CFs?6?$AA@", align 4
  %15 = icmp eq i32 %14, 1
  store i1 %15, ptr %.reg2mem2, align 1
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %swVar.ptr = alloca i32, align 4
  store ptr %swVar.ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar.ptr.reload28 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 7629, ptr %swVar.ptr.reload28, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar.ptr.reload27 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar = load i32, ptr %swVar.ptr.reload27, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 7629, label %newBB
    i32 29404, label %17
    i32 12279, label %35
    i32 13505, label %36
    i32 24388, label %38
    i32 11649, label %40
    i32 12329, label %41
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %.reload3 = load i1, ptr %.reg2mem2, align 1
  store i1 %.reload3, ptr %.reload3.reg2mem, align 1
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload3.reload = load volatile i1, ptr %.reload3.reg2mem, align 1
  %16 = select i1 %.reload3.reload, i32 13505, i32 29404
  %swVar.ptr.reload26 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %16, ptr %swVar.ptr.reload26, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  %.reg2mem6.reload21 = load volatile ptr, ptr %.reg2mem6.reg2mem, align 8
  store i32 0, ptr %.reg2mem6.reload21, align 4
  br label %Default

17:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem6.reload = load volatile ptr, ptr %.reg2mem6.reg2mem, align 8
  %.reload7 = load i32, ptr %.reg2mem6.reload, align 4
  store i32 %.reload7, ptr %.reload7.reg2mem, align 4
  %.reg2mem4.reload19 = load volatile ptr, ptr %.reg2mem4.reg2mem, align 8
  %.reload5 = load ptr, ptr %.reg2mem4.reload19, align 8
  %.reload7.reload = load volatile i32, ptr %.reload7.reg2mem, align 4
  %18 = getelementptr inbounds i8, ptr %.reload5, i32 %.reload7.reload
  %19 = load i8, ptr %18, align 1
  %.reload7.reload29 = load volatile i32, ptr %.reload7.reg2mem, align 4
  %20 = urem i32 %.reload7.reload29, 29
  %21 = getelementptr inbounds i8, ptr %data, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = xor i8 %19, -1
  %24 = and i8 %22, %23
  %25 = xor i8 %22, -1
  %26 = and i8 %19, %25
  %27 = or i8 %24, %26
  %28 = xor i8 %19, %22
  %.reload7.reload30 = load volatile i32, ptr %.reload7.reg2mem, align 4
  %29 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload7.reload30
  store i8 %27, ptr %29, align 1
  br label %Default

.split8:                                          ; preds = %RunBlock
  %30 = sub i32 0, 1
  %.reload7.reload32 = load volatile i32, ptr %.reload7.reg2mem, align 4
  %31 = sub i32 %.reload7.reload32, %30
  store i32 %31, ptr %.reg2mem, align 4
  %.reload7.reload31 = load volatile i32, ptr %.reload7.reg2mem, align 4
  %32 = add nuw nsw i32 %.reload7.reload31, 1
  %.reload1 = load i32, ptr %.reg2mem, align 4
  %33 = icmp eq i32 %.reload1, 4
  %34 = select i1 %33, i32 12279, i32 29404
  %swVar.ptr.reload25 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %34, ptr %swVar.ptr.reload25, align 4
  %.reload = load i32, ptr %.reg2mem, align 4
  %.reg2mem6.reload20 = load volatile ptr, ptr %.reg2mem6.reg2mem, align 8
  store i32 %.reload, ptr %.reg2mem6.reload20, align 4
  br label %Default

.split8.split:                                    ; preds = %RunBlock
  br label %Default

35:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_1??_C@_03OFAPEBGM@?$CFs?6?$AA@", align 4
  br label %Default

.split9:                                          ; preds = %RunBlock
  %swVar.ptr.reload24 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 13505, ptr %swVar.ptr.reload24, align 4
  br label %Default

.split9.split:                                    ; preds = %RunBlock
  br label %Default

36:                                               ; preds = %RunBlock, %dispatchBB.split
  %37 = select i1 true, i32 24388, i32 12329
  store i32 %37, ptr %.reg2mem33, align 4
  br label %Default

.split10:                                         ; preds = %RunBlock
  %swVar.ptr.reload23 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload34 = load volatile i32, ptr %.reg2mem33, align 4
  store i32 %.reload34, ptr %swVar.ptr.reload23, align 4
  br label %Default

.split10.split:                                   ; preds = %RunBlock
  br label %Default

38:                                               ; preds = %RunBlock, %dispatchBB.split
  %39 = select i1 true, i32 11649, i32 12329
  store i32 %39, ptr %.reg2mem35, align 4
  br label %Default

.split11:                                         ; preds = %RunBlock
  %swVar.ptr.reload22 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload36 = load volatile i32, ptr %.reg2mem35, align 4
  store i32 %.reload36, ptr %swVar.ptr.reload22, align 4
  br label %Default

.split11.split:                                   ; preds = %RunBlock
  br label %Default

40:                                               ; preds = %RunBlock, %dispatchBB.split
  ret void

41:                                               ; preds = %RunBlock, %dispatchBB.split
  %swVar.ptr.reload = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 24388, ptr %swVar.ptr.reload, align 4
  br label %Default

.split12:                                         ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split12, %41, %.split11.split, %.split11, %38, %.split10.split, %.split10, %36, %.split9.split, %.split9, %35, %.split8.split, %.split8, %17, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

define private void @goron_decrypt_string_2(ptr nocapture %plain_string, ptr nocapture readonly %data) {
  %.reg2mem147 = alloca i8, align 1
  %.reg2mem127 = alloca i8, align 1
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem122 = alloca i32, align 4
  %.reg2mem106 = alloca i8, align 1
  %.reg2mem104 = alloca i32, align 4
  %.reload.reg2mem = alloca i1, align 1
  %.reg2mem102 = alloca i1, align 1
  %.reg2mem100 = alloca i32, align 4
  %.reg2mem96 = alloca i8, align 1
  %.reload42.reg2mem = alloca i1, align 1
  %swVar.reg2mem = alloca i32, align 4
  %swVar.ptr.reg2mem = alloca ptr, align 8
  %.reg2mem46.reg2mem = alloca ptr, align 8
  %.reg2mem43.reg2mem = alloca ptr, align 8
  %.reg2mem41.reg2mem = alloca ptr, align 8
  %.reg2mem23.reg2mem = alloca ptr, align 8
  %.reg2mem20.reg2mem = alloca ptr, align 8
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem = alloca i1, align 1
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %1 = load i32, ptr %VMpc, align 4
  %2 = add i32 %1, 1
  %3 = add i32 %1, 2
  %4 = getelementptr [12 x i32], ptr @opcodes.60, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [12 x i32], ptr @opcodes.60, i32 0, i32 %2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %.reg2mem56, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.60, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem60, align 4
  %10 = add i32 %1, 3
  store i32 %10, ptr %VMpc, align 4
  switch i32 %5, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload59 = load volatile i32, ptr %.reg2mem56, align 4
  switch i32 %.reload59, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %17
    i32 30612, label %.split48
    i32 5853, label %.split48.split
    i32 28100, label %19
    i32 1142, label %.split49
    i32 281, label %.split49.split
    i32 20537, label %38
    i32 15921, label %.split50
    i32 8945, label %.split50.split
    i32 26285, label %40
    i32 2997, label %.split51
    i32 14680, label %.split51.split
    i32 20976, label %42
    i32 31891, label %.split52
    i32 21655, label %.split52.split
    i32 25906, label %44
    i32 18457, label %.split53
    i32 1323, label %45
    i32 28881, label %46
    i32 2240, label %.split54
    i32 9725, label %.split54.split
    i32 32278, label %118
    i32 2446, label %.split55
    i32 590, label %.split55.split
    i32 840, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload58 = load volatile i32, ptr %.reg2mem56, align 4
  store i32 %.reload58, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %11 = load i32, ptr %VMJmpFlag, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload57 = load volatile i32, ptr %.reg2mem56, align 4
  store i32 %.reload57, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload61 = load volatile i32, ptr %.reg2mem60, align 4
  store i32 %.reload61, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem20 = alloca i32, align 4
  store ptr %.reg2mem20, ptr %.reg2mem20.reg2mem, align 8
  %.reg2mem23 = alloca i32, align 4
  store ptr %.reg2mem23, ptr %.reg2mem23.reg2mem, align 8
  %.reg2mem41 = alloca i1, align 1
  store ptr %.reg2mem41, ptr %.reg2mem41.reg2mem, align 8
  %.reg2mem43 = alloca ptr, align 8
  store ptr %.reg2mem43, ptr %.reg2mem43.reg2mem, align 8
  %.reg2mem46 = alloca i32, align 4
  store ptr %.reg2mem46, ptr %.reg2mem46.reg2mem, align 8
  %fix_stack_point = bitcast i32 0 to i32
  %13 = getelementptr inbounds i8, ptr %data, i32 19
  %.reg2mem43.reload = load volatile ptr, ptr %.reg2mem43.reg2mem, align 8
  store ptr %13, ptr %.reg2mem43.reload, align 8
  %14 = load i32, ptr @"dec_status_2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", align 4
  %15 = icmp eq i32 %14, 1
  %.reg2mem41.reload = load volatile ptr, ptr %.reg2mem41.reg2mem, align 8
  store i1 %15, ptr %.reg2mem41.reload, align 1
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %swVar.ptr = alloca i32, align 4
  store ptr %swVar.ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar.ptr.reload95 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 18457, ptr %swVar.ptr.reload95, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar.ptr.reload94 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar = load i32, ptr %swVar.ptr.reload94, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 18457, label %newBB
    i32 1323, label %17
    i32 28881, label %19
    i32 2240, label %38
    i32 9725, label %40
    i32 32278, label %42
    i32 2446, label %44
    i32 590, label %45
    i32 840, label %46
    i32 18587, label %118
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem41.reload81 = load volatile ptr, ptr %.reg2mem41.reg2mem, align 8
  %.reload42 = load i1, ptr %.reg2mem41.reload81, align 1
  store i1 %.reload42, ptr %.reload42.reg2mem, align 1
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload42.reload = load volatile i1, ptr %.reload42.reg2mem, align 1
  %16 = select i1 %.reload42.reload, i32 590, i32 1323
  %swVar.ptr.reload93 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %16, ptr %swVar.ptr.reload93, align 4
  %.reg2mem46.reload85 = load volatile ptr, ptr %.reg2mem46.reg2mem, align 8
  store i32 0, ptr %.reg2mem46.reload85, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

17:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem46.reload = load volatile ptr, ptr %.reg2mem46.reg2mem, align 8
  %.reload47 = load i32, ptr %.reg2mem46.reload, align 4
  %.reg2mem23.reload = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  store i32 %.reload47, ptr %.reg2mem23.reload, align 4
  br label %Default

.split48:                                         ; preds = %RunBlock
  %18 = select i1 true, i32 28881, i32 840
  %swVar.ptr.reload92 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %18, ptr %swVar.ptr.reload92, align 4
  br label %Default

.split48.split:                                   ; preds = %RunBlock
  br label %Default

19:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem23.reload64 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload40 = load i32, ptr %.reg2mem23.reload64, align 4
  %.reg2mem43.reload82 = load volatile ptr, ptr %.reg2mem43.reg2mem, align 8
  %.reload45 = load ptr, ptr %.reg2mem43.reload82, align 8
  %20 = getelementptr inbounds i8, ptr %.reload45, i32 %.reload40
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %.reg2mem96, align 1
  %.reg2mem23.reload65 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload39 = load i32, ptr %.reg2mem23.reload65, align 4
  %22 = urem i32 %.reload39, 19
  store i32 %22, ptr %.reg2mem100, align 4
  br label %Default

.split49:                                         ; preds = %RunBlock
  %.reload101 = load volatile i32, ptr %.reg2mem100, align 4
  %23 = getelementptr inbounds i8, ptr %data, i32 %.reload101
  %24 = load i8, ptr %23, align 1
  %.reload98 = load volatile i8, ptr %.reg2mem96, align 1
  %25 = xor i8 %.reload98, -1
  %26 = and i8 %24, %25
  %27 = xor i8 %24, -1
  %.reload97 = load volatile i8, ptr %.reg2mem96, align 1
  %28 = and i8 %.reload97, %27
  %29 = or i8 %26, %28
  %.reload99 = load volatile i8, ptr %.reg2mem96, align 1
  %30 = xor i8 %.reload99, %24
  %.reg2mem23.reload66 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload38 = load i32, ptr %.reg2mem23.reload66, align 4
  %31 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload38
  store i8 %29, ptr %31, align 1
  %.reg2mem23.reload76 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload28 = load i32, ptr %.reg2mem23.reload76, align 4
  %32 = sub i32 %.reload28, -569005594
  %33 = add i32 %32, 1
  %34 = add i32 %33, -569005594
  %.reg2mem20.reload = load volatile ptr, ptr %.reg2mem20.reg2mem, align 8
  store i32 %34, ptr %.reg2mem20.reload, align 4
  %.reg2mem23.reload67 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload37 = load i32, ptr %.reg2mem23.reload67, align 4
  %35 = add nuw nsw i32 %.reload37, 1
  %.reg2mem20.reload62 = load volatile ptr, ptr %.reg2mem20.reg2mem, align 8
  %.reload22 = load i32, ptr %.reg2mem20.reload62, align 4
  %36 = icmp eq i32 %.reload22, 14
  store i1 %36, ptr %.reg2mem102, align 1
  br label %Default

.split49.split:                                   ; preds = %RunBlock
  %.reload103 = load volatile i1, ptr %.reg2mem102, align 1
  store i1 %.reload103, ptr %.reg2mem, align 1
  %37 = select i1 true, i32 2240, i32 840
  %swVar.ptr.reload91 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %37, ptr %swVar.ptr.reload91, align 4
  br label %Default

38:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i1, ptr %.reg2mem, align 1
  store i1 %.reload, ptr %.reload.reg2mem, align 1
  br label %Default

.split50:                                         ; preds = %RunBlock
  %.reload.reload = load volatile i1, ptr %.reload.reg2mem, align 1
  %39 = select i1 %.reload.reload, i32 9725, i32 1323
  %swVar.ptr.reload90 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %39, ptr %swVar.ptr.reload90, align 4
  %.reg2mem20.reload63 = load volatile ptr, ptr %.reg2mem20.reg2mem, align 8
  %.reload21 = load i32, ptr %.reg2mem20.reload63, align 4
  %.reg2mem46.reload84 = load volatile ptr, ptr %.reg2mem46.reg2mem, align 8
  store i32 %.reload21, ptr %.reg2mem46.reload84, align 4
  br label %Default

.split50.split:                                   ; preds = %RunBlock
  br label %Default

40:                                               ; preds = %RunBlock, %dispatchBB.split
  %41 = select i1 true, i32 32278, i32 18587
  store i32 %41, ptr %.reg2mem104, align 4
  br label %Default

.split51:                                         ; preds = %RunBlock
  %swVar.ptr.reload89 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload105 = load volatile i32, ptr %.reg2mem104, align 4
  store i32 %.reload105, ptr %swVar.ptr.reload89, align 4
  br label %Default

.split51.split:                                   ; preds = %RunBlock
  br label %Default

42:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", align 4
  br label %Default

.split52:                                         ; preds = %RunBlock
  %43 = select i1 true, i32 2446, i32 18587
  %swVar.ptr.reload88 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %43, ptr %swVar.ptr.reload88, align 4
  br label %Default

.split52.split:                                   ; preds = %RunBlock
  br label %Default

44:                                               ; preds = %RunBlock, %dispatchBB.split
  %swVar.ptr.reload87 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 590, ptr %swVar.ptr.reload87, align 4
  br label %Default

.split53:                                         ; preds = %RunBlock
  br label %Default

45:                                               ; preds = %RunBlock, %dispatchBB.split
  ret void

46:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem23.reload68 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload36 = load i32, ptr %.reg2mem23.reload68, align 4
  %.reg2mem43.reload83 = load volatile ptr, ptr %.reg2mem43.reg2mem, align 8
  %.reload44 = load ptr, ptr %.reg2mem43.reload83, align 8
  %47 = getelementptr inbounds i8, ptr %.reload44, i32 %.reload36
  %48 = load i8, ptr %47, align 1
  store i8 %48, ptr %.reg2mem106, align 1
  %49 = sub i32 0, 19
  %.reg2mem23.reload77 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload27 = load i32, ptr %.reg2mem23.reload77, align 4
  %50 = add i32 %.reload27, %49
  %.reg2mem23.reload72 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload32 = load i32, ptr %.reg2mem23.reload72, align 4
  %51 = sub i32 %.reload32, 19
  %52 = mul i32 %50, 19
  %.reg2mem23.reload78 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload26 = load i32, ptr %.reg2mem23.reload78, align 4
  %53 = sub i32 0, %.reload26
  %54 = add i32 0, %53
  store i32 %54, ptr %.reg2mem122, align 4
  %.reg2mem23.reload73 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload31 = load i32, ptr %.reg2mem23.reload73, align 4
  %55 = sub i32 0, %.reload31
  %.reload123 = load volatile i32, ptr %.reg2mem122, align 4
  %56 = add i32 %.reload123, -162636423
  %57 = add i32 %56, 19
  store i32 %57, ptr %.reg2mem125, align 4
  br label %Default

.split54:                                         ; preds = %RunBlock
  %.reload126 = load volatile i32, ptr %.reg2mem125, align 4
  %58 = sub i32 %.reload126, -162636423
  %.reload124 = load volatile i32, ptr %.reg2mem122, align 4
  %59 = add i32 %.reload124, 19
  %.reg2mem23.reload69 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload35 = load i32, ptr %.reg2mem23.reload69, align 4
  %60 = urem i32 %.reload35, 19
  %61 = getelementptr inbounds i8, ptr %data, i32 %60
  %62 = load i8, ptr %61, align 1
  store i8 %62, ptr %.reg2mem127, align 1
  %.reload120 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload145 = load volatile i8, ptr %.reg2mem127, align 1
  %63 = shl i8 %.reload120, %.reload145
  %64 = sub i8 0, 88
  %.reload113 = load volatile i8, ptr %.reg2mem106, align 1
  %65 = sub i8 %64, %.reload113
  %66 = add i8 %65, 88
  %.reload119 = load volatile i8, ptr %.reg2mem106, align 1
  %67 = sub i8 0, %.reload119
  %68 = add i8 %66, 16
  %.reload134 = load volatile i8, ptr %.reg2mem127, align 1
  %69 = add i8 %68, %.reload134
  %70 = sub i8 %69, 16
  %.reload144 = load volatile i8, ptr %.reg2mem127, align 1
  %71 = add i8 %66, %.reload144
  %.reload133 = load volatile i8, ptr %.reg2mem127, align 1
  %72 = sub i8 0, %.reload133
  %.reload112 = load volatile i8, ptr %.reg2mem106, align 1
  %73 = add i8 %.reload112, %72
  %.reload118 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload143 = load volatile i8, ptr %.reg2mem127, align 1
  %74 = sub i8 %.reload118, %.reload143
  %.reload142 = load volatile i8, ptr %.reg2mem127, align 1
  %75 = mul i8 %73, %.reload142
  %.reload132 = load volatile i8, ptr %.reg2mem127, align 1
  %76 = sub i8 0, %.reload132
  store i8 %76, ptr %.reg2mem147, align 1
  br label %Default

.split54.split:                                   ; preds = %RunBlock
  %.reload111 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload148 = load volatile i8, ptr %.reg2mem147, align 1
  %77 = add i8 %.reload111, %.reload148
  %.reload117 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload141 = load volatile i8, ptr %.reg2mem127, align 1
  %78 = sub i8 %.reload117, %.reload141
  %.reload140 = load volatile i8, ptr %.reg2mem127, align 1
  %79 = mul i8 %77, %.reload140
  %.reload116 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload139 = load volatile i8, ptr %.reg2mem127, align 1
  %80 = shl i8 %.reload116, %.reload139
  %.reload110 = load volatile i8, ptr %.reg2mem106, align 1
  %81 = add i8 %.reload110, -29
  %.reload131 = load volatile i8, ptr %.reg2mem127, align 1
  %82 = sub i8 %81, %.reload131
  %83 = sub i8 %82, -29
  %.reload115 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload138 = load volatile i8, ptr %.reg2mem127, align 1
  %84 = sub i8 %.reload115, %.reload138
  %.reload137 = load volatile i8, ptr %.reg2mem127, align 1
  %85 = mul i8 %83, %.reload137
  %.reload109 = load volatile i8, ptr %.reg2mem106, align 1
  %86 = sub i8 %.reload109, -115
  %.reload130 = load volatile i8, ptr %.reg2mem127, align 1
  %87 = sub i8 %86, %.reload130
  %88 = add i8 %87, -115
  %.reload114 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload136 = load volatile i8, ptr %.reg2mem127, align 1
  %89 = sub i8 %.reload114, %.reload136
  %.reload135 = load volatile i8, ptr %.reg2mem127, align 1
  %90 = mul i8 %88, %.reload135
  %.reload108 = load volatile i8, ptr %.reg2mem106, align 1
  %91 = xor i8 %.reload108, -1
  %92 = and i8 -54, %91
  %93 = xor i8 -54, -1
  %.reload107 = load volatile i8, ptr %.reg2mem106, align 1
  %94 = and i8 %.reload107, %93
  %.reload129 = load volatile i8, ptr %.reg2mem127, align 1
  %95 = xor i8 %.reload129, -1
  %96 = and i8 %95, -54
  %.reload128 = load volatile i8, ptr %.reg2mem127, align 1
  %97 = and i8 %.reload128, %93
  %98 = or i8 %92, %94
  %99 = or i8 %96, %97
  %100 = xor i8 %98, %99
  %.reload121 = load volatile i8, ptr %.reg2mem106, align 1
  %.reload146 = load volatile i8, ptr %.reg2mem127, align 1
  %101 = xor i8 %.reload121, %.reload146
  %.reg2mem23.reload70 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload34 = load i32, ptr %.reg2mem23.reload70, align 4
  %102 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload34
  store i8 %100, ptr %102, align 1
  %.reg2mem23.reload74 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload30 = load i32, ptr %.reg2mem23.reload74, align 4
  %103 = shl i32 %.reload30, 1
  %104 = sub i32 0, 1415654167
  %.reg2mem23.reload79 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload25 = load i32, ptr %.reg2mem23.reload79, align 4
  %105 = sub i32 %104, %.reload25
  %106 = add i32 %105, 1415654167
  %.reg2mem23.reload75 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload29 = load i32, ptr %.reg2mem23.reload75, align 4
  %107 = sub i32 0, %.reload29
  %108 = sub i32 0, %106
  %109 = sub i32 0, 1
  %110 = add i32 %108, %109
  %111 = sub i32 0, %110
  %112 = add i32 %106, 1
  %.reg2mem23.reload80 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload24 = load i32, ptr %.reg2mem23.reload80, align 4
  %113 = add i32 %.reload24, 94390728
  %114 = add i32 %113, 1
  %115 = sub i32 %114, 94390728
  %.reg2mem23.reload71 = load volatile ptr, ptr %.reg2mem23.reg2mem, align 8
  %.reload33 = load i32, ptr %.reg2mem23.reload71, align 4
  %116 = add nuw nsw i32 %.reload33, 1
  %117 = icmp eq i32 %115, 14
  %swVar.ptr.reload86 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 28881, ptr %swVar.ptr.reload86, align 4
  br label %Default

118:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_2??_C@_0O@OPNIKCHM@Ohhhh?5bililib?$AA@", align 4
  br label %Default

.split55:                                         ; preds = %RunBlock
  %swVar.ptr.reload = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 32278, ptr %swVar.ptr.reload, align 4
  br label %Default

.split55.split:                                   ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split55.split, %.split55, %118, %.split54.split, %.split54, %46, %.split53, %44, %.split52.split, %.split52, %42, %.split51.split, %.split51, %40, %.split50.split, %.split50, %38, %.split49.split, %.split49, %19, %.split48.split, %.split48, %17, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

define private void @goron_decrypt_string_3(ptr nocapture %plain_string, ptr nocapture readonly %data) {
  %.reg2mem118 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem114 = alloca i32, align 4
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem108 = alloca i32, align 4
  %.reload63.reg2mem = alloca i32, align 4
  %.reg2mem104 = alloca i8, align 1
  %.reg2mem102 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %swVar.ptr.reg2mem = alloca ptr, align 8
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem = alloca i1, align 1
  %.reg2mem29 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem65 = alloca i1, align 1
  %.reg2mem67 = alloca ptr, align 8
  %.reg2mem70 = alloca i32, align 4
  %fix_stack_point = bitcast i32 0 to i32
  %1 = getelementptr inbounds i8, ptr %data, i32 17
  store ptr %1, ptr %.reg2mem67, align 8
  %2 = load i32, ptr @"dec_status_3??_C@_02DPKJAMEF@?$CFd?$AA@", align 4
  %3 = icmp eq i32 %2, 1
  store i1 %3, ptr %.reg2mem65, align 1
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %4 = load i32, ptr %VMpc, align 4
  %5 = add i32 %4, 1
  %6 = add i32 %4, 2
  %7 = getelementptr [12 x i32], ptr @opcodes.63, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [12 x i32], ptr @opcodes.63, i32 0, i32 %5
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %.reg2mem83, align 4
  %11 = getelementptr [12 x i32], ptr @opcodes.63, i32 0, i32 %6
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %.reg2mem87, align 4
  %13 = add i32 %4, 3
  store i32 %13, ptr %VMpc, align 4
  switch i32 %8, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload86 = load volatile i32, ptr %.reg2mem83, align 4
  switch i32 %.reload86, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %17
    i32 30612, label %.split72
    i32 5853, label %.split72.split
    i32 28100, label %19
    i32 1142, label %.split73
    i32 281, label %.split73.split
    i32 20537, label %37
    i32 15921, label %.split74
    i32 8945, label %.split74.split
    i32 26285, label %39
    i32 2997, label %.split75
    i32 14680, label %.split75.split
    i32 20976, label %41
    i32 31891, label %.split76
    i32 21655, label %.split76.split
    i32 25906, label %43
    i32 18457, label %.split77
    i32 1323, label %44
    i32 28881, label %.split78
    i32 2240, label %.split78.split
    i32 9725, label %46
    i32 32278, label %.split79
    i32 2446, label %.split79.split
    i32 590, label %48
    i32 840, label %49
    i32 18587, label %.split80
    i32 16907, label %.split80.split
    i32 21237, label %136
    i32 23611, label %.split81
    i32 12617, label %.split81.split
    i32 12456, label %137
    i32 867, label %.split82
    i32 29533, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload85 = load volatile i32, ptr %.reg2mem83, align 4
  store i32 %.reload85, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %14 = load i32, ptr %VMJmpFlag, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload84 = load volatile i32, ptr %.reg2mem83, align 4
  store i32 %.reload84, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload88 = load volatile i32, ptr %.reg2mem87, align 4
  store i32 %.reload88, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %swVar.ptr = alloca i32, align 4
  store ptr %swVar.ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar.ptr.reload101 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 18587, ptr %swVar.ptr.reload101, align 4
  br label %Default

.split.split:                                     ; preds = %RunBlock
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar.ptr.reload100 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %swVar = load i32, ptr %swVar.ptr.reload100, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 18587, label %newBB
    i32 16907, label %17
    i32 21237, label %19
    i32 23611, label %37
    i32 12617, label %39
    i32 12456, label %41
    i32 867, label %43
    i32 29533, label %44
    i32 6878, label %46
    i32 28223, label %48
    i32 17887, label %49
    i32 31597, label %136
    i32 20584, label %137
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %.reload66 = load i1, ptr %.reg2mem65, align 1
  %16 = select i1 %.reload66, i32 29533, i32 16907
  %swVar.ptr.reload99 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %16, ptr %swVar.ptr.reload99, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  store i32 0, ptr %.reg2mem70, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

17:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  store i32 %.reload71, ptr %.reg2mem32, align 4
  br label %Default

.split72:                                         ; preds = %RunBlock
  %18 = select i1 true, i32 21237, i32 17887
  store i32 %18, ptr %.reg2mem102, align 4
  br label %Default

.split72.split:                                   ; preds = %RunBlock
  %swVar.ptr.reload98 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload103 = load volatile i32, ptr %.reg2mem102, align 4
  store i32 %.reload103, ptr %swVar.ptr.reload98, align 4
  br label %Default

19:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload64 = load i32, ptr %.reg2mem32, align 4
  %.reload69 = load ptr, ptr %.reg2mem67, align 8
  %20 = getelementptr inbounds i8, ptr %.reload69, i32 %.reload64
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %.reg2mem104, align 1
  %.reload63 = load i32, ptr %.reg2mem32, align 4
  store i32 %.reload63, ptr %.reload63.reg2mem, align 4
  br label %Default

.split73:                                         ; preds = %RunBlock
  %.reload63.reload = load volatile i32, ptr %.reload63.reg2mem, align 4
  %22 = urem i32 %.reload63.reload, 17
  %23 = getelementptr inbounds i8, ptr %data, i32 %22
  %24 = load i8, ptr %23, align 1
  %.reload106 = load volatile i8, ptr %.reg2mem104, align 1
  %25 = xor i8 %.reload106, -1
  %26 = and i8 %24, %25
  %27 = xor i8 %24, -1
  %.reload105 = load volatile i8, ptr %.reg2mem104, align 1
  %28 = and i8 %.reload105, %27
  %29 = or i8 %26, %28
  %.reload107 = load volatile i8, ptr %.reg2mem104, align 1
  %30 = xor i8 %.reload107, %24
  %.reload62 = load i32, ptr %.reg2mem32, align 4
  %31 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload62
  store i8 %29, ptr %31, align 1
  br label %Default

.split73.split:                                   ; preds = %RunBlock
  %32 = sub i32 0, 1
  %.reload44 = load i32, ptr %.reg2mem32, align 4
  %33 = sub i32 %.reload44, %32
  store i32 %33, ptr %.reg2mem29, align 4
  %.reload61 = load i32, ptr %.reg2mem32, align 4
  %34 = add nuw nsw i32 %.reload61, 1
  %.reload31 = load i32, ptr %.reg2mem29, align 4
  %35 = icmp eq i32 %.reload31, 3
  store i1 %35, ptr %.reg2mem, align 1
  %36 = select i1 true, i32 23611, i32 17887
  %swVar.ptr.reload97 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 %36, ptr %swVar.ptr.reload97, align 4
  br label %Default

37:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i1, ptr %.reg2mem, align 1
  %38 = select i1 %.reload, i32 12617, i32 16907
  store i32 %38, ptr %.reg2mem108, align 4
  br label %Default

.split74:                                         ; preds = %RunBlock
  %swVar.ptr.reload96 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload109 = load volatile i32, ptr %.reg2mem108, align 4
  store i32 %.reload109, ptr %swVar.ptr.reload96, align 4
  %.reload30 = load i32, ptr %.reg2mem29, align 4
  store i32 %.reload30, ptr %.reg2mem70, align 4
  br label %Default

.split74.split:                                   ; preds = %RunBlock
  br label %Default

39:                                               ; preds = %RunBlock, %dispatchBB.split
  %40 = select i1 true, i32 12456, i32 31597
  store i32 %40, ptr %.reg2mem110, align 4
  br label %Default

.split75:                                         ; preds = %RunBlock
  %swVar.ptr.reload95 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload111 = load volatile i32, ptr %.reg2mem110, align 4
  store i32 %.reload111, ptr %swVar.ptr.reload95, align 4
  br label %Default

.split75.split:                                   ; preds = %RunBlock
  br label %Default

41:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_3??_C@_02DPKJAMEF@?$CFd?$AA@", align 4
  %42 = select i1 true, i32 867, i32 31597
  store i32 %42, ptr %.reg2mem112, align 4
  br label %Default

.split76:                                         ; preds = %RunBlock
  %swVar.ptr.reload94 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload113 = load volatile i32, ptr %.reg2mem112, align 4
  store i32 %.reload113, ptr %swVar.ptr.reload94, align 4
  br label %Default

.split76.split:                                   ; preds = %RunBlock
  br label %Default

43:                                               ; preds = %RunBlock, %dispatchBB.split
  %swVar.ptr.reload93 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 29533, ptr %swVar.ptr.reload93, align 4
  br label %Default

.split77:                                         ; preds = %RunBlock
  br label %Default

44:                                               ; preds = %RunBlock, %dispatchBB.split
  %45 = select i1 true, i32 6878, i32 20584
  store i32 %45, ptr %.reg2mem114, align 4
  br label %Default

.split78:                                         ; preds = %RunBlock
  %swVar.ptr.reload92 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload115 = load volatile i32, ptr %.reg2mem114, align 4
  store i32 %.reload115, ptr %swVar.ptr.reload92, align 4
  br label %Default

.split78.split:                                   ; preds = %RunBlock
  br label %Default

46:                                               ; preds = %RunBlock, %dispatchBB.split
  %47 = select i1 true, i32 28223, i32 20584
  store i32 %47, ptr %.reg2mem116, align 4
  br label %Default

.split79:                                         ; preds = %RunBlock
  %swVar.ptr.reload91 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  %.reload117 = load volatile i32, ptr %.reg2mem116, align 4
  store i32 %.reload117, ptr %swVar.ptr.reload91, align 4
  br label %Default

.split79.split:                                   ; preds = %RunBlock
  br label %Default

48:                                               ; preds = %RunBlock, %dispatchBB.split
  ret void

49:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload60 = load i32, ptr %.reg2mem32, align 4
  %.reload68 = load ptr, ptr %.reg2mem67, align 8
  %50 = getelementptr inbounds i8, ptr %.reload68, i32 %.reload60
  %51 = load i8, ptr %50, align 1
  %.reload56 = load i32, ptr %.reg2mem32, align 4
  %52 = shl i32 %.reload56, 17
  %.reload43 = load i32, ptr %.reg2mem32, align 4
  %53 = sub i32 0, %.reload43
  %54 = add i32 0, %53
  %.reload55 = load i32, ptr %.reg2mem32, align 4
  %55 = sub i32 0, %.reload55
  %56 = add i32 %54, -1266085886
  %57 = add i32 %56, 17
  %58 = sub i32 %57, -1266085886
  %59 = add i32 %54, 17
  %.reload54 = load i32, ptr %.reg2mem32, align 4
  %60 = shl i32 %.reload54, 17
  %61 = sub i32 0, 17
  %.reload42 = load i32, ptr %.reg2mem32, align 4
  %62 = add i32 %.reload42, %61
  %.reload53 = load i32, ptr %.reg2mem32, align 4
  %63 = sub i32 %.reload53, 17
  %64 = mul i32 %62, 17
  %.reload41 = load i32, ptr %.reg2mem32, align 4
  %65 = sub i32 0, %.reload41
  %66 = add i32 0, %65
  %.reload52 = load i32, ptr %.reg2mem32, align 4
  %67 = sub i32 0, %.reload52
  %68 = sub i32 %66, -68664288
  %69 = add i32 %68, 17
  %70 = add i32 %69, -68664288
  %71 = add i32 %66, 17
  %.reload40 = load i32, ptr %.reg2mem32, align 4
  %72 = sub i32 %.reload40, 571962659
  %73 = sub i32 %72, 17
  %74 = add i32 %73, 571962659
  %.reload51 = load i32, ptr %.reg2mem32, align 4
  %75 = sub i32 %.reload51, 17
  %76 = mul i32 %74, 17
  %.reload59 = load i32, ptr %.reg2mem32, align 4
  %77 = urem i32 %.reload59, 17
  %78 = getelementptr inbounds i8, ptr %data, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = sub i8 0, %79
  %81 = add i8 %51, %80
  %82 = sub i8 %51, %79
  %83 = mul i8 %81, %79
  %84 = shl i8 %51, %79
  %85 = shl i8 %51, %79
  %86 = xor i8 %51, -1
  %87 = and i8 %79, %86
  %88 = xor i8 %79, -1
  %89 = and i8 %51, %88
  %90 = or i8 %87, %89
  %91 = xor i8 %51, %79
  %.reload58 = load i32, ptr %.reg2mem32, align 4
  %92 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload58
  store i8 %90, ptr %92, align 1
  %93 = sub i32 0, -1153329599
  %.reload39 = load i32, ptr %.reg2mem32, align 4
  %94 = sub i32 %93, %.reload39
  %95 = add i32 %94, -1153329599
  %.reload50 = load i32, ptr %.reg2mem32, align 4
  %96 = sub i32 0, %.reload50
  %97 = sub i32 0, 1
  %98 = sub i32 %95, %97
  %99 = add i32 %95, 1
  %100 = add i32 0, 448598944
  %.reload38 = load i32, ptr %.reg2mem32, align 4
  %101 = sub i32 %100, %.reload38
  %102 = sub i32 %101, 448598944
  %.reload49 = load i32, ptr %.reg2mem32, align 4
  %103 = sub i32 0, %.reload49
  %104 = sub i32 0, %102
  %105 = sub i32 0, 1
  %106 = add i32 %104, %105
  %107 = sub i32 0, %106
  %108 = add i32 %102, 1
  %.reload37 = load i32, ptr %.reg2mem32, align 4
  %109 = sub i32 %.reload37, 727202030
  %110 = sub i32 %109, 1
  %111 = add i32 %110, 727202030
  %.reload48 = load i32, ptr %.reg2mem32, align 4
  %112 = sub i32 %.reload48, 1
  %113 = mul i32 %111, 1
  %114 = sub i32 0, 1
  %.reload36 = load i32, ptr %.reg2mem32, align 4
  %115 = add i32 %.reload36, %114
  %.reload47 = load i32, ptr %.reg2mem32, align 4
  %116 = sub i32 %.reload47, 1
  %117 = mul i32 %115, 1
  br label %Default

.split80:                                         ; preds = %RunBlock
  %.reload35 = load i32, ptr %.reg2mem32, align 4
  %118 = sub i32 0, %.reload35
  %119 = add i32 0, %118
  %.reload46 = load i32, ptr %.reg2mem32, align 4
  %120 = sub i32 0, %.reload46
  %121 = sub i32 %119, 323876149
  %122 = add i32 %121, 1
  %123 = add i32 %122, 323876149
  %124 = add i32 %119, 1
  %.reload34 = load i32, ptr %.reg2mem32, align 4
  %125 = sub i32 %.reload34, 1937835585
  %126 = sub i32 %125, 1
  %127 = add i32 %126, 1937835585
  %.reload45 = load i32, ptr %.reg2mem32, align 4
  %128 = sub i32 %.reload45, 1
  %129 = mul i32 %127, 1
  %.reload33 = load i32, ptr %.reg2mem32, align 4
  %130 = sub i32 0, %.reload33
  %131 = sub i32 0, 1
  %132 = add i32 %130, %131
  %133 = sub i32 0, %132
  store i32 %133, ptr %.reg2mem118, align 4
  br label %Default

.split80.split:                                   ; preds = %RunBlock
  %.reload57 = load i32, ptr %.reg2mem32, align 4
  %134 = add nuw nsw i32 %.reload57, 1
  %.reload119 = load volatile i32, ptr %.reg2mem118, align 4
  %135 = icmp eq i32 %.reload119, 3
  %swVar.ptr.reload90 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 21237, ptr %swVar.ptr.reload90, align 4
  br label %Default

136:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_3??_C@_02DPKJAMEF@?$CFd?$AA@", align 4
  br label %Default

.split81:                                         ; preds = %RunBlock
  %swVar.ptr.reload89 = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 12456, ptr %swVar.ptr.reload89, align 4
  br label %Default

.split81.split:                                   ; preds = %RunBlock
  br label %Default

137:                                              ; preds = %RunBlock, %dispatchBB.split
  %swVar.ptr.reload = load volatile ptr, ptr %swVar.ptr.reg2mem, align 8
  store i32 6878, ptr %swVar.ptr.reload, align 4
  br label %Default

.split82:                                         ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split82, %137, %.split81.split, %.split81, %136, %.split80.split, %.split80, %49, %.split79.split, %.split79, %46, %.split78.split, %.split78, %44, %.split77, %43, %.split76.split, %.split76, %41, %.split75.split, %.split75, %39, %.split74.split, %.split74, %37, %.split73.split, %.split73, %19, %.split72.split, %.split72, %17, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
}

define private void @goron_decrypt_string_4(ptr nocapture %plain_string, ptr nocapture readonly %data) {
  %.reload36.reg2mem = alloca i32, align 4
  %.reg2mem138 = alloca i32, align 4
  %.reg2mem136 = alloca i8, align 1
  %.reg2mem118 = alloca i8, align 1
  %.reg2mem103 = alloca i8, align 1
  %.reg2mem101 = alloca i32, align 4
  %.reg2mem99 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem95 = alloca i32, align 4
  %.reload.reg2mem = alloca i1, align 1
  %.reg2mem93 = alloca i8, align 1
  %.reg2mem91 = alloca i8, align 1
  %.reg2mem89 = alloca i8, align 1
  %.reg2mem87 = alloca i8, align 1
  %.reg2mem83 = alloca i8, align 1
  %.reg2mem79 = alloca i8, align 1
  %.reg2mem77 = alloca i32, align 4
  %.reload45.reg2mem = alloca i1, align 1
  %.reg2mem75 = alloca i32, align 4
  %swVar.reg2mem = alloca i32, align 4
  %.reg2mem49.reg2mem = alloca ptr, align 8
  %.reg2mem46.reg2mem = alloca ptr, align 8
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem65 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  %.reg2mem = alloca i1, align 1
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem44 = alloca i1, align 1
  %VMpc = alloca i32, align 4
  store i32 0, ptr %VMpc, align 4
  %VMJmpFlag = alloca i32, align 4
  br label %VMEntry

VMEntry:                                          ; preds = %JmpSelectFalse, %JmpSelectTrue, %JmpBoring, %Default, %0
  %1 = load i32, ptr %VMpc, align 4
  %2 = add i32 %1, 1
  %3 = add i32 %1, 2
  %4 = getelementptr [12 x i32], ptr @opcodes.66, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [12 x i32], ptr @opcodes.66, i32 0, i32 %2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %.reg2mem65, align 4
  %8 = getelementptr [12 x i32], ptr @opcodes.66, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %.reg2mem69, align 4
  %10 = add i32 %1, 3
  store i32 %10, ptr %VMpc, align 4
  switch i32 %5, label %Default [
    i32 1, label %RunBlock
    i32 2, label %JmpBoring
    i32 3, label %JmpSelect
  ]

RunBlock:                                         ; preds = %VMEntry
  %.reload68 = load volatile i32, ptr %.reg2mem65, align 4
  switch i32 %.reload68, label %Default [
    i32 38, label %.split
    i32 7719, label %.split.split
    i32 21238, label %dispatchBB
    i32 2437, label %dispatchBB.split
    i32 8855, label %swDefault
    i32 11797, label %newBB
    i32 8365, label %newBB.split
    i32 32285, label %newBB.split.split
    i32 10450, label %14
    i32 30612, label %.split51
    i32 5853, label %.split51.split
    i32 28100, label %19
    i32 1142, label %.split52
    i32 281, label %.split52.split
    i32 20537, label %21
    i32 15921, label %.split53
    i32 8945, label %.split53.split
    i32 26285, label %23
    i32 2997, label %.split54
    i32 14680, label %.split54.split
    i32 20976, label %47
    i32 31891, label %.split55
    i32 21655, label %.split55.split
    i32 25906, label %49
    i32 18457, label %.split56
    i32 1323, label %.split56.split
    i32 28881, label %51
    i32 2240, label %.split57
    i32 9725, label %.split57.split
    i32 32278, label %53
    i32 2446, label %.split58
    i32 590, label %54
    i32 840, label %.split59
    i32 18587, label %.split59.split
    i32 16907, label %56
    i32 21237, label %.split60
    i32 23611, label %.split60.split
    i32 12617, label %58
    i32 12456, label %59
    i32 867, label %.split61
    i32 29533, label %.split61.split
    i32 6878, label %63
    i32 28223, label %.split62
    i32 17887, label %.split62.split
    i32 31597, label %130
    i32 20584, label %.split63
    i32 12212, label %.split63.split
    i32 31111, label %131
    i32 7578, label %.split64
    i32 17066, label %returnBB
  ]

JmpBoring:                                        ; preds = %VMEntry
  %.reload67 = load volatile i32, ptr %.reg2mem65, align 4
  store i32 %.reload67, ptr %VMpc, align 4
  br label %VMEntry

JmpSelect:                                        ; preds = %VMEntry
  %11 = load i32, ptr %VMJmpFlag, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %JmpSelectTrue, label %JmpSelectFalse

JmpSelectTrue:                                    ; preds = %JmpSelect
  %.reload66 = load volatile i32, ptr %.reg2mem65, align 4
  store i32 %.reload66, ptr %VMpc, align 4
  br label %VMEntry

JmpSelectFalse:                                   ; preds = %JmpSelect
  %.reload70 = load volatile i32, ptr %.reg2mem69, align 4
  store i32 %.reload70, ptr %VMpc, align 4
  br label %VMEntry

.split:                                           ; preds = %RunBlock
  %.reg2mem46 = alloca ptr, align 8
  store ptr %.reg2mem46, ptr %.reg2mem46.reg2mem, align 8
  %.reg2mem49 = alloca i32, align 4
  store ptr %.reg2mem49, ptr %.reg2mem49.reg2mem, align 8
  br label %Default

.split.split:                                     ; preds = %RunBlock
  %fix_stack_point = bitcast i32 0 to i32
  store i32 6878, ptr %swVar.ptr, align 4
  br label %Default

dispatchBB:                                       ; preds = %RunBlock
  %swVar = load i32, ptr %swVar.ptr, align 4
  store i32 %swVar, ptr %swVar.reg2mem, align 4
  br label %Default

dispatchBB.split:                                 ; preds = %RunBlock
  %swVar.reload = load volatile i32, ptr %swVar.reg2mem, align 4
  switch i32 %swVar.reload, label %swDefault [
    i32 6878, label %newBB
    i32 28223, label %14
    i32 17887, label %19
    i32 31597, label %21
    i32 20584, label %23
    i32 12212, label %47
    i32 31111, label %49
    i32 7578, label %51
    i32 17066, label %53
    i32 7629, label %54
    i32 29404, label %56
    i32 12279, label %58
    i32 13505, label %59
    i32 24388, label %63
    i32 11649, label %130
    i32 12329, label %131
  ]

swDefault:                                        ; preds = %RunBlock, %dispatchBB.split
  br label %Default

newBB:                                            ; preds = %RunBlock, %dispatchBB.split
  %13 = select i1 true, i32 28223, i32 13505
  store i32 %13, ptr %.reg2mem75, align 4
  br label %Default

newBB.split:                                      ; preds = %RunBlock
  %.reload76 = load volatile i32, ptr %.reg2mem75, align 4
  store i32 %.reload76, ptr %swVar.ptr, align 4
  br label %Default

newBB.split.split:                                ; preds = %RunBlock
  br label %Default

14:                                               ; preds = %RunBlock, %dispatchBB.split
  %15 = getelementptr inbounds i8, ptr %data, i32 19
  %.reg2mem46.reload = load volatile ptr, ptr %.reg2mem46.reg2mem, align 8
  store ptr %15, ptr %.reg2mem46.reload, align 8
  br label %Default

.split51:                                         ; preds = %RunBlock
  %16 = load i32, ptr @"dec_status_4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", align 4
  %17 = icmp eq i32 %16, 1
  store i1 %17, ptr %.reg2mem44, align 1
  %18 = select i1 true, i32 17887, i32 13505
  store i32 %18, ptr %swVar.ptr, align 4
  br label %Default

.split51.split:                                   ; preds = %RunBlock
  br label %Default

19:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload45 = load i1, ptr %.reg2mem44, align 1
  store i1 %.reload45, ptr %.reload45.reg2mem, align 1
  br label %Default

.split52:                                         ; preds = %RunBlock
  %.reload45.reload = load volatile i1, ptr %.reload45.reg2mem, align 1
  %20 = select i1 %.reload45.reload, i32 7629, i32 31597
  store i32 %20, ptr %.reg2mem77, align 4
  br label %Default

.split52.split:                                   ; preds = %RunBlock
  %.reload78 = load volatile i32, ptr %.reg2mem77, align 4
  store i32 %.reload78, ptr %swVar.ptr, align 4
  %.reg2mem49.reload74 = load volatile ptr, ptr %.reg2mem49.reg2mem, align 8
  store i32 0, ptr %.reg2mem49.reload74, align 4
  br label %Default

21:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reg2mem49.reload = load volatile ptr, ptr %.reg2mem49.reg2mem, align 8
  %.reload50 = load i32, ptr %.reg2mem49.reload, align 4
  store i32 %.reload50, ptr %.reg2mem26, align 4
  br label %Default

.split53:                                         ; preds = %RunBlock
  %22 = select i1 true, i32 20584, i32 24388
  store i32 %22, ptr %swVar.ptr, align 4
  br label %Default

.split53.split:                                   ; preds = %RunBlock
  br label %Default

23:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload43 = load i32, ptr %.reg2mem26, align 4
  %.reg2mem46.reload71 = load volatile ptr, ptr %.reg2mem46.reg2mem, align 8
  %.reload48 = load ptr, ptr %.reg2mem46.reload71, align 8
  %24 = getelementptr inbounds i8, ptr %.reload48, i32 %.reload43
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr %.reg2mem79, align 1
  %.reload42 = load i32, ptr %.reg2mem26, align 4
  %26 = urem i32 %.reload42, 19
  %27 = getelementptr inbounds i8, ptr %data, i32 %26
  %28 = load i8, ptr %27, align 1
  store i8 %28, ptr %.reg2mem83, align 1
  %.reload81 = load volatile i8, ptr %.reg2mem79, align 1
  %29 = xor i8 %.reload81, -1
  %30 = and i8 -35, %29
  store i8 %30, ptr %.reg2mem87, align 1
  br label %Default

.split54:                                         ; preds = %RunBlock
  %31 = xor i8 -35, -1
  %.reload80 = load volatile i8, ptr %.reg2mem79, align 1
  %32 = and i8 %.reload80, %31
  store i8 %32, ptr %.reg2mem89, align 1
  %.reload85 = load volatile i8, ptr %.reg2mem83, align 1
  %33 = xor i8 %.reload85, -1
  %34 = and i8 %33, -35
  store i8 %34, ptr %.reg2mem91, align 1
  %.reload84 = load volatile i8, ptr %.reg2mem83, align 1
  %35 = and i8 %.reload84, %31
  store i8 %35, ptr %.reg2mem93, align 1
  br label %Default

.split54.split:                                   ; preds = %RunBlock
  %.reload88 = load volatile i8, ptr %.reg2mem87, align 1
  %.reload90 = load volatile i8, ptr %.reg2mem89, align 1
  %36 = or i8 %.reload88, %.reload90
  %.reload92 = load volatile i8, ptr %.reg2mem91, align 1
  %.reload94 = load volatile i8, ptr %.reg2mem93, align 1
  %37 = or i8 %.reload92, %.reload94
  %38 = xor i8 %36, %37
  %.reload82 = load volatile i8, ptr %.reg2mem79, align 1
  %.reload86 = load volatile i8, ptr %.reg2mem83, align 1
  %39 = xor i8 %.reload82, %.reload86
  %.reload41 = load i32, ptr %.reg2mem26, align 4
  %40 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload41
  store i8 %38, ptr %40, align 1
  %.reload30 = load i32, ptr %.reg2mem26, align 4
  %41 = sub i32 %.reload30, 1960157741
  %42 = add i32 %41, 1
  %43 = add i32 %42, 1960157741
  store i32 %43, ptr %.reg2mem23, align 4
  %.reload40 = load i32, ptr %.reg2mem26, align 4
  %44 = add nuw nsw i32 %.reload40, 1
  %.reload25 = load i32, ptr %.reg2mem23, align 4
  %45 = icmp eq i32 %.reload25, 4
  store i1 %45, ptr %.reg2mem, align 1
  %46 = select i1 true, i32 12212, i32 24388
  store i32 %46, ptr %swVar.ptr, align 4
  br label %Default

47:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload = load i1, ptr %.reg2mem, align 1
  store i1 %.reload, ptr %.reload.reg2mem, align 1
  br label %Default

.split55:                                         ; preds = %RunBlock
  %.reload.reload = load volatile i1, ptr %.reload.reg2mem, align 1
  %48 = select i1 %.reload.reload, i32 31111, i32 31597
  store i32 %48, ptr %swVar.ptr, align 4
  br label %Default

.split55.split:                                   ; preds = %RunBlock
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  %.reg2mem49.reload73 = load volatile ptr, ptr %.reg2mem49.reg2mem, align 8
  store i32 %.reload24, ptr %.reg2mem49.reload73, align 4
  br label %Default

49:                                               ; preds = %RunBlock, %dispatchBB.split
  %50 = select i1 true, i32 7578, i32 11649
  store i32 %50, ptr %.reg2mem95, align 4
  br label %Default

.split56:                                         ; preds = %RunBlock
  %.reload96 = load volatile i32, ptr %.reg2mem95, align 4
  store i32 %.reload96, ptr %swVar.ptr, align 4
  br label %Default

.split56.split:                                   ; preds = %RunBlock
  br label %Default

51:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", align 4
  br label %Default

.split57:                                         ; preds = %RunBlock
  %52 = select i1 true, i32 17066, i32 11649
  store i32 %52, ptr %swVar.ptr, align 4
  br label %Default

.split57.split:                                   ; preds = %RunBlock
  br label %Default

53:                                               ; preds = %RunBlock, %dispatchBB.split
  store i32 7629, ptr %swVar.ptr, align 4
  br label %Default

.split58:                                         ; preds = %RunBlock
  br label %Default

54:                                               ; preds = %RunBlock, %dispatchBB.split
  %55 = select i1 true, i32 29404, i32 12329
  store i32 %55, ptr %.reg2mem97, align 4
  br label %Default

.split59:                                         ; preds = %RunBlock
  %.reload98 = load volatile i32, ptr %.reg2mem97, align 4
  store i32 %.reload98, ptr %swVar.ptr, align 4
  br label %Default

.split59.split:                                   ; preds = %RunBlock
  br label %Default

56:                                               ; preds = %RunBlock, %dispatchBB.split
  %57 = select i1 true, i32 12279, i32 12329
  store i32 %57, ptr %.reg2mem99, align 4
  br label %Default

.split60:                                         ; preds = %RunBlock
  %.reload100 = load volatile i32, ptr %.reg2mem99, align 4
  store i32 %.reload100, ptr %swVar.ptr, align 4
  br label %Default

.split60.split:                                   ; preds = %RunBlock
  br label %Default

58:                                               ; preds = %RunBlock, %dispatchBB.split
  ret void

59:                                               ; preds = %RunBlock, %dispatchBB.split
  %60 = getelementptr inbounds i8, ptr %data, i32 19
  %61 = load i32, ptr @"dec_status_4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", align 4
  store i32 %61, ptr %.reg2mem101, align 4
  br label %Default

.split61:                                         ; preds = %RunBlock
  %.reload102 = load volatile i32, ptr %.reg2mem101, align 4
  %62 = icmp eq i32 %.reload102, 1
  br label %Default

.split61.split:                                   ; preds = %RunBlock
  store i32 28223, ptr %swVar.ptr, align 4
  br label %Default

63:                                               ; preds = %RunBlock, %dispatchBB.split
  %.reload39 = load i32, ptr %.reg2mem26, align 4
  %.reg2mem46.reload72 = load volatile ptr, ptr %.reg2mem46.reg2mem, align 8
  %.reload47 = load ptr, ptr %.reg2mem46.reload72, align 8
  %64 = getelementptr inbounds i8, ptr %.reload47, i32 %.reload39
  %65 = load i8, ptr %64, align 1
  store i8 %65, ptr %.reg2mem103, align 1
  %.reload29 = load i32, ptr %.reg2mem26, align 4
  %66 = add i32 %.reload29, -1949164004
  %67 = sub i32 %66, 19
  %68 = sub i32 %67, -1949164004
  %.reload35 = load i32, ptr %.reg2mem26, align 4
  %69 = sub i32 %.reload35, 19
  %70 = mul i32 %68, 19
  %.reload38 = load i32, ptr %.reg2mem26, align 4
  %71 = urem i32 %.reload38, 19
  %72 = getelementptr inbounds i8, ptr %data, i32 %71
  %73 = load i8, ptr %72, align 1
  store i8 %73, ptr %.reg2mem118, align 1
  %.reload116 = load volatile i8, ptr %.reg2mem103, align 1
  %.reload134 = load volatile i8, ptr %.reg2mem118, align 1
  %74 = shl i8 %.reload116, %.reload134
  %.reload110 = load volatile i8, ptr %.reg2mem103, align 1
  %75 = sub i8 %.reload110, 11
  %.reload125 = load volatile i8, ptr %.reg2mem118, align 1
  %76 = sub i8 %75, %.reload125
  %77 = add i8 %76, 11
  %.reload115 = load volatile i8, ptr %.reg2mem103, align 1
  %.reload133 = load volatile i8, ptr %.reg2mem118, align 1
  %78 = sub i8 %.reload115, %.reload133
  %.reload132 = load volatile i8, ptr %.reg2mem118, align 1
  %79 = mul i8 %77, %.reload132
  %80 = add i8 0, -92
  store i8 %80, ptr %.reg2mem136, align 1
  br label %Default

.split62:                                         ; preds = %RunBlock
  %.reload109 = load volatile i8, ptr %.reg2mem103, align 1
  %.reload137 = load volatile i8, ptr %.reg2mem136, align 1
  %81 = sub i8 %.reload137, %.reload109
  %82 = sub i8 %81, -92
  %.reload114 = load volatile i8, ptr %.reg2mem103, align 1
  %83 = sub i8 0, %.reload114
  %84 = add i8 %82, 112
  %.reload124 = load volatile i8, ptr %.reg2mem118, align 1
  %85 = add i8 %84, %.reload124
  %86 = sub i8 %85, 112
  %.reload131 = load volatile i8, ptr %.reg2mem118, align 1
  %87 = add i8 %82, %.reload131
  %.reload108 = load volatile i8, ptr %.reg2mem103, align 1
  %88 = sub i8 0, %.reload108
  %89 = add i8 0, %88
  %.reload113 = load volatile i8, ptr %.reg2mem103, align 1
  %90 = sub i8 0, %.reload113
  %91 = add i8 %89, -104
  %.reload123 = load volatile i8, ptr %.reg2mem118, align 1
  %92 = add i8 %91, %.reload123
  %93 = sub i8 %92, -104
  %.reload130 = load volatile i8, ptr %.reg2mem118, align 1
  %94 = add i8 %89, %.reload130
  %.reload122 = load volatile i8, ptr %.reg2mem118, align 1
  %95 = sub i8 0, %.reload122
  %.reload107 = load volatile i8, ptr %.reg2mem103, align 1
  %96 = add i8 %.reload107, %95
  %.reload112 = load volatile i8, ptr %.reg2mem103, align 1
  %.reload129 = load volatile i8, ptr %.reg2mem118, align 1
  %97 = sub i8 %.reload112, %.reload129
  %.reload128 = load volatile i8, ptr %.reg2mem118, align 1
  %98 = mul i8 %96, %.reload128
  %.reload106 = load volatile i8, ptr %.reg2mem103, align 1
  %99 = add i8 %.reload106, 80
  %.reload121 = load volatile i8, ptr %.reg2mem118, align 1
  %100 = sub i8 %99, %.reload121
  %101 = sub i8 %100, 80
  %.reload111 = load volatile i8, ptr %.reg2mem103, align 1
  %.reload127 = load volatile i8, ptr %.reg2mem118, align 1
  %102 = sub i8 %.reload111, %.reload127
  %.reload126 = load volatile i8, ptr %.reg2mem118, align 1
  %103 = mul i8 %101, %.reload126
  %.reload105 = load volatile i8, ptr %.reg2mem103, align 1
  %104 = xor i8 %.reload105, -1
  %105 = and i8 122, %104
  %106 = xor i8 122, -1
  %.reload104 = load volatile i8, ptr %.reg2mem103, align 1
  %107 = and i8 %.reload104, %106
  %.reload120 = load volatile i8, ptr %.reg2mem118, align 1
  %108 = xor i8 %.reload120, -1
  %109 = and i8 %108, 122
  %.reload119 = load volatile i8, ptr %.reg2mem118, align 1
  %110 = and i8 %.reload119, %106
  %111 = or i8 %105, %107
  %112 = or i8 %109, %110
  %113 = xor i8 %111, %112
  %.reload117 = load volatile i8, ptr %.reg2mem103, align 1
  %.reload135 = load volatile i8, ptr %.reg2mem118, align 1
  %114 = xor i8 %.reload117, %.reload135
  %.reload37 = load i32, ptr %.reg2mem26, align 4
  %115 = getelementptr inbounds i8, ptr %plain_string, i32 %.reload37
  store i8 %113, ptr %115, align 1
  %.reload34 = load i32, ptr %.reg2mem26, align 4
  %116 = shl i32 %.reload34, 1
  %.reload33 = load i32, ptr %.reg2mem26, align 4
  %117 = shl i32 %.reload33, 1
  %.reload32 = load i32, ptr %.reg2mem26, align 4
  %118 = shl i32 %.reload32, 1
  %.reload28 = load i32, ptr %.reg2mem26, align 4
  %119 = sub i32 0, %.reload28
  %120 = add i32 0, %119
  %.reload31 = load i32, ptr %.reg2mem26, align 4
  %121 = sub i32 0, %.reload31
  %122 = sub i32 0, 1
  %123 = sub i32 %120, %122
  %124 = add i32 %120, 1
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  %125 = add i32 %.reload27, -2087228009
  %126 = add i32 %125, 1
  %127 = sub i32 %126, -2087228009
  store i32 %127, ptr %.reg2mem138, align 4
  %.reload36 = load i32, ptr %.reg2mem26, align 4
  store i32 %.reload36, ptr %.reload36.reg2mem, align 4
  br label %Default

.split62.split:                                   ; preds = %RunBlock
  %.reload36.reload = load volatile i32, ptr %.reload36.reg2mem, align 4
  %128 = add nuw nsw i32 %.reload36.reload, 1
  %.reload139 = load volatile i32, ptr %.reg2mem138, align 4
  %129 = icmp eq i32 %.reload139, 4
  store i32 20584, ptr %swVar.ptr, align 4
  br label %Default

130:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 1, ptr @"dec_status_4??_C@_03PMGGPEJJ@?$CFd?6?$AA@", align 4
  br label %Default

.split63:                                         ; preds = %RunBlock
  store i32 7578, ptr %swVar.ptr, align 4
  br label %Default

.split63.split:                                   ; preds = %RunBlock
  br label %Default

131:                                              ; preds = %RunBlock, %dispatchBB.split
  store i32 29404, ptr %swVar.ptr, align 4
  br label %Default

.split64:                                         ; preds = %RunBlock
  br label %Default

returnBB:                                         ; preds = %RunBlock
  br label %Default

Default:                                          ; preds = %returnBB, %.split64, %131, %.split63.split, %.split63, %130, %.split62.split, %.split62, %63, %.split61.split, %.split61, %59, %.split60.split, %.split60, %56, %.split59.split, %.split59, %54, %.split58, %53, %.split57.split, %.split57, %51, %.split56.split, %.split56, %49, %.split55.split, %.split55, %47, %.split54.split, %.split54, %23, %.split53.split, %.split53, %21, %.split52.split, %.split52, %19, %.split51.split, %.split51, %14, %newBB.split.split, %newBB.split, %newBB, %swDefault, %dispatchBB, %.split.split, %.split, %RunBlock, %VMEntry
  br label %VMEntry
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
