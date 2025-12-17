.class abstract enum Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;
.super Ljava/lang/Enum;
.source "$SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$SortedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "KeyAbsentBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

.field public static final enum INVERTED_INSERTION_INDEX:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

.field public static final enum NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

.field public static final enum NEXT_LOWER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;


# direct methods
.method private static synthetic $values()[Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    const/4 v1, 0x0

    sget-object v2, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior$1;

    const-string v1, "NEXT_LOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 149
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior$2;

    const-string v1, "NEXT_HIGHER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 167
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior$3;

    const-string v1, "INVERTED_INSERTION_INDEX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 134
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->$values()[Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILautovalue/shaded/com/google$/common/collect/$SortedLists$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 134
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 134
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    return-object v0
.end method


# virtual methods
.method abstract resultIndex(I)I
.end method
