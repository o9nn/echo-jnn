.class public final enum Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;
.super Ljava/lang/Enum;
.source "$LiteralKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum ALL:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum BOOLEAN:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum CHAR:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum DOUBLE:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum FLOAT:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum INT:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum LONG:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum NULL:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum PRIMITIVE:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

.field public static final enum STRING:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 17
    new-instance v0, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->NULL:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 19
    new-instance v1, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v2, "INT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->INT:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 21
    new-instance v2, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->LONG:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 23
    new-instance v3, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v4, "FLOAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->FLOAT:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 25
    new-instance v4, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v5, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->DOUBLE:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 27
    new-instance v5, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->BOOLEAN:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 29
    new-instance v6, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v7, "CHAR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->CHAR:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 31
    new-instance v7, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v8, "STRING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->STRING:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 33
    new-instance v8, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v9, "ALL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->ALL:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 37
    new-instance v9, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    const-string v10, "PRIMITIVE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->PRIMITIVE:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    filled-new-array/range {v0 .. v9}, [Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->$VALUES:[Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static allLiteralKinds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->values()[Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->ALL:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->PRIMITIVE:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static primitiveLiteralKinds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->INT:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    sget-object v2, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->LONG:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    sget-object v3, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->FLOAT:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    sget-object v4, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->DOUBLE:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    sget-object v5, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->BOOLEAN:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    sget-object v6, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->CHAR:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    filled-new-array/range {v1 .. v6}, [Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;
    .locals 1

    const-class v0, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;
    .locals 1

    sget-object v0, Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->$VALUES:[Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    .line 15
    invoke-virtual {v0}, [Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;

    return-object v0
.end method
