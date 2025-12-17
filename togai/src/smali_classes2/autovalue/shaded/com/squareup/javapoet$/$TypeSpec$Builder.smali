.class public final Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
.super Ljava/lang/Object;
.source "$TypeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final alwaysQualifiedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousTypeArguments:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field public final enumConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final initializerBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field private final javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field private final kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

.field public final methodSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;",
            ">;"
        }
    .end annotation
.end field

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

.field public final originatingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final staticBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field private superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public final superinterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final typeSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)V
    .locals 3

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 415
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 416
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->staticBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 417
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->initializerBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 419
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->annotations:Ljava/util/List;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->modifiers:Ljava/util/List;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeVariables:Ljava/util/List;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->originatingElements:Ljava/util/List;

    .line 428
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->alwaysQualifiedNames:Ljava/util/Set;

    if-eqz p2, :cond_1

    .line 432
    invoke-static {p2}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

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
    const-string v1, "not a valid name: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    iput-object p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->anonymousTypeArguments:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$1;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)V

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;
    .locals 0

    .line 409
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    return-object p0
.end method

.method static synthetic access$100(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 409
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 409
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->anonymousTypeArguments:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object p0
.end method

.method static synthetic access$300(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 409
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$400(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 409
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0
.end method

.method static synthetic access$402(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 409
    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p1
.end method

.method static synthetic access$500(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 409
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->staticBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$600(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 409
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->initializerBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method private getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 556
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 557
    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 558
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 559
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "annotationSpec == null"

    .line 457
    invoke-static {p1, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->annotations:Ljava/util/List;

    .line 458
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 0

    .line 463
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotation(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
        }
    .end annotation

    .line 467
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
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

    .line 449
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->annotations:Ljava/util/List;

    .line 451
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addEnumConstant(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    .line 581
    invoke-static {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->anonymousClassBuilder(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addEnumConstant(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addEnumConstant(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    .line 585
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addField(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    .line 598
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addField(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 0

    .line 603
    invoke-static {p1, p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addField(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addField(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 0

    .line 607
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addField(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFields(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "fieldSpecs == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 590
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    .line 592
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addField(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addInitializerBlock(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 616
    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->CLASS:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ENUM:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can\'t have initializer blocks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->initializerBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    const-string/jumbo v1, "{\n"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 619
    invoke-virtual {v0, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->indent()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    .line 622
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->unindent()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    const-string/jumbo v0, "}\n"

    new-array v1, v2, [Ljava/lang/Object;

    .line 623
    invoke-virtual {p1, v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public addJavadoc(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 444
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 439
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    .line 636
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMethods(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "methodSpecs == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 628
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    .line 630
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->modifiers:Ljava/util/List;

    .line 471
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOriginatingElement(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->originatingElements:Ljava/util/List;

    .line 654
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addStaticBlock(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->staticBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "static"

    .line 611
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public addSuperinterface(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "superinterface == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 535
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    .line 536
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSuperinterface(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addSuperinterface(Ljava/lang/reflect/Type;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSuperinterface(Ljava/lang/reflect/Type;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    .line 545
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addSuperinterface(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 547
    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    :cond_0
    return-object p0
.end method

.method public addSuperinterface(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 566
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addSuperinterface(Ljavax/lang/model/type/TypeMirror;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSuperinterface(Ljavax/lang/model/type/TypeMirror;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    .line 571
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addSuperinterface(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 572
    instance-of p2, p1, Ljavax/lang/model/type/DeclaredType;

    if-eqz p2, :cond_0

    .line 573
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    .line 574
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 575
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    :cond_0
    return-object p0
.end method

.method public addSuperinterfaces(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "superinterfaces == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 527
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 529
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addSuperinterface(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addType(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    .line 649
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariable(Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeVariables:Ljava/util/List;

    .line 484
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariables(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
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

    .line 476
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 477
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeVariables:Ljava/util/List;

    .line 478
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addTypes(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string/jumbo v2, "typeSpecs == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 641
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 642
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    .line 643
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addType(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs alwaysQualify([Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "simpleNames == null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 659
    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 660
    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v1

    .line 664
    :goto_2
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null entry in simpleNames array: %s"

    .line 661
    invoke-static {v5, v7, v6}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->alwaysQualifiedNames:Ljava/util/Set;

    .line 666
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public avoidClashesWithNestedClasses(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "clazz == null"

    new-array v3, v0, [Ljava/lang/Object;

    .line 740
    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 741
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 742
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->alwaysQualify([Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 744
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 745
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 746
    invoke-virtual {p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    .line 748
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 749
    invoke-virtual {p0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string/jumbo v2, "typeElement == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 696
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 698
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->alwaysQualify([Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    goto :goto_1

    .line 700
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 701
    instance-of v1, v0, Ljavax/lang/model/type/NoType;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljavax/lang/model/type/DeclaredType;

    if-eqz v1, :cond_2

    .line 702
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 703
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    .line 705
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 706
    instance-of v1, v0, Ljavax/lang/model/type/DeclaredType;

    if-eqz v1, :cond_3

    .line 707
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 708
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 709
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public build()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;
    .locals 11

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->annotations:Ljava/util/List;

    .line 755
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    const-string v3, "annotationSpec == null"

    new-array v2, v2, [Ljava/lang/Object;

    .line 756
    invoke-static {v1, v3, v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->modifiers:Ljava/util/List;

    .line 759
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->anonymousTypeArguments:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "forbidden on anonymous types."

    new-array v4, v2, [Ljava/lang/Object;

    .line 760
    invoke-static {v0, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->modifiers:Ljava/util/List;

    .line 761
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Modifier;

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    const-string v4, "modifiers contain null"

    new-array v5, v2, [Ljava/lang/Object;

    .line 762
    invoke-static {v3, v4, v5}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 766
    sget-object v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ENUM:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    :goto_5
    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "at least one enum constant is required for %s"

    invoke-static {v0, v4, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    .line 769
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_7

    :cond_6
    move v3, v2

    :goto_7
    const-string v4, "superinterfaces contains null"

    new-array v5, v2, [Ljava/lang/Object;

    .line 770
    invoke-static {v3, v4, v5}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeVariables:Ljava/util/List;

    .line 773
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->anonymousTypeArguments:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    const-string/jumbo v3, "typevariables are forbidden on anonymous types."

    new-array v4, v2, [Ljava/lang/Object;

    .line 774
    invoke-static {v0, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeVariables:Ljava/util/List;

    .line 776
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    const-string/jumbo v4, "typeVariables contain null"

    new-array v5, v2, [Ljava/lang/Object;

    .line 777
    invoke-static {v3, v4, v5}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    .line 781
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 782
    sget-object v5, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ENUM:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-ne v4, v5, :cond_b

    move v4, v1

    goto :goto_c

    :cond_b
    move v4, v2

    :goto_c
    iget-object v5, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s is not enum"

    invoke-static {v4, v6, v5}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 783
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    iget-object v3, v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->anonymousTypeArguments:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    const-string v4, "enum constants must have anonymous type arguments"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    .line 785
    invoke-static {v3}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v4, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "not a valid enum constant: %s"

    invoke-static {v3, v5, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_d
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    .line 788
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "%s %s.%s requires modifiers %s"

    const/4 v5, 0x2

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 789
    sget-object v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->INTERFACE:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-eq v6, v7, :cond_f

    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    sget-object v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ANNOTATION:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-ne v6, v7, :cond_e

    .line 790
    :cond_f
    iget-object v6, v3, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->modifiers:Ljava/util/Set;

    new-array v5, v5, [Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v7, v5, v2

    sget-object v7, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v7, v5, v1

    invoke-static {v6, v5}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    .line 791
    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 792
    iget-object v6, v3, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    iget-object v7, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    iget-object v8, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    iget-object v3, v3, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->name:Ljava/lang/String;

    filled-new-array {v7, v8, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_10
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    .line 797
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 798
    sget-object v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->INTERFACE:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-ne v6, v7, :cond_12

    .line 799
    iget-object v6, v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->modifiers:Ljava/util/Set;

    const/4 v7, 0x3

    new-array v7, v7, [Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v8, v7, v2

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v8, v7, v1

    sget-object v8, Ljavax/lang/model/element/Modifier;->DEFAULT:Ljavax/lang/model/element/Modifier;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    .line 801
    iget-object v6, v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->modifiers:Ljava/util/Set;

    new-array v7, v5, [Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v8, v7, v2

    sget-object v8, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    goto :goto_10

    :cond_12
    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 802
    sget-object v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ANNOTATION:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-ne v6, v7, :cond_13

    .line 803
    iget-object v6, v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->modifiers:Ljava/util/Set;

    iget-object v7, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    invoke-static {v7}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->access$1000(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    iget-object v8, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    iget-object v9, v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    iget-object v10, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 805
    invoke-static {v10}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->access$1000(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v10

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    .line 803
    invoke-static {v6, v4, v7}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_10
    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 807
    sget-object v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->ANNOTATION:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-eq v6, v7, :cond_15

    .line 808
    iget-object v6, v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    if-nez v6, :cond_14

    move v6, v1

    goto :goto_11

    :cond_14
    move v6, v2

    :goto_11
    iget-object v7, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    iget-object v8, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    iget-object v9, v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s %s.%s cannot have a default value"

    invoke-static {v6, v8, v7}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 811
    sget-object v7, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->INTERFACE:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-eq v6, v7, :cond_11

    .line 812
    sget-object v6, Ljavax/lang/model/element/Modifier;->DEFAULT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v3, v6}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result v6

    xor-int/2addr v6, v1

    iget-object v7, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    iget-object v8, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    iget-object v3, v3, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    filled-new-array {v7, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v7, "%s %s.%s cannot be default"

    invoke-static {v6, v7, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_16
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    .line 817
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    .line 818
    iget-object v5, v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->modifiers:Ljava/util/Set;

    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    invoke-static {v6}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->access$1100(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    iget-object v7, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    iget-object v3, v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->name:Ljava/lang/String;

    iget-object v8, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 820
    invoke-static {v8}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->access$1100(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v8

    filled-new-array {v6, v7, v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    .line 818
    invoke-static {v5, v4, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_17
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->modifiers:Ljava/util/List;

    .line 823
    sget-object v3, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    sget-object v3, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->CLASS:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    if-eq v0, v3, :cond_18

    goto :goto_13

    :cond_18
    move v0, v2

    goto :goto_14

    :cond_19
    :goto_13
    move v0, v1

    :goto_14
    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    .line 824
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    if-nez v0, :cond_1b

    .line 825
    sget-object v5, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v4, v5}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_16

    :cond_1a
    move v5, v2

    goto :goto_17

    :cond_1b
    :goto_16
    move v5, v1

    :goto_17
    iget-object v6, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->name:Ljava/lang/String;

    iget-object v4, v4, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "non-abstract type %s cannot declare abstract method %s"

    invoke-static {v5, v6, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_1c
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 829
    sget-object v3, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    invoke-virtual {v0, v3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    .line 830
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->anonymousTypeArguments:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    if-eqz v3, :cond_1e

    if-gt v0, v1, :cond_1d

    goto :goto_18

    :cond_1d
    move v1, v2

    :cond_1e
    :goto_18
    const-string v0, "anonymous type has too many supertypes"

    new-array v2, v2, [Ljava/lang/Object;

    .line 831
    invoke-static {v1, v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 834
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$1;)V

    return-object v0
.end method

.method public superclass(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 5

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    .line 489
    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;->CLASS:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "only classes have super classes, not "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->kind:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Kind;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 490
    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "superclass already set to "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->isPrimitive()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "superclass may not be a primitive"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    return-object p0
.end method

.method public superclass(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass(Ljava/lang/reflect/Type;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public superclass(Ljava/lang/reflect/Type;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    .line 502
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 504
    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    :cond_0
    return-object p0
.end method

.method public superclass(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 513
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass(Ljavax/lang/model/type/TypeMirror;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public superclass(Ljavax/lang/model/type/TypeMirror;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    .line 517
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 518
    instance-of p2, p1, Ljavax/lang/model/type/DeclaredType;

    if-eqz p2, :cond_0

    .line 519
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    .line 520
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 521
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    :cond_0
    return-object p0
.end method
