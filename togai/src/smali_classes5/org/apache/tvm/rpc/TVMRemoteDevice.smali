.class public Lorg/apache/tvm/rpc/TVMRemoteDevice;
.super Lorg/apache/tvm/Device;
.source "TVMRemoteDevice.java"


# instance fields
.field public final rpcSession:Lorg/apache/tvm/rpc/RPCSession;


# direct methods
.method constructor <init>(IILorg/apache/tvm/rpc/RPCSession;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/tvm/Device;-><init>(II)V

    iput-object p3, p0, Lorg/apache/tvm/rpc/TVMRemoteDevice;->rpcSession:Lorg/apache/tvm/rpc/RPCSession;

    return-void
.end method
