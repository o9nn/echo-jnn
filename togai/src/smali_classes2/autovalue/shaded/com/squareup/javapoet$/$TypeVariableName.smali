.class public final Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
.super Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
.source "$TypeVariableName.java"


# instance fields
.field public final bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/util/List;)V

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "name == null"

    .line 44
    invoke-static {p1, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->name:Ljava/lang/String;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->bounds:Ljava/util/List;

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 48
    invoke-virtual {p2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, p3

    :goto_1
    const-string v1, "invalid bound: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static get(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 1

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;[Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 0

    .line 94
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 0

    .line 99
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->list([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/reflect/TypeVariable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->get(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;"
        }
    .end annotation

    .line 155
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 159
    new-instance v2, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 160
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 162
    invoke-static {v4, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_0
    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method public static get(Ljavax/lang/model/element/TypeParameterElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 3

    .line 136
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p0

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 141
    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljavax/lang/model/type/TypeVariable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 0

    .line 104
    invoke-interface {p0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/TypeParameterElement;

    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->get(Ljavax/lang/model/element/TypeParameterElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljavax/lang/model/type/TypeVariable;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;"
        }
    .end annotation

    .line 117
    invoke-interface {p0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/TypeParameterElement;

    .line 118
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 124
    new-instance v2, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 125
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 127
    invoke-static {v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_0
    sget-object p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method private static of(Ljava/lang/String;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    sget-object p1, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    new-instance p1, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p1

    return-object p1
.end method

.method public annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;"
        }
    .end annotation

    .line 53
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->name:Ljava/lang/String;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->bounds:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->emitAnnotations(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->name:Ljava/lang/String;

    .line 84
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitAndIndent(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1
.end method

.method public withBounds(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->bounds:Ljava/util/List;

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    new-instance p1, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->name:Ljava/lang/String;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->annotations:Ljava/util/List;

    invoke-direct {p1, v1, v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public varargs withBounds([Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 0

    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->withBounds(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p1

    return-object p1
.end method

.method public varargs withBounds([Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 0

    .line 61
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->list([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->withBounds(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p1

    return-object p1
.end method

.method public withoutAnnotations()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 3

    .line 57
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->name:Ljava/lang/String;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->bounds:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
