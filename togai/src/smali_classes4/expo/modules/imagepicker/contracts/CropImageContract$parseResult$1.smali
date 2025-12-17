.class final Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CropImageContract.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/contracts/CropImageContract;->parseResult(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageContract.kt\nexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,75:1\n29#2:76\n*S KotlinDebug\n*F\n+ 1 CropImageContract.kt\nexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1\n*L\n66#1:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.imagepicker.contracts.CropImageContract$parseResult$1"
    f = "CropImageContract.kt"
    i = {}
    l = {
        0x42
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $contentResolver:Landroid/content/ContentResolver;

.field final synthetic $input:Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

.field final synthetic $targetUri:Landroid/net/Uri;

.field label:I


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$input:Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    iput-object p2, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$targetUri:Landroid/net/Uri;

    iput-object p3, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$contentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$input:Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$targetUri:Landroid/net/Uri;

    iget-object v2, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p1, v0, v1, v2, p2}, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;-><init>(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 66
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$input:Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getSourceUri()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$targetUri:Landroid/net/Uri;

    .line 66
    invoke-static {v1}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iget-object v3, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->$contentResolver:Landroid/content/ContentResolver;

    const-string v4, "$contentResolver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;->label:I

    invoke-static {p1, v1, v3, v4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyExifData(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
