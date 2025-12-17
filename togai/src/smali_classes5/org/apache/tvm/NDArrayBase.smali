.class public Lorg/apache/tvm/NDArrayBase;
.super Lorg/apache/tvm/TVMValue;
.source "NDArrayBase.java"


# instance fields
.field protected final handle:J

.field private isReleased:Z

.field protected final isView:Z


# direct methods
.method constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tvm/NDArrayBase;-><init>(JZ)V

    return-void
.end method

.method constructor <init>(JZ)V
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->ARRAY_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tvm/NDArrayBase;->isReleased:Z

    iput-wide p1, p0, Lorg/apache/tvm/NDArrayBase;->handle:J

    iput-boolean p3, p0, Lorg/apache/tvm/NDArrayBase;->isView:Z

    return-void
.end method


# virtual methods
.method asHandle()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/tvm/NDArrayBase;->handle:J

    return-wide v0
.end method

.method public asNDArray()Lorg/apache/tvm/NDArrayBase;
    .locals 0

    return-object p0
.end method

.method public copyTo(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/NDArrayBase;
    .locals 5

    .line 53
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p0, Lorg/apache/tvm/NDArrayBase;->handle:J

    iget-wide v3, p1, Lorg/apache/tvm/NDArrayBase;->handle:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromTo(JJ)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    return-object p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/apache/tvm/NDArrayBase;->release()V

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/tvm/NDArrayBase;->isReleased:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tvm/NDArrayBase;->isView:Z

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p0, Lorg/apache/tvm/NDArrayBase;->handle:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmArrayFree(J)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tvm/NDArrayBase;->isReleased:Z

    :cond_0
    return-void
.end method
