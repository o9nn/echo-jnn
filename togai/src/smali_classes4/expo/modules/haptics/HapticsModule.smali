.class public final Lexpo/modules/haptics/HapticsModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "HapticsModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHapticsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HapticsModule.kt\nexpo/modules/haptics/HapticsModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,52:1\n70#2:53\n14#3:54\n25#3:55\n27#4,3:56\n31#4:216\n216#5,8:59\n224#5,2:119\n206#5:121\n207#5,2:152\n216#5,8:154\n224#5,2:214\n60#6,5:67\n56#6:72\n47#6,17:73\n60#6,5:162\n56#6:167\n47#6,17:168\n15#7,6:90\n21#7,19:100\n15#7,6:123\n21#7,19:133\n15#7,6:185\n21#7,19:195\n8#8,4:96\n8#8,4:129\n8#8,4:191\n26#9:122\n*S KotlinDebug\n*F\n+ 1 HapticsModule.kt\nexpo/modules/haptics/HapticsModule\n*L\n27#1:53\n27#1:54\n27#1:55\n27#1:56,3\n27#1:216\n30#1:59,8\n30#1:119,2\n34#1:121\n34#1:152,2\n38#1:154,8\n38#1:214,2\n30#1:67,5\n30#1:72\n30#1:73,17\n38#1:162,5\n38#1:167\n38#1:168,17\n30#1:90,6\n30#1:100,19\n34#1:123,6\n34#1:133,19\n38#1:185,6\n38#1:195,19\n30#1:96,4\n34#1:129,4\n38#1:191,4\n34#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/haptics/HapticsModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "vibrator",
        "Landroid/os/Vibrator;",
        "getVibrator",
        "()Landroid/os/Vibrator;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "vibrate",
        "",
        "type",
        "Lexpo/modules/haptics/arguments/HapticsVibrationType;",
        "expo-haptics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$vibrate(Lexpo/modules/haptics/HapticsModule;Lexpo/modules/haptics/arguments/HapticsVibrationType;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lexpo/modules/haptics/HapticsModule;->vibrate(Lexpo/modules/haptics/arguments/HapticsVibrationType;)V

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lexpo/modules/haptics/HapticsModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private final getVibrator()Landroid/os/Vibrator;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 21
    invoke-direct {p0}, Lexpo/modules/haptics/HapticsModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator_manager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.VibratorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lexpo/modules/haptics/HapticsModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Vibrator;

    :goto_0
    return-object v0
.end method

.method private final vibrate(Lexpo/modules/haptics/arguments/HapticsVibrationType;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Lexpo/modules/haptics/HapticsModule;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/haptics/arguments/HapticsVibrationType;->getTimings()[J

    move-result-object v1

    invoke-virtual {p1}, Lexpo/modules/haptics/arguments/HapticsVibrationType;->getAmplitudes()[I

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v1, p1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 10

    .line 27
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 53
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    const-string v0, "ExpoHaptics"

    .line 28
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 30
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "notificationAsync"

    .line 59
    const-class v3, Ljava/lang/String;

    const-class v4, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 60
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 66
    new-instance v7, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$1;

    invoke-direct {v7, p0}, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/haptics/HapticsModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 60
    invoke-direct {v3, v2, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_1

    .line 68
    :cond_0
    const-class v3, Ljava/lang/String;

    new-array v3, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 72
    sget-object v6, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 73
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 74
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 73
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v3, v5

    .line 62
    new-instance v6, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$3;

    invoke-direct {v6, p0}, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/haptics/HapticsModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 90
    const-class v7, Lkotlin/Unit;

    .line 94
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_0
    move-object v3, v7

    goto :goto_1

    .line 102
    :cond_1
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 106
    :cond_2
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 110
    :cond_3
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 112
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 114
    :cond_4
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 118
    :cond_5
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 119
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "selectionAsync"

    new-array v3, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 121
    new-instance v6, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$4;

    invoke-direct {v6, p0}, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/haptics/HapticsModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 123
    const-class v7, Lkotlin/Unit;

    .line 127
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 133
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 135
    :cond_6
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 137
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 139
    :cond_7
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 141
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 143
    :cond_8
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 145
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 147
    :cond_9
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 149
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 151
    :cond_a
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 152
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "impactAsync"

    .line 154
    const-class v3, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 155
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v4, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 161
    new-instance v5, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$5;

    invoke-direct {v5, p0}, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$5;-><init>(Lexpo/modules/haptics/HapticsModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 155
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_4

    .line 163
    :cond_b
    const-class v3, Ljava/lang/String;

    new-array v3, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 167
    sget-object v4, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$6;->INSTANCE:Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$6;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 168
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 169
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v5, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 168
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v6, v3, v5

    .line 157
    new-instance v4, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$7;

    invoke-direct {v4, p0}, Lexpo/modules/haptics/HapticsModule$definition$lambda$3$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/haptics/HapticsModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 185
    const-class v5, Lkotlin/Unit;

    .line 189
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 195
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_3
    move-object v3, v5

    goto :goto_4

    .line 197
    :cond_c
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 199
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 201
    :cond_d
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 203
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 205
    :cond_e
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 207
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 209
    :cond_f
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 211
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 213
    :cond_10
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 214
    :goto_4
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
