.class public Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;
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
    name = "ForFieldAccess"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfGivenField;,
        Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;)V
    .locals 0

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->fieldResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->fieldResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->fieldResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->fieldResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->fieldResolver:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;

    .line 864
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 865
    invoke-interface {p1, p2}, Lnet/bytebuddy/description/field/FieldDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 867
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p4, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    const-string v0, " on "

    const-string v1, " with "

    const/4 v2, 0x0

    const-string v3, "Cannot set "

    const/4 v4, 0x1

    if-eqz p2, :cond_5

    .line 868
    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result p2

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result p4

    if-eqz p4, :cond_0

    move p4, v4

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    :goto_0
    if-ne p2, p4, :cond_4

    .line 870
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p3, v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p4

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p4

    invoke-interface {p2, p4}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 871
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p3, v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 872
    :cond_2
    :goto_1
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result p2

    xor-int/2addr p2, v4

    invoke-interface {p3, p2}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p4

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p4

    invoke-interface {p2, p4}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 875
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1

    .line 873
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " to "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-interface {p3, p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 869
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 877
    :cond_5
    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result p2

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v5

    xor-int/2addr v4, v5

    if-ne p2, v4, :cond_9

    .line 879
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result p2

    const-string v1, "Cannot get "

    if-nez p2, :cond_7

    invoke-interface {p3, v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {p2, v3}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    .line 880
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p3, v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 881
    :cond_7
    :goto_2
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 884
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1

    .line 882
    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " as "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 878
    :cond_9
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 866
    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

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
