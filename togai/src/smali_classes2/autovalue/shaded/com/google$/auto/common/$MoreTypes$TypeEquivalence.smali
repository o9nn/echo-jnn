.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;
.super Lautovalue/shaded/com/google$/common/base/$Equivalence;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeEquivalence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
        "Ljavax/lang/model/type/TypeMirror;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 66
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;->doEquivalent(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method protected doEquivalent(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    .line 71
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic doHash(Ljava/lang/Object;)I
    .locals 0

    .line 66
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;->doHash(Ljavax/lang/model/type/TypeMirror;)I

    move-result p1

    return p1
.end method

.method protected doHash(Ljavax/lang/model/type/TypeMirror;)I
    .locals 1

    .line 76
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$100(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreTypes.equivalence()"

    return-object v0
.end method
