.class public final Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
.super Ljava/lang/Object;
.source "$AnnotationSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;,
        Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    }
.end annotation


# instance fields
.field public final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            ">;>;"
        }
    .end annotation
.end field

.field public final type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;


# direct methods
.method public static synthetic $r8$lambda$jpcLOQ8cQshoXiWHXAifvXiiquQ(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->access$000(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 50
    iget-object p1, p1, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->members:Ljava/util/Map;

    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableMultimap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->members:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)V

    return-void
.end method

.method public static builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "type == null"

    .line 155
    invoke-static {p0, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$1;)V

    return-object v0
.end method

.method public static builder(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method private emitAnnotationValues(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 90
    invoke-virtual {p1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->indent(I)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 91
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 92
    invoke-virtual {p1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->unindent(I)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 97
    invoke-virtual {p1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->indent(I)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 99
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    if-nez v3, :cond_1

    .line 100
    invoke-virtual {p1, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 101
    :cond_1
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move v3, v1

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->unindent(I)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    return-void
.end method

.method public static get(Ljava/lang/annotation/Annotation;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->get(Ljava/lang/annotation/Annotation;Z)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/annotation/Annotation;Z)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
    .locals 10

    .line 113
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object v0

    .line 115
    :try_start_0
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    new-instance v2, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 117
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    new-array v6, v3, [Ljava/lang/Object;

    .line 118
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez p1, :cond_0

    .line 120
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    .line 125
    :goto_1
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 126
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMemberForValue(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 130
    :cond_1
    instance-of v7, v6, Ljava/lang/annotation/Annotation;

    if-eqz v7, :cond_2

    .line 131
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "$L"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    check-cast v6, Ljava/lang/annotation/Annotation;

    invoke-static {v6}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->get(Ljava/lang/annotation/Annotation;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object v6

    aput-object v6, v8, v3

    invoke-virtual {v0, v5, v7, v8}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    goto :goto_2

    .line 134
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMemberForValue(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reflecting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " failed!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static get(Ljavax/lang/model/element/AnnotationMirror;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
    .locals 6

    .line 143
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 144
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object v0

    .line 145
    new-instance v1, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)V

    .line 146
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 147
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationValue;

    .line 149
    invoke-interface {v3, v1, v4}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, ", "

    goto :goto_1

    :cond_1
    const-string p2, ",\n"

    :goto_1
    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->members:Ljava/util/Map;

    .line 56
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 58
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "@$T"

    invoke-virtual {p1, v0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->members:Ljava/util/Map;

    .line 59
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, ")"

    const-string v4, "@$T("

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->members:Ljava/util/Map;

    const-string/jumbo v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 61
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->members:Ljava/util/Map;

    .line 62
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p1, v0, p2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->emitAnnotationValues(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 63
    invoke-virtual {p1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    const/4 v1, 0x2

    .line 74
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->indent(I)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->members:Ljava/util/Map;

    .line 76
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "$L = "

    invoke-virtual {p1, v6, v5}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, p1, v0, p2, v4}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->emitAnnotationValues(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->unindent(I)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    :goto_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBuilder()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 6

    .line 164
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$1;)V

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->members:Ljava/util/Map;

    .line 165
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    iget-object v3, v0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->members:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    :try_start_0
    new-instance v1, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;-><init>(Ljava/lang/Appendable;)V

    const-string v2, "$L"

    .line 186
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
