.class public final Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
.super Ljava/lang/Object;
.source "$FieldSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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

.field private initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field private final javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field public final modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->annotations:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->modifiers:Ljava/util/List;

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 109
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0
.end method

.method static synthetic access$100(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 109
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$300(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 109
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object p0
.end method

.method static synthetic access$302(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 109
    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object p1
.end method


# virtual methods
.method public addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->annotations:Ljava/util/List;

    .line 143
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->annotations:Ljava/util/List;

    .line 148
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "annotationSpecs == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->annotations:Ljava/util/List;

    .line 137
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addJavadoc(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 130
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 125
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->modifiers:Ljava/util/List;

    .line 157
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
    .locals 2

    .line 172
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$1;)V

    return-object v0
.end method

.method public initializer(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "initializer was already set"

    new-array v3, v1, [Ljava/lang/Object;

    .line 166
    invoke-static {v0, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "codeBlock == null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object p0
.end method

.method public varargs initializer(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 0

    .line 162
    invoke-static {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->initializer(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object p1

    return-object p1
.end method
