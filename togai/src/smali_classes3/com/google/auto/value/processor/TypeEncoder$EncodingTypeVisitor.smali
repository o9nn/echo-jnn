.class Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "TypeEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/TypeEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodingTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/lang/StringBuilder;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/value/processor/TypeEncoder$1;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method appendTypeArguments(Ljavax/lang/model/type/DeclaredType;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 283
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    .line 284
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<"

    .line 285
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0, v1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visit2(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    goto :goto_0

    :cond_0
    const-string p1, ">"

    .line 292
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method appendTypeName(Ljavax/lang/model/type/DeclaredType;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 267
    invoke-static {p1}, Lcom/google/auto/value/processor/EclipseHack;->getEnclosingType(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1, v2}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0, v0, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visit2(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v0, "."

    .line 276
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    .line 278
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/google/auto/value/processor/TypeEncoder;->access$200(Ljavax/lang/model/type/DeclaredType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 251
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method visit2(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 240
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 245
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 256
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visit2(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->appendTypeName(Ljavax/lang/model/type/DeclaredType;Ljava/lang/StringBuilder;)V

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->appendTypeArguments(Ljavax/lang/model/type/DeclaredType;Ljava/lang/StringBuilder;)V

    return-object p2
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 313
    new-instance p2, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;

    invoke-direct {p2, p1}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;-><init>(Ljavax/lang/model/type/ErrorType;)V

    throw p2
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const-string v0, "?"

    .line 298
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 300
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, " super "

    .line 302
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visit2(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, " extends "

    .line 305
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0, v0, p2}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;->visit2(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-object p2
.end method
