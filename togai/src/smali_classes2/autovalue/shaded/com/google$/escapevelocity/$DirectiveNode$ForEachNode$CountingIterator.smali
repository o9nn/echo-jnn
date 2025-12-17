.class Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;
.super Ljava/lang/Object;
.source "$DirectiveNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->index:I

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->iterator:Ljava/util/Iterator;

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method index()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->index:I

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->iterator:Ljava/util/Iterator;

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->index:I

    return-object v0
.end method
