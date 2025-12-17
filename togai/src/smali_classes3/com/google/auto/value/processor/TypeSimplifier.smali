.class final Lcom/google/auto/value/processor/TypeSimplifier;
.super Ljava/lang/Object;
.source "TypeSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/TypeSimplifier$Spelling;
    }
.end annotation


# static fields
.field private static final CASTING_UNCHECKED_VISITOR:Ljavax/lang/model/type/TypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/type/TypeVisitor<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final imports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/TypeSimplifier$Spelling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 329
    new-instance v0, Lcom/google/auto/value/processor/TypeSimplifier$1;

    const/4 v1, 0x0

    .line 330
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/auto/value/processor/TypeSimplifier$1;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/auto/value/processor/TypeSimplifier;->CASTING_UNCHECKED_VISITOR:Ljavax/lang/model/type/TypeVisitor;

    return-void
.end method

.method constructor <init>(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/util/Types;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-direct {v0, p4}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>(Ljava/util/Collection;)V

    if-eqz p5, :cond_0

    .line 95
    invoke-interface {v0, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    invoke-static {p2, v0}, Lcom/google/auto/value/processor/TypeSimplifier;->topLevelTypes(Ljavax/lang/model/util/Types;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    .line 98
    invoke-static {p2, p5}, Lcom/google/auto/value/processor/TypeSimplifier;->nonPrivateDeclaredTypes(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object p5

    .line 99
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/auto/value/processor/TypeSimplifier;->findImports(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeSimplifier;->imports:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/auto/value/processor/TypeSimplifier;->uncheckedTypeArgument(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method

.method static actualTypeParametersString(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 3

    .line 139
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    .line 140
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 144
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda2;-><init>()V

    .line 145
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, "<"

    const-string v1, ">"

    const-string v2, ", "

    .line 146
    invoke-static {v2, v0, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static ambiguousNames(Ljavax/lang/model/util/Types;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 300
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 301
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 302
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_1

    .line 305
    invoke-interface {p0, v2}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-interface {p0, v2}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/QualifiedNameable;

    invoke-interface {v2}, Ljavax/lang/model/element/QualifiedNameable;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    .line 312
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/Name;

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_1
    new-instance p0, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;

    invoke-static {v2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asError(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ErrorType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;-><init>(Ljavax/lang/model/type/ErrorType;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method static classNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 2

    .line 152
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {p0}, Lcom/google/auto/value/processor/TypeSimplifier;->packageNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static findImports(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/util/Types;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/TypeSimplifier$Spelling;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    new-instance v1, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-direct {v1}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>()V

    .line 211
    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v1, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-static {p1, v1}, Lcom/google/auto/value/processor/TypeSimplifier;->ambiguousNames(Ljavax/lang/model/util/Types;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    .line 214
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 215
    invoke-interface {p1, v1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 216
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v1}, Lcom/google/auto/value/processor/TypeSimplifier;->packageNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-interface {p4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v3, v2

    goto :goto_2

    :cond_0
    const-string v5, "java.lang"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    invoke-static {p0, p2, v1}, Lcom/google/auto/value/processor/TypeSimplifier;->javaLangSpelling(Ljavax/lang/model/util/Elements;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 227
    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move v6, v5

    .line 234
    :goto_2
    new-instance v1, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;

    invoke-direct {v1, v3, v6}, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static isCastingUnchecked(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    sget-object v0, Lcom/google/auto/value/processor/TypeSimplifier;->CASTING_UNCHECKED_VISITOR:Ljavax/lang/model/type/TypeVisitor;

    const/4 v1, 0x0

    .line 326
    invoke-interface {v0, p0, v1}, Ljavax/lang/model/type/TypeVisitor;->visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isJavaLangObject(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 370
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 373
    :cond_0
    check-cast p0, Ljavax/lang/model/type/DeclaredType;

    .line 374
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/TypeElement;

    .line 375
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "java.lang.Object"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static javaLangSpelling(Ljavax/lang/model/util/Elements;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 2

    .line 251
    invoke-static {p2}, Lcom/google/auto/value/processor/TypeSimplifier;->topLevelType(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 253
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    .line 254
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_0

    const/16 p0, 0xa

    .line 255
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$actualTypeParametersString$0(Ljavax/lang/model/element/TypeParameterElement;)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$topLevelTypes$1(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 269
    invoke-interface {p0, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$topLevelTypes$2(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 270
    invoke-static {p0}, Lcom/google/auto/value/processor/TypeSimplifier;->topLevelType(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    return-object p0
.end method

.method private static nonPrivateDeclaredTypes(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 280
    new-instance p0, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-direct {p0}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>()V

    return-object p0

    .line 282
    :cond_0
    new-instance v0, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-direct {v0}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>()V

    .line 283
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {p0, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 287
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_2
    invoke-interface {p0, p1}, Ljavax/lang/model/util/Types;->directSupertypes(Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 292
    invoke-static {p0, v1}, Lcom/google/auto/value/processor/TypeSimplifier;->nonPrivateDeclaredTypes(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method static packageNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static simpleNameOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static topLevelType(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/TypeElement;
    .locals 2

    .line 158
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getNestingKind()Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/NestingKind;->TOP_LEVEL:Ljavax/lang/model/element/NestingKind;

    if-eq v0, v1, :cond_0

    .line 159
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static topLevelTypes(Ljavax/lang/model/util/Types;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda0;-><init>(Ljavax/lang/model/util/Types;)V

    .line 269
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda1;-><init>()V

    .line 270
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda12;-><init>()V

    .line 271
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static uncheckedTypeArgument(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3

    .line 358
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 359
    check-cast p0, Ljavax/lang/model/type/WildcardType;

    .line 360
    invoke-interface {p0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/TypeSimplifier;->isJavaLangObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method simplifiedClassName(Ljavax/lang/model/type/DeclaredType;)Ljava/lang/String;
    .locals 3

    .line 120
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/google/auto/value/processor/TypeSimplifier;->topLevelType(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/TypeSimplifier;->imports:Ljava/util/Map;

    .line 125
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeSimplifier;->imports:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;

    iget-object v0, v0, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;->spelling:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method typesToImport()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->naturalOrder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/TypeSimplifier;->imports:Ljava/util/Map;

    .line 111
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;

    iget-boolean v3, v3, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;->importIt:Z

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
