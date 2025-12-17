.class public Lcom/layla/taskmgr/TaskMgr$ReplMsg;
.super Ljava/lang/Object;
.source "TaskMgr.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/taskmgr/TaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplMsg"
.end annotation


# instance fields
.field public grammar:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public role:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
