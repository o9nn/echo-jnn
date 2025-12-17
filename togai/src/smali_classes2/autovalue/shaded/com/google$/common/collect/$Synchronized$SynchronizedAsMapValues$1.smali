.class Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues$1;
.super Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;
.source "$Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$TransformedIterator<",
        "Ljava/util/Collection<",
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;

    .line 1400
    invoke-direct {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1400
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues$1;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;

    .line 1403
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;->mutex:Ljava/lang/Object;

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
