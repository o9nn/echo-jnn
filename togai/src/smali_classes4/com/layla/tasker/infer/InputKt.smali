.class public final Lcom/layla/tasker/infer/InputKt;
.super Ljava/lang/Object;
.source "Input.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Input.kt\ncom/layla/tasker/infer/InputKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n766#2:33\n857#2,2:34\n*S KotlinDebug\n*F\n+ 1 Input.kt\ncom/layla/tasker/infer/InputKt\n*L\n22#1:33\n22#1:34,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "infos",
        "Lcom/layla/tasker/infer/InfosFromMainApp;",
        "infosForTasker",
        "",
        "Lcom/layla/tasker/infer/InfoFromMainApp;",
        "getInfosForTasker",
        "()Ljava/util/List;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final infos:Lcom/layla/tasker/infer/InfosFromMainApp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/layla/tasker/infer/InfosFromMainApp;

    invoke-direct {v0}, Lcom/layla/tasker/infer/InfosFromMainApp;-><init>()V

    .line 13
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/layla/tasker/infer/InfoFromMainApp;

    .line 14
    new-instance v3, Lcom/layla/tasker/infer/InfoFromMainApp;

    const-string v4, "sysprompt"

    const-string v5, "System prompt"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/layla/tasker/infer/InfoFromMainApp;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 15
    new-instance v3, Lcom/layla/tasker/infer/InfoFromMainApp;

    const-string v4, "prompt"

    const-string v5, "Prompt"

    invoke-direct {v3, v4, v5, v6}, Lcom/layla/tasker/infer/InfoFromMainApp;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v3, v2, v6

    .line 13
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sput-object v0, Lcom/layla/tasker/infer/InputKt;->infos:Lcom/layla/tasker/infer/InfosFromMainApp;

    return-void
.end method

.method public static final getInfosForTasker()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/layla/tasker/infer/InfoFromMainApp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/layla/tasker/infer/InputKt;->infos:Lcom/layla/tasker/infer/InfosFromMainApp;

    .line 22
    check-cast v0, Ljava/lang/Iterable;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/layla/tasker/infer/InfoFromMainApp;

    .line 22
    invoke-virtual {v3}, Lcom/layla/tasker/infer/InfoFromMainApp;->getHasTaskerVariable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
