.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$2;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;
.source "$ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;

.field final synthetic val$entryList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$2;->val$entryList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 83
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$2;->val$entryList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 86
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
