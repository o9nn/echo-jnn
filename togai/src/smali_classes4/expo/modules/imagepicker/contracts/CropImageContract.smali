.class public final Lexpo/modules/imagepicker/contracts/CropImageContract;
.super Ljava/lang/Object;
.source "CropImageContract.kt"

# interfaces
.implements Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
        "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageContract.kt\nexpo/modules/imagepicker/contracts/CropImageContract\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n29#2:76\n36#2:77\n29#2:78\n1#3:79\n*S KotlinDebug\n*F\n+ 1 CropImageContract.kt\nexpo/modules/imagepicker/contracts/CropImageContract\n*L\n28#1:76\n31#1:77\n36#1:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\"\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/CropImageContract;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;)V",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "parseResult",
        "resultCode",
        "",
        "intent",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CropImageContractOptions;)Landroid/content/Intent;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/canhub/cropper/CropImageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getContentResolver(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getSourceUri()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    invoke-static {p1, v1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toBitmapCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 30
    invoke-interface {v1}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 31
    invoke-static {p1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toImageFileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    .line 36
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getSourceUri()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "CROP_IMAGE_EXTRA_SOURCE"

    .line 36
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 37
    new-instance v3, Lcom/canhub/cropper/CropImageOptions;

    invoke-direct {v3}, Lcom/canhub/cropper/CropImageOptions;-><init>()V

    .line 38
    iput-object p1, v3, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 39
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getQuality()D

    move-result-wide v4

    const/16 p1, 0x64

    int-to-double v6, p1

    mul-double/2addr v4, v6

    double-to-int p1, v4

    iput p1, v3, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    .line 41
    iput-object v1, v3, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    .line 43
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getAspect()Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 44
    iput v1, v3, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    .line 45
    iput p1, v3, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    .line 46
    iput-boolean p2, v3, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    const/4 p1, 0x0

    .line 47
    iput p1, v3, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 49
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p1, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 37
    invoke-static {p1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, p2

    .line 35
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CROP_IMAGE_EXTRA_BUNDLE"

    .line 33
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 0

    .line 24
    check-cast p2, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/contracts/CropImageContract;->createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CropImageContractOptions;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
    .locals 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "CROP_IMAGE_EXTRA_RESULT"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    if-eqz p3, :cond_1

    .line 56
    const-class v0, Lcom/canhub/cropper/CropImage$ActivityResult;

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/canhub/cropper/CropImage$ActivityResult;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/canhub/cropper/CropImage$ActivityResult;

    goto :goto_0

    :cond_1
    move-object p3, v3

    :goto_0
    if-eqz p2, :cond_5

    if-nez p3, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p3}, Lcom/canhub/cropper/CropImage$ActivityResult;->getUriContent()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p3, p0, Lexpo/modules/imagepicker/contracts/CropImageContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 65
    invoke-interface {p3}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p3

    invoke-virtual {p3}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 66
    new-instance v0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;

    invoke-direct {v0, p1, p2, p3, v3}, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;-><init>(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v3, v0, p1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    sget-object p3, Lexpo/modules/imagepicker/MediaType;->IMAGE:Lexpo/modules/imagepicker/MediaType;

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;-><init>(Ljava/util/List;)V

    check-cast p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    return-object p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "React Application Context is null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    :goto_1
    sget-object p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;

    check-cast p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    return-object p1
.end method

.method public bridge synthetic parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/imagepicker/contracts/CropImageContract;->parseResult(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    move-result-object p1

    return-object p1
.end method
