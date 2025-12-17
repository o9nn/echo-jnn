.class abstract enum Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;
.super Ljava/lang/Enum;
.source "$Predicates.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ObjectPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;",
        ">;",
        "Lautovalue/shaded/com/google$/common/base/$Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

.field public static final enum ALWAYS_FALSE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

.field public static final enum ALWAYS_TRUE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

.field public static final enum IS_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

.field public static final enum NOT_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;


# direct methods
.method private static synthetic $values()[Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    const/4 v1, 0x0

    sget-object v2, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->ALWAYS_TRUE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->ALWAYS_FALSE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->IS_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->NOT_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 252
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$1;

    const-string v1, "ALWAYS_TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->ALWAYS_TRUE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    .line 264
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$2;

    const-string v1, "ALWAYS_FALSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->ALWAYS_FALSE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    .line 276
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$3;

    const-string v1, "IS_NULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->IS_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    .line 288
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$4;

    const-string v1, "NOT_NULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->NOT_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    .line 250
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->$values()[Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->$VALUES:[Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILautovalue/shaded/com/google$/common/base/$Predicates$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    .line 250
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->$VALUES:[Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    .line 250
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    return-object v0
.end method


# virtual methods
.method withNarrowedType()Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
