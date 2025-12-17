.class public final Lexpo/modules/imagepicker/MediaHandler;
.super Ljava/lang/Object;
.source "MediaHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/imagepicker/MediaHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHandler.kt\nexpo/modules/imagepicker/MediaHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,126:1\n1#2:127\n1549#3:128\n1620#3,3:129\n36#4:132\n*S KotlinDebug\n*F\n+ 1 MediaHandler.kt\nexpo/modules/imagepicker/MediaHandler\n*L\n25#1:128\n25#1:129,3\n94#1:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0082@\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0018J2\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00100\u001d0\u001c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0080@\u00a2\u0006\u0004\u0008\u001f\u0010 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/imagepicker/MediaHandler;",
        "",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;)V",
        "cacheDirectory",
        "Ljava/io/File;",
        "getCacheDirectory",
        "()Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "getAdditionalFileData",
        "Lexpo/modules/imagepicker/AdditionalFileData;",
        "uri",
        "Landroid/net/Uri;",
        "handleImage",
        "Lexpo/modules/imagepicker/ImagePickerAsset;",
        "sourceUri",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
        "(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleVideo",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readExtras",
        "Lexpo/modules/imagepicker/ImagePickerResponse;",
        "bareResult",
        "",
        "Lkotlin/Pair;",
        "Lexpo/modules/imagepicker/MediaType;",
        "readExtras$expo_image_picker_release",
        "(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-image-picker_release"
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
.field private final appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/providers/AppContextProvider;)V
    .locals 1

    const-string v0, "appContextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    return-void
.end method

.method public static final synthetic access$handleImage(Lexpo/modules/imagepicker/MediaHandler;Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/imagepicker/MediaHandler;->handleImage(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleVideo(Lexpo/modules/imagepicker/MediaHandler;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/MediaHandler;->handleVideo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getAdditionalFileData(Landroid/net/Uri;)Lexpo/modules/imagepicker/AdditionalFileData;
    .locals 7

    .line 76
    invoke-direct {p0}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    const-string v2, "_display_name"

    .line 77
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_size"

    .line 78
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 83
    new-instance v1, Lexpo/modules/imagepicker/AdditionalFileData;

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 83
    invoke-direct {v1, v2, v3}, Lexpo/modules/imagepicker/AdditionalFileData;-><init>(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-object v0
.end method

.method private final getCacheDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 39
    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 19
    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

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

.method private final handleImage(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerAsset;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;

    iget v4, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;

    invoke-direct {v3, v0, v2}, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;-><init>(Lexpo/modules/imagepicker/MediaHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 41
    iget v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    const-string v9, "getContentResolver(...)"

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    iget-object v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    iget-object v6, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    iget-object v3, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/imagepicker/MediaHandler;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    iget-object v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    iget-object v7, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v12, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    check-cast v12, Landroid/net/Uri;

    iget-object v13, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lexpo/modules/imagepicker/MediaHandler;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v1, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v11, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    check-cast v11, Landroid/net/Uri;

    iget-object v12, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lexpo/modules/imagepicker/MediaHandler;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v7

    move-object v7, v5

    move-object v5, v1

    move-object v1, v11

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    invoke-virtual/range {p2 .. p2}, Lexpo/modules/imagepicker/ImagePickerOptions;->getQuality()D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v11, v13

    if-nez v2, :cond_5

    .line 46
    new-instance v2, Lexpo/modules/imagepicker/exporters/RawImageExporter;

    invoke-direct {v2}, Lexpo/modules/imagepicker/exporters/RawImageExporter;-><init>()V

    check-cast v2, Lexpo/modules/imagepicker/exporters/ImageExporter;

    goto :goto_1

    .line 48
    :cond_5
    new-instance v2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    iget-object v5, v0, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-virtual/range {p2 .. p2}, Lexpo/modules/imagepicker/ImagePickerOptions;->getQuality()D

    move-result-wide v11

    invoke-direct {v2, v5, v11, v12}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;-><init>(Lexpo/modules/kotlin/providers/AppContextProvider;D)V

    check-cast v2, Lexpo/modules/imagepicker/exporters/ImageExporter;

    .line 50
    :goto_1
    invoke-direct/range {p0 .. p0}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-direct/range {p0 .. p0}, Lexpo/modules/imagepicker/MediaHandler;->getCacheDirectory()Ljava/io/File;

    move-result-object v11

    invoke-static {v5}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toImageFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 53
    invoke-direct/range {p0 .. p0}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    move-object/from16 v13, p2

    iput-object v13, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    iput-object v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    iput-object v11, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    iput v7, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    invoke-interface {v2, v1, v11, v12, v3}, Lexpo/modules/imagepicker/exporters/ImageExporter;->exportAsync(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    return-object v4

    :cond_6
    move-object v12, v0

    move-object v7, v5

    move-object v5, v11

    .line 41
    :goto_2
    check-cast v2, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .line 54
    invoke-virtual {v13}, Lexpo/modules/imagepicker/ImagePickerOptions;->getBase64()Z

    move-result v11

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_7
    move-object v11, v10

    :goto_3
    if-eqz v11, :cond_a

    .line 55
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-direct {v12}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    iput-object v7, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    iput-object v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    iput v8, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    invoke-virtual {v2, v11, v3}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->data(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_8

    return-object v4

    :cond_8
    move-object/from16 v26, v12

    move-object v12, v1

    move-object v1, v2

    move-object v2, v11

    move-object v11, v13

    move-object/from16 v13, v26

    :goto_4
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_9

    .line 56
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object v8, v12

    move-object v12, v13

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    goto :goto_5

    :cond_9
    move-object v2, v1

    move-object v1, v12

    move-object v12, v13

    move-object v13, v11

    :cond_a
    move-object v8, v1

    move-object v1, v10

    move-object v11, v13

    .line 57
    :goto_5
    invoke-virtual {v11}, Lexpo/modules/imagepicker/ImagePickerOptions;->getExif()Z

    move-result v11

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    move-object v11, v10

    :goto_6
    if-eqz v11, :cond_d

    .line 58
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-direct {v12}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    iput-object v8, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    iput-object v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    iput-object v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    iput-object v1, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    iput v6, v3, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    invoke-virtual {v2, v10, v3}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->exif(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_c

    return-object v4

    :cond_c
    move-object v4, v2

    move-object v2, v3

    move-object v6, v7

    move-object v7, v8

    move-object v3, v12

    :goto_7
    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v20, v1

    move-object v12, v3

    move-object v2, v4

    move-object/from16 v19, v6

    move-object v8, v7

    :goto_8
    move-object/from16 v21, v10

    goto :goto_9

    :cond_d
    move-object/from16 v20, v1

    move-object/from16 v19, v7

    goto :goto_8

    .line 60
    :goto_9
    invoke-direct {v12, v8}, Lexpo/modules/imagepicker/MediaHandler;->getAdditionalFileData(Landroid/net/Uri;)Lexpo/modules/imagepicker/AdditionalFileData;

    move-result-object v1

    .line 63
    sget-object v13, Lexpo/modules/imagepicker/MediaType;->IMAGE:Lexpo/modules/imagepicker/MediaType;

    .line 64
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 65
    invoke-virtual {v2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->getWidth()I

    move-result v15

    .line 66
    invoke-virtual {v2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->getHeight()I

    move-result v16

    if-eqz v1, :cond_e

    .line 67
    invoke-virtual {v1}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_f
    move-object/from16 v17, v2

    if-eqz v1, :cond_10

    .line 68
    invoke-virtual {v1}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_a

    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 72
    :goto_a
    invoke-static {v8}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getMediaStoreAssetId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 62
    new-instance v3, Lexpo/modules/imagepicker/ImagePickerAsset;

    .line 64
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xc00

    const/16 v25, 0x0

    move-object v11, v3

    .line 62
    invoke-direct/range {v11 .. v25}, Lexpo/modules/imagepicker/ImagePickerAsset;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/MediaType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method private final handleVideo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerAsset;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;

    iget v4, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;

    invoke-direct {v3, v1, v2}, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;-><init>(Lexpo/modules/imagepicker/MediaHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 89
    iget v5, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    const-string v6, "getContentResolver(...)"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object v4, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v3, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/imagepicker/MediaHandler;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    invoke-direct/range {p0 .. p0}, Lexpo/modules/imagepicker/MediaHandler;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    const-string v5, ".mp4"

    invoke-static {v2, v5}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 93
    invoke-direct/range {p0 .. p0}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$2:Ljava/lang/Object;

    iput v7, v3, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    invoke-static {v0, v2, v5, v3}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyFile(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_3

    return-object v4

    :cond_3
    move-object v3, v1

    .line 132
    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 97
    :try_start_0
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 98
    invoke-direct {v3}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 101
    invoke-direct {v3, v0}, Lexpo/modules/imagepicker/MediaHandler;->getAdditionalFileData(Landroid/net/Uri;)Lexpo/modules/imagepicker/AdditionalFileData;

    move-result-object v7

    .line 102
    invoke-direct {v3}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 105
    sget-object v10, Lexpo/modules/imagepicker/MediaType;->VIDEO:Lexpo/modules/imagepicker/MediaType;

    .line 106
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v3, 0x12

    .line 107
    invoke-static {v5, v3}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v12

    const/16 v3, 0x13

    .line 108
    invoke-static {v5, v3}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v13

    const/4 v3, 0x0

    if-eqz v7, :cond_4

    .line 109
    invoke-virtual {v7}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_2

    :cond_4
    move-object v14, v3

    :goto_2
    if-eqz v7, :cond_5

    .line 110
    invoke-virtual {v7}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileSize()Ljava/lang/Long;

    move-result-object v3

    :cond_5
    move-object v15, v3

    const/16 v3, 0x9

    .line 112
    invoke-static {v5, v3}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v3

    const/16 v4, 0x18

    .line 113
    invoke-static {v5, v4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v4

    .line 114
    invoke-static {v0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getMediaStoreAssetId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 104
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerAsset;

    .line 106
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 112
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v19

    .line 113
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x300

    const/16 v22, 0x0

    move-object v8, v0

    .line 104
    invoke-direct/range {v8 .. v22}, Lexpo/modules/imagepicker/ImagePickerAsset;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/MediaType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 117
    new-instance v3, Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v3, v2, v0}, Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public final readExtras$expo_image_picker_release(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lexpo/modules/imagepicker/MediaType;",
            "+",
            "Landroid/net/Uri;",
            ">;>;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;

    iget v1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;

    invoke-direct {v0, p0, p3}, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;-><init>(Lexpo/modules/imagepicker/MediaHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object p2, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v5, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v6, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lexpo/modules/imagepicker/MediaHandler;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object p2, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v5, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v6, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lexpo/modules/imagepicker/MediaHandler;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    check-cast p1, Ljava/lang/Iterable;

    .line 128
    new-instance p3, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 129
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p0

    move-object v8, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v8

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 130
    check-cast v2, Lkotlin/Pair;

    .line 25
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/imagepicker/MediaType;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 26
    sget-object v7, Lexpo/modules/imagepicker/MediaHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lexpo/modules/imagepicker/MediaType;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v4, :cond_6

    if-ne v5, v3, :cond_5

    .line 28
    iput-object v6, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    invoke-direct {v6, v2, p3, v0}, Lexpo/modules/imagepicker/MediaHandler;->handleImage(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p3

    move-object p3, v2

    move-object v2, p1

    :goto_2
    check-cast p3, Lexpo/modules/imagepicker/ImagePickerAsset;

    goto :goto_4

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 27
    :cond_6
    iput-object v6, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    invoke-direct {v6, v2, v0}, Lexpo/modules/imagepicker/MediaHandler;->handleVideo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, p3

    move-object p3, v2

    move-object v2, p1

    :goto_3
    check-cast p3, Lexpo/modules/imagepicker/ImagePickerAsset;

    .line 130
    :goto_4
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v2

    move-object p3, v5

    goto :goto_1

    .line 131
    :cond_8
    check-cast p1, Ljava/util/List;

    .line 32
    new-instance p2, Lexpo/modules/imagepicker/ImagePickerResponse;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lexpo/modules/imagepicker/ImagePickerResponse;-><init>(ZLjava/util/List;)V

    return-object p2
.end method
