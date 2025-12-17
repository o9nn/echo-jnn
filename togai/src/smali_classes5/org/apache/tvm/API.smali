.class public final Lorg/apache/tvm/API;
.super Ljava/lang/Object;
.source "API.java"


# static fields
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

    .line 27
    new-instance v0, Lorg/apache/tvm/API$1;

    invoke-direct {v0}, Lorg/apache/tvm/API$1;-><init>()V

    sput-object v0, Lorg/apache/tvm/API;->apiFuncs:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 2

    sget-object v0, Lorg/apache/tvm/API;->apiFuncs:Ljava/lang/ThreadLocal;

    .line 41
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tvm/Function;

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0}, Lorg/apache/tvm/Function;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    sget-object v1, Lorg/apache/tvm/API;->apiFuncs:Ljava/lang/ThreadLocal;

    .line 44
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
