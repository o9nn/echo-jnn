.class Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList$SerializedForm;
.super Ljava/lang/Object;
.source "$ImmutableAsList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final collection:Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "*>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList$SerializedForm;->collection:Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList$SerializedForm;->collection:Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    .line 69
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method
