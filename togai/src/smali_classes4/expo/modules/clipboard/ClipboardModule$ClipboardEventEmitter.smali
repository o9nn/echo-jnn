.class final Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;
.super Ljava/lang/Object;
.source "ClipboardModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/clipboard/ClipboardModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClipboardEventEmitter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipboardModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,259:1\n1#2:260\n12#3:261\n1549#4:262\n1620#4,3:263\n*S KotlinDebug\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter\n*L\n159#1:261\n187#1:262\n187#1:263,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0001J\r\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;",
        "",
        "(Lexpo/modules/clipboard/ClipboardModule;)V",
        "isListening",
        "",
        "listener",
        "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
        "maybeClipboardManager",
        "Landroid/content/ClipboardManager;",
        "timestamp",
        "",
        "attachListener",
        "detachListener",
        "",
        "()Lkotlin/Unit;",
        "pauseListening",
        "resumeListening",
        "expo-clipboard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isListening:Z

.field private final listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private final maybeClipboardManager:Landroid/content/ClipboardManager;

.field final synthetic this$0:Lexpo/modules/clipboard/ClipboardModule;

.field private timestamp:J


# direct methods
.method public static synthetic $r8$lambda$d1tKNfinl0q1oMhLCrb8_TdZ00E(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener$lambda$7(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/clipboard/ClipboardModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->timestamp:J

    .line 165
    new-instance v0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V

    iput-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 193
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method

.method private static final listener$lambda$7(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getHasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    iget-boolean v1, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 174
    iget-wide v3, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->timestamp:J

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    return-void

    .line 177
    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->timestamp:J

    const/4 p1, 0x1

    new-array v1, p1, [Lkotlin/Pair;

    const/4 v3, 0x3

    new-array v3, v3, [Lexpo/modules/clipboard/ContentType;

    .line 184
    sget-object v4, Lexpo/modules/clipboard/ContentType;->PLAIN_TEXT:Lexpo/modules/clipboard/ContentType;

    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModuleKt;->access$getHasTextContent(Landroid/content/ClipDescription;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 185
    sget-object v4, Lexpo/modules/clipboard/ContentType;->HTML:Lexpo/modules/clipboard/ContentType;

    const-string v6, "text/html"

    invoke-virtual {v0, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    aput-object v4, v3, p1

    .line 186
    sget-object p1, Lexpo/modules/clipboard/ContentType;->IMAGE:Lexpo/modules/clipboard/ContentType;

    const-string v4, "image/*"

    invoke-virtual {v0, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v2, p1

    :cond_5
    const/4 p1, 0x2

    aput-object v2, v3, p1

    .line 183
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 263
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 264
    check-cast v2, Lexpo/modules/clipboard/ContentType;

    .line 187
    invoke-virtual {v2}, Lexpo/modules/clipboard/ContentType;->getJsName()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    :cond_6
    check-cast v0, Ljava/util/List;

    const-string p1, "contentTypes"

    .line 183
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v5

    .line 182
    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "onClipboardChanged"

    .line 180
    invoke-virtual {p0, v0, p1}, Lexpo/modules/clipboard/ClipboardModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final attachListener()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 160
    invoke-static {}, Lexpo/modules/clipboard/ClipboardModuleKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'CLIPBOARD_SERVICE\' unavailable. Events won\'t be received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final detachListener()Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final pauseListening()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    return-void
.end method

.method public final resumeListening()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    return-void
.end method
