.class public Lorg/apache/tvm/rpc/RPC;
.super Ljava/lang/Object;
.source "RPC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tvm/rpc/RPC$TrackerCode;
    }
.end annotation


# static fields
.field public static final RPC_CODE_MISMATCH:I = 0xff273

.field public static final RPC_MAGIC:I = 0xff271

.field public static final RPC_SESS_MASK:I = 0x80

.field public static final RPC_TRACKER_MAGIC:I = 0x2f271

.field public static final TIMEOUT_ARG:Ljava/lang/String; = "-timeout="

.field private static apiFuncs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tvm/Function;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/tvm/rpc/RPC$1;

    invoke-direct {v0}, Lorg/apache/tvm/rpc/RPC$1;-><init>()V

    sput-object v0, Lorg/apache/tvm/rpc/RPC;->apiFuncs:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 2

    sget-object v0, Lorg/apache/tvm/rpc/RPC;->apiFuncs:Ljava/lang/ThreadLocal;

    .line 54
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tvm/Function;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rpc."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tvm/Function;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lorg/apache/tvm/rpc/RPC;->apiFuncs:Ljava/lang/ThreadLocal;

    .line 60
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
