.class final Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImagePickerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    c = "expo.modules.imagepicker.ImagePickerModule$definition$1$6$1"
    f = "ImagePickerModule.kt"
    i = {}
    l = {
        0x52
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

.field label:I

.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/ImagePickerModule;",
            "Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->$contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->$contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    invoke-direct {v0, v1, v2, p1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 82
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {p1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$getImageLibraryLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "imageLibraryLauncher"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->$contractOptions:Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    check-cast v1, Ljava/io/Serializable;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$6$1;->label:I

    invoke-virtual {p1, v1, v3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;->launch(Ljava/io/Serializable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
