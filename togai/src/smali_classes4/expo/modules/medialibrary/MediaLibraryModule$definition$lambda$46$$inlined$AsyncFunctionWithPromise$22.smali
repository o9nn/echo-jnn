.class public final Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$22;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/medialibrary/MediaLibraryModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n1#1,505:1\n15#2,4:506\n150#3:510\n383#3,6:511\n151#3:517\n328#3,9:518\n154#3:527\n389#3:528\n155#3:529\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n271#1:506,4\n150#2:511,6\n151#2:518,9\n150#2:528\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/medialibrary/MediaLibraryModule;


# direct methods
.method public constructor <init>(Lexpo/modules/medialibrary/MediaLibraryModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$22;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$22;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 12

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
    check-cast p1, Ljava/util/Map;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$22;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 511
    invoke-static {p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$isMissingPermissions(Lexpo/modules/medialibrary/MediaLibraryModule;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$22;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 518
    invoke-static {p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getModuleCoroutineScope$p(Lexpo/modules/medialibrary/MediaLibraryModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$lambda$16$lambda$15$$inlined$withModuleScope$1;

    const/4 v3, 0x0

    iget-object v4, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$22;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    move-object v1, v0

    move-object v2, p2

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$lambda$16$lambda$15$$inlined$withModuleScope$1;-><init>(Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;Lexpo/modules/medialibrary/MediaLibraryModule;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 514
    :cond_0
    new-instance p1, Lexpo/modules/medialibrary/PermissionsException;

    const-string p2, "Missing MEDIA_LIBRARY permissions."

    invoke-direct {p1, p2}, Lexpo/modules/medialibrary/PermissionsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
