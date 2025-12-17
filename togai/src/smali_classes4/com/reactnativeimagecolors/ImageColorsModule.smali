.class public final Lcom/reactnativeimagecolors/ImageColorsModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ImageColorsModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageColorsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageColorsModule.kt\ncom/reactnativeimagecolors/ImageColorsModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n*L\n1#1,191:1\n70#2:192\n14#3:193\n25#3:194\n27#4,3:195\n31#4:225\n270#5:198\n273#5,3:222\n69#6,6:199\n56#6:205\n47#6,7:206\n75#6:213\n56#6:214\n47#6,7:215\n*S KotlinDebug\n*F\n+ 1 ImageColorsModule.kt\ncom/reactnativeimagecolors/ImageColorsModule\n*L\n101#1:192\n101#1:193\n101#1:194\n101#1:195,3\n101#1:225\n104#1:198\n104#1:222,3\n104#1:199,6\n104#1:205\n104#1:206,7\n104#1:213\n104#1:214\n104#1:215,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u001c\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/reactnativeimagecolors/ImageColorsModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "service",
        "Lkotlinx/coroutines/CoroutineScope;",
        "calculateAverageColor",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "pixelSpacing",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getHex",
        "",
        "rgb",
        "handleError",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "err",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "parseFallbackColor",
        "hex",
        "react-native-image-colors_release"
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
.field private final service:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 36
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/reactnativeimagecolors/ImageColorsModule;->service:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$calculateAverageColor(Lcom/reactnativeimagecolors/ImageColorsModule;Landroid/graphics/Bitmap;I)I
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/reactnativeimagecolors/ImageColorsModule;->calculateAverageColor(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHex(Lcom/reactnativeimagecolors/ImageColorsModule;I)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/reactnativeimagecolors/ImageColorsModule;->getHex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getService$p(Lcom/reactnativeimagecolors/ImageColorsModule;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/reactnativeimagecolors/ImageColorsModule;->service:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$handleError(Lcom/reactnativeimagecolors/ImageColorsModule;Lexpo/modules/kotlin/Promise;Ljava/lang/Exception;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/reactnativeimagecolors/ImageColorsModule;->handleError(Lexpo/modules/kotlin/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method public static final synthetic access$parseFallbackColor(Lcom/reactnativeimagecolors/ImageColorsModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/reactnativeimagecolors/ImageColorsModule;->parseFallbackColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final calculateAverageColor(Landroid/graphics/Bitmap;I)I
    .locals 21

    move/from16 v0, p2

    const/16 v9, 0x1f4

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-double v1, v10

    int-to-double v3, v9

    div-double/2addr v1, v3

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v12, v1

    mul-int/lit16 v13, v11, 0x1f4

    .line 51
    new-array v14, v13, [I

    const/4 v15, 0x0

    move v1, v15

    move/from16 v16, v1

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_0
    if-ge v1, v12, :cond_2

    mul-int/lit16 v5, v1, 0x1f4

    add-int/lit8 v8, v1, 0x1

    mul-int/lit16 v1, v8, 0x1f4

    .line 60
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    sub-int v7, v1, v5

    move-object/from16 v1, p1

    move-object v2, v14

    move v4, v9

    move/from16 v20, v8

    move v8, v11

    .line 62
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v13, -0x1

    if-lez v0, :cond_1

    .line 64
    invoke-static {v15, v1, v0}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v1

    if-ltz v1, :cond_0

    move v2, v15

    .line 65
    :goto_1
    aget v3, v14, v2

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    add-int v17, v17, v3

    .line 66
    aget v3, v14, v2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int v18, v18, v3

    .line 67
    aget v3, v14, v2

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int v19, v19, v3

    add-int/lit8 v16, v16, 0x1

    if-eq v2, v1, :cond_0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_0
    move/from16 v1, v20

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Step must be positive, was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez v16, :cond_3

    const/high16 v0, -0x1000000

    goto :goto_2

    .line 74
    :cond_3
    div-int v0, v17, v16

    .line 75
    div-int v1, v18, v16

    .line 76
    div-int v2, v19, v16

    .line 77
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_2
    return v0
.end method

.method private final getHex(I)Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "#%06X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final handleError(Lexpo/modules/kotlin/Promise;Ljava/lang/Exception;)V
    .locals 2

    .line 98
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Throwable;

    const-string v1, "[ImageColors]"

    invoke-interface {p1, v1, v0, p2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final parseFallbackColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid fallback hex color. Must be in the format #ffffff or #fff"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 10

    .line 101
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 192
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

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 192
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    const-string v0, "ImageColors"

    .line 102
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 104
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getColors"

    .line 198
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 200
    const-class v4, Ljava/lang/String;

    .line 201
    const-class v4, Lcom/reactnativeimagecolors/Config;

    const/4 v4, 0x2

    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 205
    sget-object v5, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 206
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 207
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 206
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v6, v4, v9

    .line 214
    sget-object v5, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 215
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 216
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Lcom/reactnativeimagecolors/Config;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 215
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    const/4 v5, 0x1

    aput-object v6, v4, v5

    .line 222
    new-instance v5, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;

    invoke-direct {v5, p0, v1}, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;-><init>(Lcom/reactnativeimagecolors/ImageColorsModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 198
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 223
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 192
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
