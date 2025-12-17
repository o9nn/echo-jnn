.class Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$2;
.super Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
.source "$MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->linkedHashKeys(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$expectedKeys:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$2;->val$expectedKeys:I

    .line 118
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;-><init>()V

    return-void
.end method


# virtual methods
.method createMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$2;->val$expectedKeys:I

    .line 121
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Platform;->newLinkedHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
