.class public final Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
.super Ljava/lang/Object;
.source "$MethodSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR:Ljava/lang/String; = "<init>"


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

.field public final code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field public final defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field public final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            ">;"
        }
    .end annotation
.end field

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

.field public final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field public final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;"
        }
    .end annotation
.end field

.field public final varargs:Z


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)V
    .locals 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$000(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->modifiers:Ljava/util/List;

    sget-object v4, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 61
    :goto_1
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$100(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "abstract method %s cannot have code"

    .line 60
    invoke-static {v1, v5, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$200(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    invoke-direct {p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->lastParameterIsArray(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 63
    :cond_3
    :goto_2
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$100(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "last parameter of varargs method %s must be an array"

    .line 62
    invoke-static {v2, v4, v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$100(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name == null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$300(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 67
    iget-object v1, p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->annotations:Ljava/util/List;

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->annotations:Ljava/util/List;

    .line 68
    iget-object v1, p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->modifiers:Ljava/util/Set;

    .line 69
    iget-object v1, p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->typeVariables:Ljava/util/List;

    .line 70
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$400(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 71
    iget-object v1, p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->parameters:Ljava/util/List;

    .line 72
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$200(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->varargs:Z

    .line 73
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$500(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->exceptions:Ljava/util/List;

    .line 74
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$600(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)V

    return-void
.end method

.method public static constructorBuilder()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3

    .line 192
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    const-string v1, "<init>"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$1;)V

    return-object v0
.end method

.method private javadocWithParameters()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 6

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 144
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->toBuilder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->parameters:Ljava/util/List;

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;

    .line 147
    iget-object v4, v3, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    invoke-virtual {v4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 149
    invoke-virtual {v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\n"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 151
    :cond_1
    iget-object v2, v3, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->name:Ljava/lang/String;

    iget-object v3, v3, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "@param $L $L"

    invoke-virtual {v0, v3, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move v2, v4

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method

.method private lastParameterIsArray(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;",
            ">;)Z"
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;

    iget-object p1, p1, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->asArray(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ArrayTypeName;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 2

    .line 188
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$1;)V

    return-object v0
.end method

.method public static overriding(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "method == null"

    .line 205
    invoke-static {p0, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    .line 213
    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    .line 214
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 215
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v1

    .line 222
    const-class v2, Ljava/lang/Override;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 224
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 225
    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Ljavax/lang/model/element/Modifier;->DEFAULT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addModifiers(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 229
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    .line 230
    invoke-interface {v2}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    .line 231
    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->get(Ljavax/lang/model/type/TypeVariable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addTypeVariable(Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 235
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->parametersOf(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameters(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 236
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v0

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->varargs(Z)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 238
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 239
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addException(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    goto :goto_1

    :cond_1
    return-object v1

    .line 216
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot override method with modifiers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot override method on final class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static overriding(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/util/Types;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 7

    .line 259
    invoke-interface {p2, p1, p0}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/ExecutableType;

    .line 260
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object p2

    .line 261
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 264
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->overriding(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p0

    .line 265
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 266
    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 267
    iget-object v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;

    .line 268
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v4}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v4

    .line 269
    iget-object v5, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    iget-object v6, v3, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->toBuilder(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$500(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-static {p2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addException(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method


# virtual methods
.method emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;",
            "Ljava/lang/String;",
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

    .line 85
    invoke-direct {p0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->javadocWithParameters()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitJavadoc(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->annotations:Ljava/util/List;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitAnnotations(Ljava/util/List;Z)V

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->modifiers:Ljava/util/Set;

    .line 87
    invoke-virtual {p1, v0, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitModifiers(Ljava/util/Set;Ljava/util/Set;)V

    iget-object p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->typeVariables:Ljava/util/List;

    .line 89
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->typeVariables:Ljava/util/List;

    .line 90
    invoke-virtual {p1, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitTypeVariables(Ljava/util/List;)V

    const-string p3, " "

    .line 91
    invoke-virtual {p1, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 94
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->isConstructor()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "$L($Z"

    .line 95
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iget-object p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    .line 97
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "$T $L($Z"

    invoke-virtual {p1, p3, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    :goto_0
    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->parameters:Ljava/util/List;

    .line 101
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x1

    move v0, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_4

    .line 102
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitWrappingSpace()Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 104
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->varargs:Z

    if-eqz v0, :cond_3

    move v0, p3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterSpec;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Z)V

    move v0, v1

    goto :goto_1

    :cond_4
    const-string p2, ")"

    .line 108
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    if-eqz p2, :cond_5

    .line 110
    invoke-virtual {p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, " default "

    .line 111
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 112
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    :cond_5
    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->exceptions:Ljava/util/List;

    .line 115
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 116
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitWrappingSpace()Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object p2

    const-string/jumbo v0, "throws"

    invoke-virtual {p2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->exceptions:Ljava/util/List;

    .line 118
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, p3

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    if-nez v0, :cond_6

    .line 119
    invoke-virtual {p1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 120
    :cond_6
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emitWrappingSpace()Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move-result-object v0

    const-string v4, "$T"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    move v0, v1

    goto :goto_3

    .line 125
    :cond_7
    sget-object p2, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {p0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result p2

    const-string v0, ";\n"

    if-eqz p2, :cond_8

    .line 126
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    goto :goto_4

    .line 127
    :cond_8
    sget-object p2, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    invoke-virtual {p0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 129
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 130
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    goto :goto_4

    :cond_9
    const-string p2, " {\n"

    .line 132
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 134
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->indent()Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 135
    invoke-virtual {p1, p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Z)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    .line 136
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->unindent()Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    const-string/jumbo p2, "}\n"

    .line 138
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->emit(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    :goto_4
    iget-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->typeVariables:Ljava/util/List;

    .line 140
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;->popTypeVariables(Ljava/util/List;)V

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

    .line 168
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasModifier(Ljavax/lang/model/element/Modifier;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->modifiers:Ljava/util/Set;

    .line 158
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 173
    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    const-string v1, "<init>"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toBuilder()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;
    .locals 3

    .line 280
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$1;)V

    .line 281
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$300(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->javadoc:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 282
    iget-object v1, v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->annotations:Ljava/util/List;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->annotations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v1, v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->modifiers:Ljava/util/List;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object v1, v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->typeVariables:Ljava/util/List;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->typeVariables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->returnType:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 285
    invoke-static {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$402(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 286
    iget-object v1, v0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->parameters:Ljava/util/List;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->parameters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$500(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->exceptions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$000(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->code:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    iget-boolean v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->varargs:Z

    .line 289
    invoke-static {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$202(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Z)Z

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->defaultValue:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    .line 290
    invoke-static {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->access$602(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    :try_start_0
    new-instance v1, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;-><init>(Ljava/lang/Appendable;)V

    const-string v2, "Constructor"

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->emit(Lautovalue/shaded/com/squareup/javapoet$/$CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 183
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
