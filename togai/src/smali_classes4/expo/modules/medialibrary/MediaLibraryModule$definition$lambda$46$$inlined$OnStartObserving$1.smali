.class public final Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 3 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n1#1,505:1\n449#2:506\n270#3,29:507\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<anonymous parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$OnStartObserving$$inlined$AsyncFunction$1"
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

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 5

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 507
    invoke-static {p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getImagesObserver$p(Lexpo/modules/medialibrary/MediaLibraryModule;)Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 515
    invoke-static {p2}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getContext(Lexpo/modules/medialibrary/MediaLibraryModule;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 518
    new-instance v1, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;

    iget-object v2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;-><init>(Lexpo/modules/medialibrary/MediaLibraryModule;Landroid/os/Handler;I)V

    .line 521
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 523
    move-object v4, v1

    check-cast v4, Landroid/database/ContentObserver;

    .line 520
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 517
    invoke-static {v0, v1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$setImagesObserver$p(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;)V

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 527
    new-instance v1, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;

    iget-object v2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 v4, 0x3

    invoke-direct {v1, v2, p1, v4}, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;-><init>(Lexpo/modules/medialibrary/MediaLibraryModule;Landroid/os/Handler;I)V

    .line 530
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 532
    move-object v2, v1

    check-cast v2, Landroid/database/ContentObserver;

    .line 529
    invoke-virtual {p2, p1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 527
    invoke-static {v0, v1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$setVideosObserver$p(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;)V

    :goto_0
    return-void
.end method
