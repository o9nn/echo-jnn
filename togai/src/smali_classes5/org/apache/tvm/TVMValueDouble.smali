.class public Lorg/apache/tvm/TVMValueDouble;
.super Lorg/apache/tvm/TVMValue;
.source "TVMValueDouble.java"


# instance fields
.field public final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->FLOAT:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    iput-wide p1, p0, Lorg/apache/tvm/TVMValueDouble;->value:D

    return-void
.end method


# virtual methods
.method public asDouble()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/tvm/TVMValueDouble;->value:D

    return-wide v0
.end method
