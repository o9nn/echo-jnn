.class public Lorg/apache/tvm/TVMValueHandle;
.super Lorg/apache/tvm/TVMValue;
.source "TVMValueHandle.java"


# instance fields
.field public final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->HANDLE:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    iput-wide p1, p0, Lorg/apache/tvm/TVMValueHandle;->value:J

    return-void
.end method


# virtual methods
.method public asHandle()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/tvm/TVMValueHandle;->value:J

    return-wide v0
.end method
