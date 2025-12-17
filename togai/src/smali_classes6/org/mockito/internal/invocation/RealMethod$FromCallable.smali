.class public Lorg/mockito/internal/invocation/RealMethod$FromCallable;
.super Lorg/mockito/internal/invocation/RealMethod$FromBehavior;
.source "RealMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/RealMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/invocation/RealMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromCallable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/mockito/internal/invocation/RealMethod$FromCallable$1;

    invoke-direct {v0, p1}, Lorg/mockito/internal/invocation/RealMethod$FromCallable$1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Lorg/mockito/internal/invocation/RealMethod$FromBehavior;-><init>(Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;)V

    return-void
.end method
