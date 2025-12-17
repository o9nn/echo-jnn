.class public final Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/sharing/SharingModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SharingModule.kt\nexpo/modules/sharing/SharingModule\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n15#2,4:506\n28#3,22:510\n50#3,3:533\n53#3,8:537\n1855#4:532\n1856#4:536\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 SharingModule.kt\nexpo/modules/sharing/SharingModule\n*L\n271#1:506,4\n49#2:532\n49#2:536\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/sharing/SharingModule;


# direct methods
.method public constructor <init>(Lexpo/modules/sharing/SharingModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

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
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 272
    check-cast p1, Lexpo/modules/sharing/SharingOptions;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 510
    invoke-static {v2}, Lexpo/modules/sharing/SharingModule;->access$getPendingPromise$p(Lexpo/modules/sharing/SharingModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 514
    invoke-static {v2, v0}, Lexpo/modules/sharing/SharingModule;->access$getLocalFileFoUrl(Lexpo/modules/sharing/SharingModule;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 516
    invoke-static {v2}, Lexpo/modules/sharing/SharingModule;->access$getContext(Lexpo/modules/sharing/SharingModule;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 517
    invoke-static {v3}, Lexpo/modules/sharing/SharingModule;->access$getContext(Lexpo/modules/sharing/SharingModule;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".SharingFileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 520
    invoke-virtual {p1}, Lexpo/modules/sharing/SharingOptions;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const-string v3, "*/*"

    :cond_1
    iget-object v0, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 524
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2, v3}, Lexpo/modules/sharing/SharingModule;->access$createSharingIntent(Lexpo/modules/sharing/SharingModule;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 525
    invoke-virtual {p1}, Lexpo/modules/sharing/SharingOptions;->getDialogTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 523
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 527
    invoke-static {v0}, Lexpo/modules/sharing/SharingModule;->access$getContext(Lexpo/modules/sharing/SharingModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v3, "queryIntentActivities(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    check-cast v0, Ljava/lang/Iterable;

    .line 532
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 533
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 534
    invoke-static {v4}, Lexpo/modules/sharing/SharingModule;->access$getContext(Lexpo/modules/sharing/SharingModule;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 537
    invoke-static {v0, p2}, Lexpo/modules/sharing/SharingModule;->access$setPendingPromise$p(Lexpo/modules/sharing/SharingModule;Lexpo/modules/kotlin/Promise;)V

    iget-object p2, p0, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/sharing/SharingModule;

    .line 538
    invoke-static {p2}, Lexpo/modules/sharing/SharingModule;->access$getCurrentActivity(Lexpo/modules/sharing/SharingModule;)Landroid/app/Activity;

    move-result-object p2

    const/16 v0, 0x214c

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lexpo/modules/core/errors/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 542
    new-instance p2, Lexpo/modules/sharing/SharingFailedException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to share the file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lexpo/modules/sharing/SharingFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 540
    new-instance p2, Lexpo/modules/sharing/SharingInvalidArgsException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p2, v0, p1}, Lexpo/modules/sharing/SharingInvalidArgsException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 511
    :cond_3
    new-instance p1, Lexpo/modules/sharing/SharingInProgressException;

    invoke-direct {p1}, Lexpo/modules/sharing/SharingInProgressException;-><init>()V

    throw p1
.end method
