.class Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;
.super Ljava/lang/Object;
.source "FetchJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastJob"
.end annotation


# static fields
.field private static final OFFSET_TIME:J = 0x7d0L


# instance fields
.field private mTaskId:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTaskId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$1;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;-><init>()V

    return-void
.end method


# virtual methods
.method isDuplicate(Ljava/lang/String;)Z
    .locals 6

    iget-wide v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTaskId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LastJob taskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTaskId:Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->mTimestamp:J

    return-void
.end method
