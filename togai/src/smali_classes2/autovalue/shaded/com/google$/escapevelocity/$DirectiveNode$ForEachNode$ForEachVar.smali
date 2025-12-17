.class Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$ForEachVar;
.super Ljava/lang/Object;
.source "$DirectiveNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForEachVar"
.end annotation


# instance fields
.field private final iterator:Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$ForEachVar;->iterator:Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;

    return-void
.end method


# virtual methods
.method public getHasNext()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$ForEachVar;->iterator:Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;

    .line 174
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$ForEachVar;->iterator:Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;

    .line 178
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->index()I

    move-result v0

    return v0
.end method
