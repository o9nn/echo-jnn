.class public Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;
.super Ljava/lang/Object;
.source "MethodRebaseResolver.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForRebasedConstructor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor$RebasedConstructor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;
    .locals 2

    .line 360
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor$RebasedConstructor;

    invoke-direct {v1, p0, p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor$RebasedConstructor;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getAdditionalArguments()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 381
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    return-object v0
.end method

.method public getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isRebased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
