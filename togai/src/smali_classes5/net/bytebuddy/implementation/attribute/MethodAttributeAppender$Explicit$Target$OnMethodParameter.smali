.class public Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;
.super Ljava/lang/Object;
.source "MethodAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMethodParameter"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final parameterIndex:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;->parameterIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;->parameterIndex:I

    check-cast p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;

    iget p1, p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;->parameterIndex:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;->parameterIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;->parameterIndex:I

    .line 376
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 379
    new-instance p2, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;

    iget v0, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;->parameterIndex:I

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;I)V

    return-object p2

    .line 377
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " has less then "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;->parameterIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " parameters"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
