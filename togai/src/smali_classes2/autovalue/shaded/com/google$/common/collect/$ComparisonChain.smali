.class public abstract Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.super Ljava/lang/Object;
.source "$ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;
    }
.end annotation


# static fields
.field private static final ACTIVE:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

.field private static final GREATER:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

.field private static final LESS:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$1;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$1;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->ACTIVE:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    .line 122
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->LESS:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    .line 124
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->GREATER:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$1;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->LESS:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    return-object v0
.end method

.method static synthetic access$200()Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->GREATER:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    return-object v0
.end method

.method static synthetic access$300()Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->ACTIVE:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    return-object v0
.end method

.method public static start()Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->ACTIVE:Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    return-object v0
.end method


# virtual methods
.method public abstract compare(DD)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.end method

.method public abstract compare(FF)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.end method

.method public abstract compare(II)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.end method

.method public abstract compare(JJ)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.end method

.method public final compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->compareFalseFirst(ZZ)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public abstract compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;"
        }
    .end annotation
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;"
        }
    .end annotation
.end method

.method public abstract compareFalseFirst(ZZ)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.end method

.method public abstract compareTrueFirst(ZZ)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.end method

.method public abstract result()I
.end method
