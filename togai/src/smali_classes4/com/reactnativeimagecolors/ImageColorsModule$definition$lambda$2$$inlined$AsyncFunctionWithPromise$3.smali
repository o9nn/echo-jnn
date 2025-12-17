.class public final Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativeimagecolors/ImageColorsModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ImageColorsModule.kt\ncom/reactnativeimagecolors/ImageColorsModule\n+ 4 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder\n*L\n1#1,505:1\n15#2,4:506\n105#3:510\n181#3:511\n188#3:514\n89#4,2:512\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 ImageColorsModule.kt\ncom/reactnativeimagecolors/ImageColorsModule\n*L\n271#1:506,4\n181#2:512,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u00012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

.field final synthetic this$0:Lcom/reactnativeimagecolors/ImageColorsModule;


# direct methods
.method public constructor <init>(Lcom/reactnativeimagecolors/ImageColorsModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->this$0:Lcom/reactnativeimagecolors/ImageColorsModule;

    iput-object p2, p0, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 273
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 11

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 270
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 272
    move-object v3, p1

    check-cast v3, Lcom/reactnativeimagecolors/Config;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->this$0:Lcom/reactnativeimagecolors/ImageColorsModule;

    .line 510
    invoke-static {p1}, Lcom/reactnativeimagecolors/ImageColorsModule;->access$getService$p(Lcom/reactnativeimagecolors/ImageColorsModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/reactnativeimagecolors/ImageColorsModule$definition$1$1$1;

    iget-object v2, p0, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->this$0:Lcom/reactnativeimagecolors/ImageColorsModule;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/reactnativeimagecolors/ImageColorsModule$definition$1$1$1;-><init>(Lcom/reactnativeimagecolors/ImageColorsModule;Lcom/reactnativeimagecolors/Config;Ljava/lang/String;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object p1, p0, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    .line 512
    invoke-virtual {p1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object p1

    sget-object p2, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v0, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v2, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$lambda$1$$inlined$OnDestroy$1;

    iget-object v3, p0, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->this$0:Lcom/reactnativeimagecolors/ImageColorsModule;

    invoke-direct {v2, v3}, Lcom/reactnativeimagecolors/ImageColorsModule$definition$lambda$2$lambda$1$$inlined$OnDestroy$1;-><init>(Lcom/reactnativeimagecolors/ImageColorsModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
