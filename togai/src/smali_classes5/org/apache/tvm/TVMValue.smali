.class public Lorg/apache/tvm/TVMValue;
.super Ljava/lang/Object;
.source "TVMValue.java"


# instance fields
.field public final typeCode:Lorg/apache/tvm/ArgTypeCode;


# direct methods
.method public constructor <init>(Lorg/apache/tvm/ArgTypeCode;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tvm/TVMValue;->typeCode:Lorg/apache/tvm/ArgTypeCode;

    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asDouble()D
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asFunction()Lorg/apache/tvm/Function;
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method asHandle()J
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asLong()J
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asModule()Lorg/apache/tvm/Module;
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asNDArray()Lorg/apache/tvm/NDArrayBase;
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
