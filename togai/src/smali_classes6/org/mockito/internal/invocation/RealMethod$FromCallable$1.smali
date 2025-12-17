.class Lorg/mockito/internal/invocation/RealMethod$FromCallable$1;
.super Ljava/lang/Object;
.source "RealMethod.java"

# interfaces
.implements Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/invocation/RealMethod$FromCallable;-><init>(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/invocation/RealMethod$FromCallable$1;->val$callable:Ljava/util/concurrent/Callable;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/invocation/RealMethod$FromCallable$1;->val$callable:Ljava/util/concurrent/Callable;

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
