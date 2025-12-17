.class public Lorg/apache/tvm/rpc/RPC$TrackerCode;
.super Ljava/lang/Object;
.source "RPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tvm/rpc/RPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackerCode"
.end annotation


# static fields
.field public static final GET_PENDING_MATCHKEYS:I = 0x7

.field public static final PUT:I = 0x3

.field public static final SUCCESS:I = 0x0

.field public static final UPDATE_INFO:I = 0x5


# instance fields
.field final synthetic this$0:Lorg/apache/tvm/rpc/RPC;


# direct methods
.method public constructor <init>(Lorg/apache/tvm/rpc/RPC;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/tvm/rpc/RPC$TrackerCode;->this$0:Lorg/apache/tvm/rpc/RPC;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
