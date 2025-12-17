.class Lautovalue/shaded/com/google$/common/collect/$Maps$9;
.super Ljava/lang/Object;
.source "$Maps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;->asEntryTransformer(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
        "TK;TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lautovalue/shaded/com/google$/common/base/$Function;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/base/$Function;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$9;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 1887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV1;)TV2;"
        }
    .end annotation

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$9;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 1890
    invoke-interface {p1, p2}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
