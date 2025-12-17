.class final Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$SerializedForm;
.super Ljava/lang/Object;
.source "$EmptyContiguousSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$SerializedForm;->domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 152
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$SerializedForm;->domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V

    return-object v0
.end method
