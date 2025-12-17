.class final enum Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;
.super Ljava/lang/Enum;
.source "$Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EmptyModifiableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

.field public static final enum INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;


# direct methods
.method private static synthetic $values()[Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    filled-new-array {v0}, [Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    .line 95
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;->$values()[Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    .line 95
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    .line 95
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/common/collect/$Iterators$EmptyModifiableIterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 105
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkRemove(Z)V

    return-void
.end method
