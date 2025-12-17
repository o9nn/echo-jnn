.class Lautovalue/shaded/com/google$/common/collect/$Streams$1OptionalState;
.super Ljava/lang/Object;
.source "$Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionalState"
.end annotation


# instance fields
.field set:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$1OptionalState;->set:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$1OptionalState;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$1OptionalState;->set:Z

    .line 832
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(Z)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$1OptionalState;->value:Ljava/lang/Object;

    return-object v0
.end method

.method set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$1OptionalState;->set:Z

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$1OptionalState;->value:Ljava/lang/Object;

    return-void
.end method
