.class final enum Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;
.super Ljava/lang/Enum;
.source "ToPrettyStringExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PrettyPrintableKind"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum ARRAY:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum COLLECTION:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum GUAVA_OPTIONAL:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum HAS_TO_PRETTY_STRING_METHOD:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum IMMUTABLE_PRIMITIVE_ARRAY:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field private static final KINDS_BY_EXACT_TYPE:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final KINDS_BY_SUPERTYPE:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MAP:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum MULTIMAP:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum OPTIONAL:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum PRIMITIVE:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

.field public static final enum REGULAR_OBJECT:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 478
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v1, "HAS_TO_PRETTY_STRING_METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->HAS_TO_PRETTY_STRING_METHOD:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 479
    new-instance v1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v2, "REGULAR_OBJECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->REGULAR_OBJECT:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 480
    new-instance v2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "PRIMITIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->PRIMITIVE:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 481
    new-instance v10, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "COLLECTION"

    const/4 v4, 0x3

    invoke-direct {v10, v3, v4}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->COLLECTION:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 482
    new-instance v4, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "ARRAY"

    const/4 v5, 0x4

    invoke-direct {v4, v3, v5}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->ARRAY:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 483
    new-instance v15, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "IMMUTABLE_PRIMITIVE_ARRAY"

    const/4 v5, 0x5

    invoke-direct {v15, v3, v5}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->IMMUTABLE_PRIMITIVE_ARRAY:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 484
    new-instance v12, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "OPTIONAL"

    const/4 v5, 0x6

    invoke-direct {v12, v3, v5}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->OPTIONAL:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 485
    new-instance v14, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "GUAVA_OPTIONAL"

    const/4 v5, 0x7

    invoke-direct {v14, v3, v5}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->GUAVA_OPTIONAL:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 486
    new-instance v13, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "MAP"

    const/16 v5, 0x8

    invoke-direct {v13, v3, v5}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->MAP:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 487
    new-instance v11, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v3, "MULTIMAP"

    const/16 v5, 0x9

    invoke-direct {v11, v3, v5}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->MULTIMAP:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    move-object v3, v10

    move-object v5, v15

    move-object v6, v12

    move-object v7, v14

    move-object v8, v13

    move-object v9, v11

    filled-new-array/range {v0 .. v9}, [Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->$VALUES:[Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    const-string v0, "java.util.Optional"

    const-string v1, "autovalue.shaded.com.google$.common.base.$Optional"

    const-string v2, "autovalue.shaded.com.google$.common.primitives.$ImmutableIntArray"

    const-string v17, "autovalue.shaded.com.google$.common.primitives.$ImmutableLongArray"

    const-string v19, "autovalue.shaded.com.google$.common.primitives.$ImmutableDoubleArray"

    move-object v3, v11

    move-object v11, v0

    move-object v0, v13

    move-object v13, v1

    move-object v1, v15

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v18, v1

    move-object/from16 v20, v1

    .line 491
    invoke-static/range {v11 .. v20}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->KINDS_BY_EXACT_TYPE:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    const-string v5, "java.util.Collection"

    const-string v7, "java.util.Map"

    const-string v9, "autovalue.shaded.com.google$.common.collect.$Multimap"

    move-object v6, v10

    move-object v8, v0

    move-object v10, v3

    .line 499
    invoke-static/range {v5 .. v10}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->KINDS_BY_SUPERTYPE:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 477
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1

    sget-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->KINDS_BY_EXACT_TYPE:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object v0
.end method

.method static synthetic access$800()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1

    sget-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->KINDS_BY_SUPERTYPE:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;
    .locals 1

    const-class v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 477
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    return-object p0
.end method

.method public static values()[Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;
    .locals 1

    sget-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->$VALUES:[Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 477
    invoke-virtual {v0}, [Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    return-object v0
.end method
