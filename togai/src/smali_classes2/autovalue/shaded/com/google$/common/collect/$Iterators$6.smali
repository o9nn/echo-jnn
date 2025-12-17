.class Lautovalue/shaded/com/google$/common/collect/$Iterators$6;
.super Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;
.source "$Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterators;->transform(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$TransformedIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lautovalue/shaded/com/google$/common/base/$Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$6;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 780
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$6;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 783
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
