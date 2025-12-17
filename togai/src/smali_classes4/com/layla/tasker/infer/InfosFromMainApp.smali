.class public final Lcom/layla/tasker/infer/InfosFromMainApp;
.super Ljava/util/ArrayList;
.source "Input.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/layla/tasker/infer/InfoFromMainApp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/layla/tasker/infer/InfosFromMainApp;",
        "Ljava/util/ArrayList;",
        "Lcom/layla/tasker/infer/InfoFromMainApp;",
        "Lkotlin/collections/ArrayList;",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/layla/tasker/infer/InfoFromMainApp;)Z
    .locals 0

    .line 11
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    invoke-virtual {p0, p1}, Lcom/layla/tasker/infer/InfosFromMainApp;->contains(Lcom/layla/tasker/infer/InfoFromMainApp;)Z

    move-result p1

    return p1
.end method

.method public bridge getSize()I
    .locals 1

    .line 11
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/layla/tasker/infer/InfoFromMainApp;)I
    .locals 0

    .line 11
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    invoke-virtual {p0, p1}, Lcom/layla/tasker/infer/InfosFromMainApp;->indexOf(Lcom/layla/tasker/infer/InfoFromMainApp;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/layla/tasker/infer/InfoFromMainApp;)I
    .locals 0

    .line 11
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    invoke-virtual {p0, p1}, Lcom/layla/tasker/infer/InfosFromMainApp;->lastIndexOf(Lcom/layla/tasker/infer/InfoFromMainApp;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/layla/tasker/infer/InfoFromMainApp;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/layla/tasker/infer/InfosFromMainApp;->removeAt(I)Lcom/layla/tasker/infer/InfoFromMainApp;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Lcom/layla/tasker/infer/InfoFromMainApp;)Z
    .locals 0

    .line 11
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    invoke-virtual {p0, p1}, Lcom/layla/tasker/infer/InfosFromMainApp;->remove(Lcom/layla/tasker/infer/InfoFromMainApp;)Z

    move-result p1

    return p1
.end method

.method public bridge removeAt(I)Lcom/layla/tasker/infer/InfoFromMainApp;
    .locals 0

    .line 11
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/layla/tasker/infer/InfoFromMainApp;

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/layla/tasker/infer/InfosFromMainApp;->getSize()I

    move-result v0

    return v0
.end method
