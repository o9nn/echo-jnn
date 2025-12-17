.class public Lorg/mockito/internal/invocation/RealMethod$FromBehavior;
.super Ljava/lang/Object;
.source "RealMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/RealMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/invocation/RealMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromBehavior"
.end annotation


# instance fields
.field private final behavior:Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/invocation/RealMethod$FromBehavior;->behavior:Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/invocation/RealMethod$FromBehavior;->behavior:Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;

    .line 62
    invoke-interface {v0}, Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 64
    new-instance v1, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    invoke-virtual {v1, v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 65
    throw v0
.end method

.method public isInvokable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
