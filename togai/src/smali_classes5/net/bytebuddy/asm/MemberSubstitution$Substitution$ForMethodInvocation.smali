.class public Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMethodInvocation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfGivenMethod;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfInstrumentedMethod;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final THIS_REFERENCE:I


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methodResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;)V
    .locals 0

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->methodResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->methodResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->methodResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->methodResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->methodResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;

    .line 1076
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1077
    invoke-interface {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1080
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1081
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    .line 1082
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    .line 1083
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1085
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result p4

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result v0

    const-string v1, " on "

    const-string v2, "Cannot invoke "

    if-ne p4, v0, :cond_4

    const/4 p4, 0x0

    move v0, p4

    .line 1088
    :goto_1
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1089
    invoke-interface {p2, v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1090
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1093
    :cond_2
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isVirtual()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1094
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p1

    invoke-interface {p2, p4}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    goto :goto_2

    .line 1095
    :cond_3
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p1

    :goto_2
    return-object p1

    .line 1086
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1084
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot assign return value of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1078
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " cannot access "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
