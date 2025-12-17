.class public final Lcom/layla/tasker/infer/InfoFromMainApp;
.super Ljava/lang/Object;
.source "Input.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/layla/tasker/infer/InfoFromMainApp;",
        "",
        "name",
        "",
        "desc",
        "hasTaskerVariable",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "getDesc",
        "()Ljava/lang/String;",
        "getHasTaskerVariable",
        "()Z",
        "getName",
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


# instance fields
.field private final desc:Ljava/lang/String;

.field private final hasTaskerVariable:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/tasker/infer/InfoFromMainApp;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/layla/tasker/infer/InfoFromMainApp;->desc:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/layla/tasker/infer/InfoFromMainApp;->hasTaskerVariable:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/layla/tasker/infer/InfoFromMainApp;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/InfoFromMainApp;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasTaskerVariable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layla/tasker/infer/InfoFromMainApp;->hasTaskerVariable:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/InfoFromMainApp;->name:Ljava/lang/String;

    return-object v0
.end method
