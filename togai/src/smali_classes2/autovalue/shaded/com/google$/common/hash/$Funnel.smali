.class public interface abstract Lautovalue/shaded/com/google$/common/hash/$Funnel;
.super Ljava/lang/Object;
.source "$Funnel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$DoNotMock;
    value = "Implement with a lambda"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract funnel(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;",
            ")V"
        }
    .end annotation
.end method
