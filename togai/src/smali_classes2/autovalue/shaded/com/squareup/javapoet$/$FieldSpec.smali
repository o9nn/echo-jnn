.class public final Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
.super Ljava/lang/Object;
.source "$FieldSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    }
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

.field public final initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field public final javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field public final modifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->access$000(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "type == null"

    invoke-static {v0, v3, v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 42
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->access$100(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "name == null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->name:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->access$200(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 44
    iget-object v0, p1, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->annotations:Ljava/util/List;

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->annotations:Ljava/util/List;

    .line 45
    iget-object v0, p1, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->modifiers:Ljava/util/Set;

    .line 46
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->access$300(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->access$300(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)V

    return-void
.end method

.method public static varargs builder(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "type == null"

    .line 90
    invoke-static {p0, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "not a valid name: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$1;)V

    .line 93
    invoke-virtual {v0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 0

    .line 97
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 56
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitJavadoc(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->annotations:Ljava/util/List;

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitAnnotations(Ljava/util/List;Z)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->modifiers:Ljava/util/Set;

    .line 58
    invoke-virtual {p1, v0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitModifiers(Ljava/util/Set;Ljava/util/Set;)V

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->name:Ljava/lang/String;

    .line 59
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "$T $L"

    invoke-virtual {p1, v0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 60
    invoke-virtual {p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, " = "

    .line 61
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 62
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    :cond_0
    const-string p2, ";\n"

    .line 64
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

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

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasModifier(Ljavax/lang/model/element/Modifier;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->modifiers:Ljava/util/Set;

    .line 52
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBuilder()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;
    .locals 4

    .line 101
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$1;)V

    .line 102
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->access$200(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 103
    iget-object v1, v0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->annotations:Ljava/util/List;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->annotations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v1, v0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->modifiers:Ljava/util/List;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 105
    invoke-virtual {v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->initializer:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    :goto_0
    invoke-static {v0, v3}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->access$302(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :try_start_0
    new-instance v1, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;-><init>(Ljava/lang/Appendable;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Ljava/util/Set;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
