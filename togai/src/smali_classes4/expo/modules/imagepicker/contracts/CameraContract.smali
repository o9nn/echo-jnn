.class public final Lexpo/modules/imagepicker/contracts/CameraContract;
.super Ljava/lang/Object;
.source "CameraContract.kt"

# interfaces
.implements Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
        "Lexpo/modules/imagepicker/contracts/CameraContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraContract.kt\nexpo/modules/imagepicker/contracts/CameraContract\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,67:1\n29#2:68\n*S KotlinDebug\n*F\n+ 1 CameraContract.kt\nexpo/modules/imagepicker/contracts/CameraContract\n*L\n34#1:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\"\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/CameraContract;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "Lexpo/modules/imagepicker/contracts/CameraContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;)V",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "getContentResolver",
        "()Landroid/content/ContentResolver;",
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

    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/CameraContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    return-void
.end method

.method private final getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 28
    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContentResolver(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "React Application Context is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CameraContractOptions;)Landroid/content/Intent;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerOptions;->getMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/imagepicker/MediaTypes;->toCameraIntentAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "output"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "putExtra(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerOptions;->getMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/imagepicker/MediaTypes;->toCameraIntentAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerOptions;->getVideoMaxDuration()I

    move-result v0

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    :cond_0
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/imagepicker/ImagePickerOptions;->getCameraType()Lexpo/modules/imagepicker/CameraType;

    move-result-object p2

    sget-object v0, Lexpo/modules/imagepicker/CameraType;->FRONT:Lexpo/modules/imagepicker/CameraType;

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    const-string v2, "android.intent.extras.CAMERA_FACING"

    const/4 v3, 0x1

    if-ne p2, v0, :cond_1

    const-string p2, "android.intent.extras.LENS_FACING_FRONT"

    .line 40
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.extras.LENS_FACING_BACK"

    .line 44
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 0

    .line 24
    check-cast p2, Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/contracts/CameraContract;->createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CameraContractOptions;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(Lexpo/modules/imagepicker/contracts/CameraContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
    .locals 0

    const-string p3, "input"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 52
    sget-object p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;

    check-cast p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lexpo/modules/imagepicker/contracts/CameraContract;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p1, p2}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toMediaType(Landroid/net/Uri;Landroid/content/ContentResolver;)Lexpo/modules/imagepicker/MediaType;

    move-result-object p2

    .line 56
    new-instance p3, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;-><init>(Ljava/util/List;)V

    move-object p1, p3

    check-cast p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/imagepicker/contracts/CameraContract;->parseResult(Lexpo/modules/imagepicker/contracts/CameraContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    move-result-object p1

    return-object p1
.end method
