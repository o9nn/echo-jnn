.class final enum Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;
.super Ljava/lang/Enum;
.source "$MultimapBuilder.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LinkedListSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;",
        ">;",
        "Lautovalue/shaded/com/google$/common/base/$Supplier<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

.field public static final enum INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;


# direct methods
.method private static synthetic $values()[Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    filled-new-array {v0}, [Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 197
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    .line 196
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->$values()[Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static instance()Lautovalue/shaded/com/google$/common/base/$Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    .line 196
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->$VALUES:[Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    .line 196
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
