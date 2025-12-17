.class public final enum Lapp/rive/runtime/kotlin/core/Direction;
.super Ljava/lang/Enum;
.source "Direction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/Direction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/rive/runtime/kotlin/core/Direction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDirection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Direction.kt\napp/rive/runtime/kotlin/core/Direction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,12:1\n1194#2,2:13\n1222#2,4:15\n*S KotlinDebug\n*F\n+ 1 Direction.kt\napp/rive/runtime/kotlin/core/Direction\n*L\n9#1:13,2\n9#1:15,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/Direction;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "BACKWARDS",
        "FORWARDS",
        "AUTO",
        "Companion",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lapp/rive/runtime/kotlin/core/Direction;

.field public static final enum AUTO:Lapp/rive/runtime/kotlin/core/Direction;

.field public static final enum BACKWARDS:Lapp/rive/runtime/kotlin/core/Direction;

.field public static final Companion:Lapp/rive/runtime/kotlin/core/Direction$Companion;

.field public static final enum FORWARDS:Lapp/rive/runtime/kotlin/core/Direction;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lapp/rive/runtime/kotlin/core/Direction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lapp/rive/runtime/kotlin/core/Direction;
    .locals 3

    sget-object v0, Lapp/rive/runtime/kotlin/core/Direction;->BACKWARDS:Lapp/rive/runtime/kotlin/core/Direction;

    sget-object v1, Lapp/rive/runtime/kotlin/core/Direction;->FORWARDS:Lapp/rive/runtime/kotlin/core/Direction;

    sget-object v2, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    filled-new-array {v0, v1, v2}, [Lapp/rive/runtime/kotlin/core/Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lapp/rive/runtime/kotlin/core/Direction;

    const/4 v1, -0x1

    const-string v2, "BACKWARDS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lapp/rive/runtime/kotlin/core/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Direction;->BACKWARDS:Lapp/rive/runtime/kotlin/core/Direction;

    .line 5
    new-instance v0, Lapp/rive/runtime/kotlin/core/Direction;

    const-string v1, "FORWARDS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lapp/rive/runtime/kotlin/core/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Direction;->FORWARDS:Lapp/rive/runtime/kotlin/core/Direction;

    .line 6
    new-instance v0, Lapp/rive/runtime/kotlin/core/Direction;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lapp/rive/runtime/kotlin/core/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    invoke-static {}, Lapp/rive/runtime/kotlin/core/Direction;->$values()[Lapp/rive/runtime/kotlin/core/Direction;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/Direction;->$VALUES:[Lapp/rive/runtime/kotlin/core/Direction;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/Direction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Direction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/core/Direction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Direction;->Companion:Lapp/rive/runtime/kotlin/core/Direction$Companion;

    .line 9
    invoke-static {}, Lapp/rive/runtime/kotlin/core/Direction;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    .line 13
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 14
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 16
    move-object v3, v1

    check-cast v3, Lapp/rive/runtime/kotlin/core/Direction;

    .line 9
    iget v3, v3, Lapp/rive/runtime/kotlin/core/Direction;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 16
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sput-object v2, Lapp/rive/runtime/kotlin/core/Direction;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lapp/rive/runtime/kotlin/core/Direction;->value:I

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/Direction;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lapp/rive/runtime/kotlin/core/Direction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lapp/rive/runtime/kotlin/core/Direction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/Direction;
    .locals 1

    const-class v0, Lapp/rive/runtime/kotlin/core/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/rive/runtime/kotlin/core/Direction;

    return-object p0
.end method

.method public static values()[Lapp/rive/runtime/kotlin/core/Direction;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/Direction;->$VALUES:[Lapp/rive/runtime/kotlin/core/Direction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/rive/runtime/kotlin/core/Direction;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lapp/rive/runtime/kotlin/core/Direction;->value:I

    return v0
.end method
