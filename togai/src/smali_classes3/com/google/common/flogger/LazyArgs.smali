.class public final Lcom/google/common/flogger/LazyArgs;
.super Ljava/lang/Object;
.source "LazyArgs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lazy(Lcom/google/common/flogger/LazyArg;)Lcom/google/common/flogger/LazyArg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/LazyArg<",
            "TT;>;)",
            "Lcom/google/common/flogger/LazyArg<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lazy arg"

    .line 54
    invoke-static {p0, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/LazyArg;

    return-object p0
.end method
