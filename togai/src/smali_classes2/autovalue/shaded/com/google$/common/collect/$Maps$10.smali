.class Lautovalue/shaded/com/google$/common/collect/$Maps$10;
.super Ljava/lang/Object;
.source "$Maps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;->asValueToValueFunction(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Function<",
        "TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$transformer:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$10;->val$transformer:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$10;->val$key:Ljava/lang/Object;

    .line 1898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$10;->val$transformer:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$10;->val$key:Ljava/lang/Object;

    .line 1901
    invoke-interface {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
