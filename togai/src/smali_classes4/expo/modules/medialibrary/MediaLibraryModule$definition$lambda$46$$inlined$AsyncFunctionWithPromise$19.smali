.class public final Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$19;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n1#1,505:1\n8#2,4:506\n138#3:510\n382#3,7:511\n139#3,8:518\n389#3:526\n147#3:527\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n246#1:506,4\n138#2:511,7\n138#2:526\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
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

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$19;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$19;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 3

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 245
    aget-object p1, p1, v0

    .line 247
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$19;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 512
    invoke-static {v0}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$isMissingWritePermission(Lexpo/modules/medialibrary/MediaLibraryModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$19;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 518
    new-instance v1, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;

    iget-object v2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$19;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    invoke-direct {v1, v2, p2, p1}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;-><init>(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/kotlin/Promise;Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p2, v1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$actionIfUserGrantedPermission(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/kotlin/Promise;Lkotlin/jvm/functions/Function0;)Lexpo/modules/medialibrary/MediaLibraryModule$Action;

    move-result-object p2

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$19;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 524
    invoke-static {v0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$runActionWithPermissions(Lexpo/modules/medialibrary/MediaLibraryModule;Ljava/util/List;Lexpo/modules/medialibrary/MediaLibraryModule$Action;)V

    return-void

    .line 515
    :cond_0
    new-instance p1, Lexpo/modules/medialibrary/PermissionsException;

    const-string p2, "Missing MEDIA_LIBRARY write permission."

    invoke-direct {p1, p2}, Lexpo/modules/medialibrary/PermissionsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
