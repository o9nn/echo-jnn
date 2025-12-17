.class final Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImagePickerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;"
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
    c = "expo.modules.imagepicker.ImagePickerModule$definition$1$8"
    f = "ImagePickerModule.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x60,
        0x64,
        0x68
    }
    m = "invokeSuspend"
    n = {
        "$this$RegisterActivityContracts",
        "$this$RegisterActivityContracts"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/ImagePickerModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-direct {v0, v1, p2}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->invoke(Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    .line 95
    check-cast v0, Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$1:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/imagepicker/ImagePickerModule;

    iget-object v3, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$1:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/imagepicker/ImagePickerModule;

    iget-object v4, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    .line 97
    new-instance v5, Lexpo/modules/imagepicker/contracts/CameraContract;

    iget-object v6, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    check-cast v6, Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-direct {v5, v6}, Lexpo/modules/imagepicker/contracts/CameraContract;-><init>(Lexpo/modules/kotlin/providers/AppContextProvider;)V

    check-cast v5, Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    .line 96
    new-instance v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$1;

    iget-object v7, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-direct {v6, v7}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$1;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v6, Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$1:Ljava/lang/Object;

    iput v4, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->label:I

    invoke-interface {p1, v5, v6, v7}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;->registerForActivityResult(Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    invoke-static {v1, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$setCameraLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;)V

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    .line 101
    new-instance p1, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;

    iget-object v5, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    check-cast v5, Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-direct {p1, v5}, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;-><init>(Lexpo/modules/kotlin/providers/AppContextProvider;)V

    check-cast p1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    .line 100
    new-instance v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$2;

    iget-object v6, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-direct {v5, v6}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$2;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v5, Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$1:Ljava/lang/Object;

    iput v3, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->label:I

    invoke-interface {v4, p1, v5, v6}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;->registerForActivityResult(Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, v4

    :goto_1
    check-cast p1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    invoke-static {v1, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$setImageLibraryLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;)V

    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    .line 105
    new-instance v1, Lexpo/modules/imagepicker/contracts/CropImageContract;

    iget-object v4, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    check-cast v4, Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-direct {v1, v4}, Lexpo/modules/imagepicker/contracts/CropImageContract;-><init>(Lexpo/modules/kotlin/providers/AppContextProvider;)V

    check-cast v1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    .line 104
    new-instance v4, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$3;

    iget-object v5, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-direct {v4, v5}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$3;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v4, Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->L$1:Ljava/lang/Object;

    iput v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->label:I

    invoke-interface {v3, v1, v4, v5}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;->registerForActivityResult(Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    :goto_2
    check-cast p1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    invoke-static {v0, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$setCropImageLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;)V

    .line 107
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
