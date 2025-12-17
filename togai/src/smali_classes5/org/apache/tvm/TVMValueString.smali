.class public Lorg/apache/tvm/TVMValueString;
.super Lorg/apache/tvm/TVMValue;
.source "TVMValueString.java"


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->STR:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    iput-object p1, p0, Lorg/apache/tvm/TVMValueString;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/TVMValueString;->value:Ljava/lang/String;

    return-object v0
.end method
