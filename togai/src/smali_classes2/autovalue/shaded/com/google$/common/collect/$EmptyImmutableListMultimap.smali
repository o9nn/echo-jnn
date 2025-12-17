.class Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
.source "$EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;

    return-object v0
.end method
