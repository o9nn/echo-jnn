.class Lautovalue/shaded/com/google$/common/base/$Optional$1$1;
.super Lautovalue/shaded/com/google$/common/base/$AbstractIterator;
.source "$Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/base/$Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/base/$AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/base/$Optional$1;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/base/$Optional$1;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Optional$1$1;->this$0:Lautovalue/shaded/com/google$/common/base/$Optional$1;

    .line 339
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$AbstractIterator;-><init>()V

    .line 340
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/base/$Optional$1;->val$optionals:Ljava/lang/Iterable;

    .line 341
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Optional$1$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Optional$1$1;->iterator:Ljava/util/Iterator;

    .line 345
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Optional$1$1;->iterator:Ljava/util/Iterator;

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/base/$Optional;

    .line 347
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/base/$Optional$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
