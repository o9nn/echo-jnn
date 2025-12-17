.class public final Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$3;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n1#1,505:1\n15#2,4:506\n78#3,7:510\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n*L\n271#1:506,4\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$3;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 5

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 270
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    .line 272
    check-cast p1, Ljava/util/List;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Lexpo/modules/medialibrary/GranularPermission;

    .line 510
    sget-object v3, Lexpo/modules/medialibrary/GranularPermission;->AUDIO:Lexpo/modules/medialibrary/GranularPermission;

    aput-object v3, p1, v0

    sget-object v0, Lexpo/modules/medialibrary/GranularPermission;->PHOTO:Lexpo/modules/medialibrary/GranularPermission;

    aput-object v0, p1, v2

    const/4 v0, 0x2

    sget-object v2, Lexpo/modules/medialibrary/GranularPermission;->VIDEO:Lexpo/modules/medialibrary/GranularPermission;

    aput-object v2, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 512
    invoke-virtual {v0}, Lexpo/modules/medialibrary/MediaLibraryModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getPermissions()Lexpo/modules/interfaces/permissions/Permissions;

    move-result-object v0

    .line 513
    new-instance v2, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    invoke-static {v4}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getContext(Lexpo/modules/medialibrary/MediaLibraryModule;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, p1, p2, v3}, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;-><init>(Ljava/util/List;Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lexpo/modules/kotlin/Promise;

    iget-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 514
    invoke-static {p2, v1, p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getManifestPermissions(Lexpo/modules/medialibrary/MediaLibraryModule;ZLjava/util/List;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 511
    invoke-static {v0, v2, p1}, Lexpo/modules/interfaces/permissions/Permissions;->askForPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/kotlin/Promise;[Ljava/lang/String;)V

    return-void
.end method
