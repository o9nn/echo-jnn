.class public final synthetic Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/layla/taskmgr/TaskMgr;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Lcom/layla/taskmgr/TaskMgr;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;->f$0:Lcom/layla/taskmgr/TaskMgr;

    iput-object p2, p0, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;->f$2:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;->f$0:Lcom/layla/taskmgr/TaskMgr;

    iget-object v1, p0, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;->f$2:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, v2}, Lcom/layla/taskmgr/TaskMgr;->$r8$lambda$ooyPUxJX_nF7xjPs4cdp9XYLAdw(Lcom/layla/taskmgr/TaskMgr;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
