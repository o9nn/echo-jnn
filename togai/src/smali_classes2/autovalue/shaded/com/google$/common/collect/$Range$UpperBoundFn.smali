.class Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;
.super Ljava/lang/Object;
.source "$Range.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpperBoundFn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Function<",
        "Lautovalue/shaded/com/google$/common/collect/$Range;",
        "Lautovalue/shaded/com/google$/common/collect/$Cut;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Cut;
    .locals 0

    .line 137
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;->apply(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    return-object p1
.end method
