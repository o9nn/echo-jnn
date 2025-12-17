.class public Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
.super Ljava/lang/Object;
.source "$TypeName.java"


# static fields
.field public static final BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field private static final BOXED_BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_BYTE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_CHAR:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_INT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_LONG:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_SHORT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final BOXED_VOID:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field public static final BYTE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public static final CHAR:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public static final DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public static final FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public static final INT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public static final LONG:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public static final OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field public static final SHORT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public static final VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;


# instance fields
.field public final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private cachedString:Ljava/lang/String;

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string/jumbo v1, "void"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 70
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "boolean"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 71
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "byte"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BYTE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 72
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "short"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->SHORT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 73
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "int"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->INT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 74
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "long"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->LONG:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 75
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "char"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->CHAR:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 76
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "float"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 77
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v1, "double"

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "java.lang"

    const-string v3, "Object"

    .line 78
    invoke-static {v2, v3, v1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Void"

    new-array v3, v0, [Ljava/lang/String;

    .line 80
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_VOID:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Boolean"

    new-array v3, v0, [Ljava/lang/String;

    .line 81
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Byte"

    new-array v3, v0, [Ljava/lang/String;

    .line 82
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BYTE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Short"

    new-array v3, v0, [Ljava/lang/String;

    .line 83
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_SHORT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Integer"

    new-array v3, v0, [Ljava/lang/String;

    .line 84
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_INT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Long"

    new-array v3, v0, [Ljava/lang/String;

    .line 85
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_LONG:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Character"

    new-array v3, v0, [Ljava/lang/String;

    .line 86
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_CHAR:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Float"

    new-array v3, v0, [Ljava/lang/String;

    .line 87
    invoke-static {v2, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v1, "Double"

    new-array v0, v0, [Ljava/lang/String;

    .line 88
    invoke-static {v2, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    .line 103
    invoke-static {p2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->annotations:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static arrayComponent(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 1

    .line 373
    instance-of v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    if-eqz v0, :cond_0

    .line 374
    check-cast p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static asArray(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 1

    .line 380
    instance-of v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    if-eqz v0, :cond_0

    .line 381
    check-cast p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 1

    .line 323
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/reflect/Type;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;"
        }
    .end annotation

    .line 327
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 328
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 329
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_0

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 330
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 331
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BYTE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 332
    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->SHORT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 333
    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->INT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 334
    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->LONG:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 335
    :cond_5
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->CHAR:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 336
    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 337
    :cond_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0

    .line 338
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->of(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p0

    return-object p0

    .line 339
    :cond_9
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p0

    return-object p0

    .line 341
    :cond_a
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b

    .line 342
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterizedTypeName;->get(Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$ParameterizedTypeName;

    move-result-object p0

    return-object p0

    .line 344
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_c

    .line 345
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$WildcardTypeName;->get(Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    return-object p0

    .line 347
    :cond_c
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_d

    .line 348
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->get(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0

    .line 350
    :cond_d
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_e

    .line 351
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->get(Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p0

    return-object p0

    .line 354
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unexpected type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 1

    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljavax/lang/model/type/TypeMirror;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;"
        }
    .end annotation

    .line 248
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName$1;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName$1;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0
.end method

.method static list([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->list([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static list([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 366
    invoke-static {v3, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "annotations == null"

    .line 116
    invoke-static {p1, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->concatAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final varargs annotated([Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 112
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p1

    return-object p1
.end method

.method public box()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_VOID:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_1
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_2

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_2
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BYTE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_3

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BYTE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_3
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->SHORT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_4

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_SHORT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_4
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->INT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_5

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_INT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_5
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->LONG:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_6

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_LONG:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_6
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->CHAR:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_7

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_CHAR:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_7
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_8

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    :cond_8
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-ne p0, v0, :cond_9

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0

    .line 172
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected final concatAnnotations(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->isAnnotated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 226
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 227
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->emitAnnotations(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    .line 229
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitAndIndent(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1

    .line 223
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method emitAnnotations(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->annotations:Ljava/util/List;

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    const/4 v2, 0x1

    .line 234
    invoke-virtual {v1, p1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)V

    const-string v1, " "

    .line 235
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 199
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 203
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotated()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->annotations:Ljava/util/List;

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBoxedPrimitive()Z
    .locals 1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 147
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BYTE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 148
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_SHORT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 149
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_INT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 150
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_LONG:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 151
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_CHAR:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 152
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 153
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 154
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    new-instance v1, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;-><init>(Ljava/lang/Appendable;)V

    .line 212
    invoke-virtual {p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->cachedString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public unbox()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_VOID:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 183
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_1
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 184
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_2
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_BYTE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 185
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BYTE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_3
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_SHORT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 186
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->SHORT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_4
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_INT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 187
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->INT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_5
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_LONG:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 188
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->LONG:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_6
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_CHAR:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 189
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->CHAR:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_7
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 190
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->FLOAT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    :cond_8
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOXED_DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 191
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->DOUBLE:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object v0

    .line 192
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot unbox "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withoutAnnotations()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 2

    .line 121
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->keyword:Ljava/lang/String;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
