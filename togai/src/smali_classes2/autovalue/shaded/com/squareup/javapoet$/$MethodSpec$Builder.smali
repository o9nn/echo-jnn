.class public final Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
.super Ljava/lang/Object;
.source "$MethodSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
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

.field private final code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field private defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field private final exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;"
        }
    .end annotation
.end field

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

.field private name:Ljava/lang/String;

.field public final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;"
        }
    .end annotation
.end field

.field private varargs:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 299
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->exceptions:Ljava/util/Set;

    .line 300
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->typeVariables:Ljava/util/List;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->annotations:Ljava/util/List;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->modifiers:Ljava/util/List;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    .line 310
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->setName(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$1;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 294
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 294
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Z
    .locals 0

    .line 294
    iget-boolean p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->varargs:Z

    return p0
.end method

.method static synthetic access$202(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Z)Z
    .locals 0

    .line 294
    iput-boolean p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->varargs:Z

    return p1
.end method

.method static synthetic access$300(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 294
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$400(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 294
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0
.end method

.method static synthetic access$402(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 294
    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p1
.end method

.method static synthetic access$500(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/util/Set;
    .locals 0

    .line 294
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->exceptions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 294
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object p0
.end method

.method static synthetic access$602(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 294
    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object p1
.end method


# virtual methods
.method public addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->annotations:Ljava/util/List;

    .line 341
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->annotations:Ljava/util/List;

    .line 346
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;"
        }
    .end annotation

    .line 351
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;"
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

    .line 333
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->annotations:Ljava/util/List;

    .line 335
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addCode(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 449
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addCode(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 439
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addComment(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "// "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public addException(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->exceptions:Ljava/util/Set;

    .line 430
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addException(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 0

    .line 435
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addException(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addExceptions(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "exceptions == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 422
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->exceptions:Ljava/util/Set;

    .line 424
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addJavadoc(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 328
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 323
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public addModifiers(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "modifiers == null"

    .line 361
    invoke-static {p1, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->modifiers:Ljava/util/List;

    .line 363
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "modifiers == null"

    .line 355
    invoke-static {p1, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->modifiers:Ljava/util/List;

    .line 356
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNamedCode(Ljava/lang/String;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 444
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addNamed(Ljava/lang/String;Ljava/util/Map;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public addParameter(Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    .line 400
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 0

    .line 405
    invoke-static {p1, p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 0

    .line 409
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addParameters(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "parameterSpecs == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 392
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    .line 394
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addStatement(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 530
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 525
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public addTypeVariable(Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->typeVariables:Ljava/util/List;

    .line 377
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariables(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string/jumbo v2, "typeVariables == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 369
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->typeVariables:Ljava/util/List;

    .line 371
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public beginControlFlow(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    const-string v0, "$L"

    .line 482
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 473
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 2

    .line 535
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$1;)V

    return-object v0
.end method

.method public defaultValue(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "defaultValue was already set"

    new-array v3, v1, [Ljava/lang/Object;

    .line 463
    invoke-static {v0, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "codeBlock == null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 464
    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object p0
.end method

.method public varargs defaultValue(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 0

    .line 459
    invoke-static {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->defaultValue(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 503
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public endControlFlow(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    const-string v0, "$L"

    .line 521
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 512
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public nextControlFlow(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    const-string v0, "$L"

    .line 499
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 490
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->name:Ljava/lang/String;

    const-string v1, "<init>"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "constructor cannot have return type."

    invoke-static {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0
.end method

.method public returns(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 0

    .line 388
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "name == null"

    .line 314
    invoke-static {p1, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<init>"

    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v2, "not a valid name: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->name:Ljava/lang/String;

    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    sget-object p1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->VOID:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    :goto_0
    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0
.end method

.method public varargs()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->varargs(Z)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs(Z)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->varargs:Z

    return-object p0
.end method
