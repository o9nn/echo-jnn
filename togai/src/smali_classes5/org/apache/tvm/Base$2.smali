.class Lorg/apache/tvm/Base$2;
.super Ljava/lang/Thread;
.source "Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tvm/Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0}, Lorg/apache/tvm/LibInfo;->shutdown()I

    return-void
.end method
