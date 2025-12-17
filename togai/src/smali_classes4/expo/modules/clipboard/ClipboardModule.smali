.class public final Lexpo/modules/clipboard/ClipboardModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ClipboardModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;,
        Lexpo/modules/clipboard/ClipboardModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipboardModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 10 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 11 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 12 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder\n+ 13 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n70#2:260\n14#3:261\n25#3:262\n27#4,3:263\n31#4:515\n216#5,8:266\n224#5,2:326\n232#5:328\n235#5,3:382\n206#5:385\n207#5,2:416\n206#5:474\n207#5,2:505\n60#6,5:274\n56#6:279\n47#6,17:280\n69#6,6:329\n56#6:335\n47#6,7:336\n75#6:343\n56#6:344\n47#6,7:345\n73#6:352\n60#6,5:420\n56#6:425\n47#6,17:426\n60#6,5:448\n56#6:453\n47#6,17:454\n15#7,6:297\n21#7,19:307\n15#7,6:353\n21#7,19:363\n15#7,6:387\n21#7,19:397\n15#7,6:476\n21#7,19:486\n8#8,4:303\n8#8,4:359\n8#8,4:393\n8#8,4:482\n26#9:386\n26#9:475\n257#10:418\n257#10:446\n23#11:419\n26#11,3:443\n23#11:447\n26#11,3:471\n75#12,2:507\n89#12,2:509\n103#12,2:511\n96#12,2:513\n1#13:516\n*S KotlinDebug\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n36#1:260\n36#1:261\n36#1:262\n36#1:263,3\n36#1:515\n40#1:266,8\n40#1:326,2\n48#1:328\n48#1:382,3\n61#1:385\n61#1:416,2\n105#1:474\n105#1:505,2\n40#1:274,5\n40#1:279\n40#1:280,17\n48#1:329,6\n48#1:335\n48#1:336,7\n48#1:343\n48#1:344\n48#1:345,7\n48#1:352\n70#1:420,5\n70#1:425\n70#1:426,17\n92#1:448,5\n92#1:453\n92#1:454,17\n40#1:297,6\n40#1:307,19\n48#1:353,6\n48#1:363,19\n61#1:387,6\n61#1:397,19\n105#1:476,6\n105#1:486,19\n40#1:303,4\n48#1:359,4\n61#1:393,4\n105#1:482,4\n61#1:386\n105#1:475\n70#1:418\n92#1:446\n70#1:419\n70#1:443,3\n92#1:447\n92#1:471,3\n113#1:507,2\n118#1:509,2\n122#1:511,2\n126#1:513,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\t\u001a\u00060\nR\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/clipboard/ClipboardModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "clipboardCacheDir",
        "Ljava/io/File;",
        "getClipboardCacheDir",
        "()Ljava/io/File;",
        "clipboardCacheDir$delegate",
        "Lkotlin/Lazy;",
        "clipboardEventEmitter",
        "Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;",
        "clipboardManager",
        "Landroid/content/ClipboardManager;",
        "getClipboardManager",
        "()Landroid/content/ClipboardManager;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "firstItem",
        "Landroid/content/ClipData$Item;",
        "getFirstItem",
        "(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;",
        "clipboardHasItemWithType",
        "",
        "mimeType",
        "",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "ClipboardEventEmitter",
        "expo-clipboard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final clipboardCacheDir$delegate:Lkotlin/Lazy;

.field private clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 141
    new-instance v0, Lexpo/modules/clipboard/ClipboardModule$clipboardCacheDir$2;

    invoke-direct {v0, p0}, Lexpo/modules/clipboard/ClipboardModule$clipboardCacheDir$2;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardCacheDir$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$clipboardHasItemWithType(Lexpo/modules/clipboard/ClipboardModule;Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/clipboard/ClipboardModule;->clipboardHasItemWithType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getClipboardCacheDir(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;)Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;
    .locals 0

    .line 35
    iget-object p0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    return-object p0
.end method

.method public static final synthetic access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFirstItem(Lexpo/modules/clipboard/ClipboardModule;Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/clipboard/ClipboardModule;->getFirstItem(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    return-void
.end method

.method private final clipboardHasItemWithType(Ljava/lang/String;)Z
    .locals 1

    .line 209
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getClipboardCacheDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardCacheDir$delegate:Lkotlin/Lazy;

    .line 141
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 2

    .line 138
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 139
    :cond_1
    new-instance v0, Lexpo/modules/clipboard/ClipboardUnavailableException;

    invoke-direct {v0}, Lexpo/modules/clipboard/ClipboardUnavailableException;-><init>()V

    throw v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "React Application Context is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getFirstItem(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;
    .locals 2

    .line 215
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 12

    .line 36
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 260
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

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 260
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    const-string v0, "ExpoClipboard"

    .line 37
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 40
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getStringAsync"

    .line 266
    const-class v3, Lexpo/modules/clipboard/GetStringOptions;

    const-class v4, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 267
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 273
    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;

    invoke-direct {v7, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 267
    invoke-direct {v3, v2, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_1

    .line 275
    :cond_0
    const-class v3, Lexpo/modules/clipboard/GetStringOptions;

    new-array v3, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 279
    sget-object v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 280
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 281
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/clipboard/GetStringOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 280
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v3, v5

    .line 269
    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;

    invoke-direct {v6, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 297
    const-class v7, Ljava/lang/String;

    .line 301
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 307
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_0
    move-object v3, v7

    goto :goto_1

    .line 309
    :cond_1
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 311
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 313
    :cond_2
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 315
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 317
    :cond_3
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 319
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 321
    :cond_4
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 323
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 325
    :cond_5
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 326
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setStringAsync"

    .line 330
    const-class v3, Ljava/lang/String;

    .line 331
    const-class v3, Lexpo/modules/clipboard/SetStringOptions;

    const/4 v3, 0x2

    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 335
    sget-object v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$4;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 336
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 337
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 336
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v3, v5

    .line 344
    sget-object v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$5;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 345
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 346
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/clipboard/SetStringOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 345
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v3, v4

    .line 328
    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;

    invoke-direct {v6, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 353
    const-class v7, Ljava/lang/Boolean;

    .line 357
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 363
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 365
    :cond_6
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 367
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 369
    :cond_7
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 371
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 373
    :cond_8
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 375
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 377
    :cond_9
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 379
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 381
    :cond_a
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 383
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasStringAsync"

    new-array v3, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 385
    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$7;

    invoke-direct {v6, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 387
    const-class v7, Ljava/lang/Boolean;

    .line 391
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 397
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 399
    :cond_b
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 401
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 403
    :cond_c
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 405
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 407
    :cond_d
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 409
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 411
    :cond_e
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 413
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 415
    :cond_f
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 416
    :goto_3
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getImageAsync"

    .line 70
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 419
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 421
    const-class v6, Lexpo/modules/clipboard/GetImageOptions;

    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 425
    sget-object v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$1;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 426
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 427
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/clipboard/GetImageOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 426
    invoke-direct {v8, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v8, v6, v5

    .line 443
    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$2;

    const/4 v8, 0x0

    invoke-direct {v7, v8, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 419
    invoke-direct {v2, v3, v6, v7}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 444
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    const-string v0, "setImageAsync"

    .line 92
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 447
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 449
    const-class v6, Ljava/lang/String;

    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 453
    sget-object v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$3;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$3;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 454
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 455
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 454
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v9, v6, v5

    .line 471
    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;

    invoke-direct {v7, v8, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 447
    invoke-direct {v2, v3, v6, v7}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 472
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 105
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasImageAsync"

    new-array v3, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 474
    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$8;

    invoke-direct {v6, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 476
    const-class v7, Ljava/lang/Boolean;

    .line 480
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 486
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_4

    .line 488
    :cond_10
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 490
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_4

    .line 492
    :cond_11
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 494
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_4

    .line 496
    :cond_12
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 498
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_4

    .line 500
    :cond_13
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 502
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_4

    .line 504
    :cond_14
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 505
    :goto_4
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "onClipboardChanged"

    aput-object v2, v0, v5

    .line 111
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnDestroy$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnDestroy$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersBackground$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersBackground$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersForeground$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersForeground$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
