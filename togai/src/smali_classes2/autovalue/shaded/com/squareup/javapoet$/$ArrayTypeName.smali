.class public final Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
.super Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
.source "$ArrayTypeName.java"


# instance fields
.field public final componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "rawType == null"

    .line 39
    invoke-static {p1, v0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-void
.end method

.method private emitBrackets(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->isAnnotated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    .line 68
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 69
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->emitAnnotations(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 72
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->asArray(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object v0

    const-string v1, "[]"

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const-string v1, "..."

    .line 74
    :cond_1
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1

    .line 76
    :cond_2
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 77
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->asArray(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->emitBrackets(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1
.end method

.method private emitLeafType(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 60
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->asArray(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 61
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->asArray(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object v0

    invoke-direct {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->emitLeafType(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 63
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1
.end method

.method public static get(Ljava/lang/reflect/GenericArrayType;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 1

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->get(Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;"
        }
    .end annotation

    .line 107
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->get(Ljava/lang/reflect/Type;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->of(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljavax/lang/model/type/ArrayType;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 1

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->get(Ljavax/lang/model/type/ArrayType;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljavax/lang/model/type/ArrayType;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ArrayType;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;"
        }
    .end annotation

    .line 98
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    invoke-interface {p0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->get(Ljavax/lang/model/type/TypeMirror;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    invoke-direct {v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)V

    return-object v0
.end method

.method public static of(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 1

    .line 83
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 0

    .line 88
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->of(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;"
        }
    .end annotation

    .line 43
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->concatAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p1

    return-object p1
.end method

.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1
.end method

.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->emitLeafType(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 56
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->emitBrackets(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p1

    return-object p1
.end method

.method public withoutAnnotations()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 2

    .line 47
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;->componentType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)V

    return-object v0
.end method
