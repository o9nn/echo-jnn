.class public final Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions;
.super Ljava/lang/Object;
.source "FunctionWithExceptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$wrapper$0(Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static wrapper(Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException<",
            "TI;TO;>;)",
            "Ljava/util/function/Function<",
            "TI;TO;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;)V

    return-object v0
.end method
