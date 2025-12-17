.class public final enum Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;
.super Ljava/lang/Enum;
.source "$TypeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

.field public static final enum ANNOTATION:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

.field public static final enum CLASS:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

.field public static final enum ENUM:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

.field public static final enum INTERFACE:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;


# instance fields
.field private final asMemberModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final implicitFieldModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final implicitMethodModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final implicitTypeModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 369
    new-instance v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->CLASS:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 375
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    const-string v9, "INTERFACE"

    const/4 v10, 0x1

    const/4 v1, 0x3

    new-array v2, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 376
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v11

    new-array v2, v6, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v4

    sget-object v3, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v5

    .line 377
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v12

    new-array v2, v6, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v4

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v5

    .line 378
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v13

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 379
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v14

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->INTERFACE:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 381
    new-instance v2, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    const-string v16, "ENUM"

    const/16 v17, 0x2

    .line 382
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v18

    .line 383
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v19

    .line 384
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v20

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 385
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v21

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v2, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ENUM:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 387
    new-instance v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    const-string v9, "ANNOTATION"

    const/4 v10, 0x3

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v8, v1, v4

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v8, v1, v5

    sget-object v8, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v8, v1, v6

    .line 388
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v11

    new-array v1, v6, [Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v8, v1, v4

    sget-object v8, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v8, v1, v5

    .line 389
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v12

    new-array v1, v6, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v1, v4

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v1, v5

    .line 390
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v13

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 391
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v14

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ANNOTATION:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    filled-new-array {v7, v0, v2, v3}, [Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->$VALUES:[Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->implicitFieldModifiers:Ljava/util/Set;

    iput-object p4, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->implicitMethodModifiers:Ljava/util/Set;

    iput-object p5, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->implicitTypeModifiers:Ljava/util/Set;

    iput-object p6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->asMemberModifiers:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$1000(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;
    .locals 0

    .line 368
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->implicitMethodModifiers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1100(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;
    .locals 0

    .line 368
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->implicitTypeModifiers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$800(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;
    .locals 0

    .line 368
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->asMemberModifiers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$900(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;
    .locals 0

    .line 368
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->implicitFieldModifiers:Ljava/util/Set;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;
    .locals 1

    const-class v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 368
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->$VALUES:[Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 368
    invoke-virtual {v0}, [Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    return-object v0
.end method
