.class public final Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;
.super Ljava/lang/Object;
.source "$GeneratedAnnotationSpecs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda2;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/SourceVersion;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda2;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/SourceVersion;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda4;

    invoke-direct {p1, p3}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotations;->generatedAnnotation(Ljavax/lang/model/util/Elements;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/SourceVersion;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotations;->generatedAnnotation(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpec$0(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
    .locals 2

    const-string v0, "$S"

    .line 54
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "comments"

    invoke-virtual {p1, v1, v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpec$1(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
    .locals 2

    const-string v0, "$S"

    .line 81
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "comments"

    invoke-virtual {p1, v1, v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpecBuilder$2(Ljava/lang/Class;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 2

    .line 89
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "value"

    const-string v1, "$S"

    invoke-virtual {p1, v0, v1, p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpecBuilder$3(Ljava/lang/Class;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 2

    .line 98
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "value"

    const-string v1, "$S"

    invoke-virtual {p1, v0, v1, p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p0

    return-object p0
.end method
