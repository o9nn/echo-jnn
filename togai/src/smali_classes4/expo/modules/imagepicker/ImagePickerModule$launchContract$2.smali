.class final Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImagePickerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule;->launchContract(Lkotlin/jvm/functions/Function1;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;"
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
    c = "expo.modules.imagepicker.ImagePickerModule$launchContract$2"
    f = "ImagePickerModule.kt"
    i = {}
    l = {
        0xd6
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $options:Lexpo/modules/imagepicker/ImagePickerOptions;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/ImagePickerModule;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;",
            ">;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$options:Lexpo/modules/imagepicker/ImagePickerOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-direct {v0, v1, v2, v3, p1}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 213
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    .line 214
    invoke-static {p1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$getCropImageLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "cropImageLauncher"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    new-instance v1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    iget-object v3, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-virtual {v3}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;->getData()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->$options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-direct {v1, v3, v4}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    check-cast v1, Ljava/io/Serializable;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;->label:I

    invoke-virtual {p1, v1, v3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;->launch(Ljava/io/Serializable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
