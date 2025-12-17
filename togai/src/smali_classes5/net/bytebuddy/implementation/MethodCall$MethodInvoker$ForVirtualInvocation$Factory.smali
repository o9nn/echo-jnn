.class public Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 2817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 2825
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2828
    new-instance p1, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation;

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object p1

    .line 2826
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not accessible to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
