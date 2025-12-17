.class public Lcom/google/auto/value/processor/Optionalish;
.super Ljava/lang/Object;
.source "Optionalish.java"


# static fields
.field private static final OPTIONAL_CLASS_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TYPE_KINDS:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final className:Ljava/lang/String;

.field private final optionalType:Ljavax/lang/model/type/DeclaredType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com."

    const-string v1, "google.common.base.Optional"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.OptionalInt"

    const-string v2, "java.util.OptionalLong"

    const-string v3, "java.util.Optional"

    const-string v4, "java.util.OptionalDouble"

    .line 38
    invoke-static {v0, v3, v4, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/Optionalish;->OPTIONAL_CLASS_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    const-string v1, "OptionalDouble"

    .line 114
    sget-object v2, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    const-string v3, "OptionalInt"

    sget-object v4, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    const-string v5, "OptionalLong"

    sget-object v6, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    .line 115
    invoke-static/range {v1 .. v6}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/Optionalish;->PRIMITIVE_TYPE_KINDS:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljavax/lang/model/type/DeclaredType;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/Optionalish;->optionalType:Ljavax/lang/model/type/DeclaredType;

    .line 50
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/Optionalish;->className:Ljava/lang/String;

    return-void
.end method

.method static createIfOptional(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/processor/Optionalish;
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/google/auto/value/processor/Optionalish;->isOptional(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/google/auto/value/processor/Optionalish;

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/auto/value/processor/Optionalish;-><init>(Ljavax/lang/model/type/DeclaredType;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getContainedPrimitiveType(Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/TypeMirror;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/Optionalish;->optionalType:Ljavax/lang/model/type/DeclaredType;

    .line 121
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/auto/value/processor/Optionalish;->PRIMITIVE_TYPE_KINDS:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 122
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeKind;

    iget-object v1, p0, Lcom/google/auto/value/processor/Optionalish;->optionalType:Ljavax/lang/model/type/DeclaredType;

    .line 123
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not get contained type of %s"

    invoke-static {v0, v2, v1}, Lautovalue/shaded/com/google$/common/base/$Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {p1, v0}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method static isOptional(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 4

    .line 68
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 71
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    .line 72
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    sget-object v1, Lcom/google/auto/value/processor/Optionalish;->OPTIONAL_CLASS_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 73
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method getContainedType(Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/TypeMirror;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/Optionalish;->optionalType:Ljavax/lang/model/type/DeclaredType;

    .line 99
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 102
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    return-object p1

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong number of type arguments: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/auto/value/processor/Optionalish;->optionalType:Ljavax/lang/model/type/DeclaredType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 104
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/Optionalish;->getContainedPrimitiveType(Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public getEmpty()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/Optionalish;->className:Ljava/lang/String;

    const-string v1, "java.util."

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".empty()"

    goto :goto_0

    :cond_0
    const-string v0, ".absent()"

    .line 95
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/auto/value/processor/Optionalish;->optionalType:Ljavax/lang/model/type/DeclaredType;

    invoke-static {v2}, Lcom/google/auto/value/processor/TypeEncoder;->encodeRaw(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/Optionalish;->optionalType:Ljavax/lang/model/type/DeclaredType;

    .line 82
    invoke-static {v0}, Lcom/google/auto/value/processor/TypeEncoder;->encodeRaw(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ofNullable()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/Optionalish;->className:Ljava/lang/String;

    const-string v1, "java.util.Optional"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ofNullable"

    goto :goto_0

    :cond_0
    const-string v0, "fromNullable"

    :goto_0
    return-object v0
.end method
