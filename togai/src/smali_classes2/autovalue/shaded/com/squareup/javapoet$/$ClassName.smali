.class public final Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
.super Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
.source "$ClassName.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
        "Ljava/lang/Comparable<",
        "Lautovalue/shaded/com/squareup/javapoet$/$ClassName;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_PACKAGE:Ljava/lang/String; = ""

.field public static final OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;


# instance fields
.field final canonicalName:Ljava/lang/String;

.field final enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field final packageName:Ljava/lang/String;

.field final simpleName:Ljava/lang/String;

.field private simpleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/squareup/javapoet$/$ClassName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p4}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/util/List;)V

    const-string p4, "packageName == null"

    .line 60
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    iput-object p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    const/16 p4, 0x2e

    if-eqz p2, :cond_0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->canonicalName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->canonicalName:Ljava/lang/String;

    return-void
.end method

.method public static bestGuess(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 197
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "couldn\'t make a guess for %s"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    .line 198
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/2addr v1, v4

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    .line 199
    :goto_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 201
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\\."

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v0

    :goto_3
    if-ge v7, v5, :cond_4

    aget-object v8, v1, v7

    .line 206
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v4

    goto :goto_4

    :cond_3
    move v9, v0

    :goto_4
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v3, v10}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    new-instance v9, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-direct {v9, v2, v6, v8}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object v6, v9

    goto :goto_3

    :cond_4
    return-object v6
.end method

.method private enclosingClasses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$ClassName;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, v1, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$ClassName;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "clazz == null"

    .line 163
    invoke-static {p0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "primitive types cannot be represented as a ClassName"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 165
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "\'void\' type cannot be represented as a ClassName"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "array types cannot be represented as a ClassName"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    move-object v2, v1

    .line 169
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 174
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_2

    .line 178
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 179
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_1
    new-instance p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V

    return-object p0

    .line 183
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p0

    invoke-virtual {p0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->nestedClass(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 2

    .line 219
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V

    .line 220
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    aget-object v1, p2, p1

    .line 221
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->nestedClass(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static get(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "element == null"

    .line 228
    invoke-static {p0, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    new-instance v2, Lautovalue/shaded/com/squareup/javapoet$/$ClassName$1;

    invoke-direct {v2, v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName$1;-><init>(Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V

    const/4 p0, 0x0

    invoke-interface {v1, v2, p0}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object p0
.end method


# virtual methods
.method public annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$ClassName;"
        }
    .end annotation

    .line 69
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->concatAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    return-object p1
.end method

.method public canonicalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->canonicalName:Ljava/lang/String;

    .line 251
    iget-object p1, p1, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->compareTo(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)I

    move-result p1

    return p1
.end method

.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClasses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v5, "."

    .line 260
    invoke-virtual {p1, v5}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 261
    iget-object v5, v3, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->isAnnotated()Z

    move-result v5

    if-nez v5, :cond_2

    if-ne v3, p0, :cond_0

    .line 265
    :cond_2
    invoke-virtual {p1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->lookupName(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 268
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitAndIndent(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move v2, v4

    .line 280
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->isAnnotated()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_4

    const-string v2, " "

    .line 281
    invoke-virtual {p1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 282
    :cond_4
    invoke-virtual {v3, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->emitAnnotations(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 285
    :cond_5
    invoke-virtual {p1, v5}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move v2, v4

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method public enclosingClassName()Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    return-object v0
.end method

.method public isAnnotated()Z
    .locals 1

    .line 82
    invoke-super {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->isAnnotated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->isAnnotated()Z

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

.method public nestedClass(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 2

    .line 146
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public peerClass(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 3

    .line 138
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-direct {v0, v1, v2, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V

    return-object v0
.end method

.method public reflectionName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-virtual {v1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->reflectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public simpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public simpleNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleNames:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleNames:Ljava/util/List;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName()Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleNames:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleNames:Ljava/util/List;

    return-object v0
.end method

.method public topLevelClassName()Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->topLevelClassName()Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public withoutAnnotations()Lautovalue/shaded/com/squareup/javapoet$/$ClassName;
    .locals 4

    .line 74
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->isAnnotated()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->enclosingClassName:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->withoutAnnotations()Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_0
    new-instance v1, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->simpleName:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic withoutAnnotations()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->withoutAnnotations()Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    return-object v0
.end method
