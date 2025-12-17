.class public final Lorg/apache/tvm/APIInternal;
.super Ljava/lang/Object;
.source "APIInternal.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 0

    .line 30
    invoke-static {p0}, Lorg/apache/tvm/API;->get(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p0

    return-object p0
.end method
