.class final Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.source "$TokenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NestedTokenNode"
.end annotation


# instance fields
.field final nodes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 145
    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;->nodes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method


# virtual methods
.method name()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#parse(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
