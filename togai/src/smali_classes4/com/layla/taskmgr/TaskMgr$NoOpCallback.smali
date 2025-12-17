.class public Lcom/layla/taskmgr/TaskMgr$NoOpCallback;
.super Ljava/lang/Object;
.source "TaskMgr.java"

# interfaces
.implements Lorg/pytorch/executorch/LlamaCallback;
.implements Lcom/layla/jni/LlamaCppJni$LlamaCppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/taskmgr/TaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOpCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStats(F)V
    .locals 0

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
