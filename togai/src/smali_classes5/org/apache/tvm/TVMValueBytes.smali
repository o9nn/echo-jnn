.class public Lorg/apache/tvm/TVMValueBytes;
.super Lorg/apache/tvm/TVMValue;
.source "TVMValueBytes.java"


# instance fields
.field public final value:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->BYTES:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    iput-object p1, p0, Lorg/apache/tvm/TVMValueBytes;->value:[B

    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/TVMValueBytes;->value:[B

    return-object v0
.end method
