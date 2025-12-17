.class public Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Bound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->this$0:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    .line 1847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->name:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->name:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->this$0:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->this$0:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->this$0:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public lookup()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->this$0:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    .line 1855
    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->access$600(Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->this$0:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->access$500(Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    .line 1856
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 1857
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;->name:Ljava/lang/String;

    .line 1858
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 1859
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 1860
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 1861
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 1862
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 1863
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
