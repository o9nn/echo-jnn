.class public Lcom/layla/taskmgr/TaskMgr$TaskInferInput;
.super Ljava/lang/Object;
.source "TaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/taskmgr/TaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInferInput"
.end annotation


# instance fields
.field public antiPrompt:Ljava/lang/String;

.field public grammar:Ljava/lang/String;

.field public inputPrefix:Ljava/lang/String;

.field public inputSuffix:Ljava/lang/String;

.field public logPath:Ljava/lang/String;

.field public modelPath:Ljava/lang/String;

.field public msgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/layla/taskmgr/TaskMgr$ReplMsg;",
            ">;"
        }
    .end annotation
.end field

.field public promptCachePath:Ljava/lang/String;

.field public replyStart:Ljava/lang/String;

.field public sysPromptEnd:Ljava/lang/String;

.field public sysPromptStart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->msgs:Ljava/util/List;

    return-void
.end method
