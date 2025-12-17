.class public Lcom/layla/taskmgr/TaskMgr$Task;
.super Ljava/lang/Object;
.source "TaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/taskmgr/TaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public inputJSON:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public outputJSON:Ljava/lang/String;

.field public queuePosition:F

.field public timeTakenMs:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
