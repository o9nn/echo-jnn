.class public Lcom/layla/taskmgr/TaskMgr$TaskResult;
.super Ljava/lang/Object;
.source "TaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/taskmgr/TaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskResult"
.end annotation


# instance fields
.field public result:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/taskmgr/TaskMgr$TaskResult;->result:Ljava/lang/String;

    return-void
.end method
