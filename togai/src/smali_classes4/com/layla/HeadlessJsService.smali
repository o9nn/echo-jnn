.class public final Lcom/layla/HeadlessJsService;
.super Lcom/facebook/react/HeadlessJsTaskService;
.source "HeadlessJsService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/layla/HeadlessJsService;",
        "Lcom/facebook/react/HeadlessJsTaskService;",
        "()V",
        "getTaskConfig",
        "Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;",
        "intent",
        "Landroid/content/Intent;",
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

    .line 8
    invoke-direct {p0}, Lcom/facebook/react/HeadlessJsTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    new-instance v6, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    const-string v1, "TextProcessingService"

    .line 13
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method
