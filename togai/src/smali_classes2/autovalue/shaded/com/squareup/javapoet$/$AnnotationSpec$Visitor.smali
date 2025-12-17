.class Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;
.source "$AnnotationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor8<",
        "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final builder:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->builder:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljava/lang/Object;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->builder:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    .line 260
    invoke-virtual {v0, p2, p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMemberForValue(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->defaultAction(Ljava/lang/Object;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->builder:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    .line 264
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->get(Ljavax/lang/model/element/AnnotationMirror;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "$L"

    invoke-virtual {v0, p2, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;"
        }
    .end annotation

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    .line 277
    invoke-interface {v0, p0, p2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->builder:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->visitArray(Ljava/util/List;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->builder:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    .line 268
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "$T.$L"

    invoke-virtual {v0, p2, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->builder:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    const-string v1, "$T.class"

    .line 272
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Visitor;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method
