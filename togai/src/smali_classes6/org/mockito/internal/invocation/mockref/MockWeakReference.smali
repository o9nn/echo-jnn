.class public Lorg/mockito/internal/invocation/mockref/MockWeakReference;
.super Ljava/lang/Object;
.source "MockWeakReference.java"

# interfaces
.implements Lorg/mockito/internal/invocation/mockref/MockReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/invocation/mockref/MockReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/mockito/internal/invocation/mockref/MockStrongReference;

    invoke-virtual {p0}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/invocation/mockref/MockStrongReference;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->ref:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The mock object was garbage collected. This should not happen in normal circumstances when using public API. Typically, the test class keeps strong reference to the mock object and it prevents getting the mock collected. Mockito internally needs to keep weak references to mock objects to avoid memory leaks for certain types of MockMaker implementations. If you see this exception using Mockito public API, please file a bug. For more information see issue #1313."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
