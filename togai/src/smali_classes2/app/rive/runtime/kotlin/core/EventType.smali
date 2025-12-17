.class public final enum Lapp/rive/runtime/kotlin/core/EventType;
.super Ljava/lang/Enum;
.source "EventType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/EventType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/rive/runtime/kotlin/core/EventType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventType.kt\napp/rive/runtime/kotlin/core/EventType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,14:1\n1194#2,2:15\n1222#2,4:17\n*S KotlinDebug\n*F\n+ 1 EventType.kt\napp/rive/runtime/kotlin/core/EventType\n*L\n11#1:15,2\n11#1:17,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/EventType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;IS)V",
        "getValue",
        "()S",
        "OpenURLEvent",
        "GeneralEvent",
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

.field private static final synthetic $VALUES:[Lapp/rive/runtime/kotlin/core/EventType;

.field public static final Companion:Lapp/rive/runtime/kotlin/core/EventType$Companion;

.field public static final enum GeneralEvent:Lapp/rive/runtime/kotlin/core/EventType;

.field public static final enum OpenURLEvent:Lapp/rive/runtime/kotlin/core/EventType;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lapp/rive/runtime/kotlin/core/EventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:S


# direct methods
.method private static final synthetic $values()[Lapp/rive/runtime/kotlin/core/EventType;
    .locals 2

    sget-object v0, Lapp/rive/runtime/kotlin/core/EventType;->OpenURLEvent:Lapp/rive/runtime/kotlin/core/EventType;

    sget-object v1, Lapp/rive/runtime/kotlin/core/EventType;->GeneralEvent:Lapp/rive/runtime/kotlin/core/EventType;

    filled-new-array {v0, v1}, [Lapp/rive/runtime/kotlin/core/EventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lapp/rive/runtime/kotlin/core/EventType;

    const/4 v1, 0x0

    const/16 v2, 0x83

    const-string v3, "OpenURLEvent"

    invoke-direct {v0, v3, v1, v2}, Lapp/rive/runtime/kotlin/core/EventType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/EventType;->OpenURLEvent:Lapp/rive/runtime/kotlin/core/EventType;

    .line 8
    new-instance v0, Lapp/rive/runtime/kotlin/core/EventType;

    const/4 v1, 0x1

    const/16 v2, 0x80

    const-string v3, "GeneralEvent"

    invoke-direct {v0, v3, v1, v2}, Lapp/rive/runtime/kotlin/core/EventType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/EventType;->GeneralEvent:Lapp/rive/runtime/kotlin/core/EventType;

    invoke-static {}, Lapp/rive/runtime/kotlin/core/EventType;->$values()[Lapp/rive/runtime/kotlin/core/EventType;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/EventType;->$VALUES:[Lapp/rive/runtime/kotlin/core/EventType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/EventType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lapp/rive/runtime/kotlin/core/EventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/core/EventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/EventType;->Companion:Lapp/rive/runtime/kotlin/core/EventType$Companion;

    .line 11
    invoke-static {}, Lapp/rive/runtime/kotlin/core/EventType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    .line 15
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 16
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 18
    move-object v3, v1

    check-cast v3, Lapp/rive/runtime/kotlin/core/EventType;

    .line 11
    iget-short v3, v3, Lapp/rive/runtime/kotlin/core/EventType;->value:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 18
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sput-object v2, Lapp/rive/runtime/kotlin/core/EventType;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lapp/rive/runtime/kotlin/core/EventType;->value:S

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/EventType;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lapp/rive/runtime/kotlin/core/EventType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lapp/rive/runtime/kotlin/core/EventType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/EventType;
    .locals 1

    const-class v0, Lapp/rive/runtime/kotlin/core/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/rive/runtime/kotlin/core/EventType;

    return-object p0
.end method

.method public static values()[Lapp/rive/runtime/kotlin/core/EventType;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/EventType;->$VALUES:[Lapp/rive/runtime/kotlin/core/EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/rive/runtime/kotlin/core/EventType;

    return-object v0
.end method


# virtual methods
.method public final getValue()S
    .locals 1

    iget-short v0, p0, Lapp/rive/runtime/kotlin/core/EventType;->value:S

    return v0
.end method
