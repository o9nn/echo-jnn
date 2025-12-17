.class abstract enum Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;
.super Ljava/lang/Enum;
.source "$Maps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "EntryFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;",
        ">;",
        "Lautovalue/shaded/com/google$/common/base/$Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

.field public static final enum KEY:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

.field public static final enum VALUE:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;


# direct methods
.method private static synthetic $values()[Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    const/4 v1, 0x0

    sget-object v2, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->KEY:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->VALUE:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction$1;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->KEY:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    .line 98
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction$2;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->VALUE:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    .line 91
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->$values()[Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILautovalue/shaded/com/google$/common/collect/$Maps$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    .line 91
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    .line 91
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    return-object v0
.end method
