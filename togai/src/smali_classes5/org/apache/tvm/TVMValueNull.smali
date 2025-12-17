.class public Lorg/apache/tvm/TVMValueNull;
.super Lorg/apache/tvm/TVMValue;
.source "TVMValueNull.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->NULL:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    return-void
.end method
