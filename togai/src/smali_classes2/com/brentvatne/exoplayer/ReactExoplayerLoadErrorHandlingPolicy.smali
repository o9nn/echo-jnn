.class public final Lcom/brentvatne/exoplayer/ReactExoplayerLoadErrorHandlingPolicy;
.super Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;
.source "ReactExoplayerLoadErrorHandlingPolicy.java"


# instance fields
.field private final minLoadRetryCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerLoadErrorHandlingPolicy;->minLoadRetryCount:I

    return-void
.end method


# virtual methods
.method public getMinimumLoadableRetryCount(I)I
    .locals 0

    const p1, 0x7fffffff

    return p1
.end method

.method public getRetryDelayMsFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
    .locals 2

    .line 17
    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    instance-of v1, v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "Unable to connect"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Software caused connection abort"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 25
    :cond_1
    iget v0, p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    iget v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerLoadErrorHandlingPolicy;->minLoadRetryCount:I

    if-ge v0, v1, :cond_2

    .line 26
    iget p1, p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
