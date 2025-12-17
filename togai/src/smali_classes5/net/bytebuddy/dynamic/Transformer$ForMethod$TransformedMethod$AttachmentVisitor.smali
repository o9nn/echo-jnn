.class public Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$WithoutTypeSubstitution;
.source "Transformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AttachmentVisitor"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->this$0:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    .line 581
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$WithoutTypeSubstitution;-><init>()V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->this$0:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    check-cast p1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->this$0:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->this$0:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 580
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->this$0:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    .line 587
    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeList$Generic;

    .line 588
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->this$0:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    .line 589
    invoke-static {v0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->access$200(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->findVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    if-eqz v0, :cond_1

    .line 594
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$WithAnnotationOverlay;

    invoke-direct {v1, v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$WithAnnotationOverlay;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-object v1

    .line 592
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot attach undefined variable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
