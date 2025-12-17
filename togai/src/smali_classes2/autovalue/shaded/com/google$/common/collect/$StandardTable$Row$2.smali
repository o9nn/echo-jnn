.class Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row$2;
.super Lautovalue/shaded/com/google$/common/collect/$ForwardingMapEntry;
.source "$StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ForwardingMapEntry<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row$2;->val$entry:Ljava/util/Map$Entry;

    .line 395
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row$2;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row$2;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row$2;->standardEquals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 403
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
