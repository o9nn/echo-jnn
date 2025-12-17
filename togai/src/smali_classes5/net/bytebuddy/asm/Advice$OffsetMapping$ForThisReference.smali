.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForThisReference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final optional:Z

.field private final readOnly:Z

.field private final target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$This;)V
    .locals 2

    .line 1774
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$This;->readOnly()Z

    move-result v0

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$This;->typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object v1

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$This;->optional()Z

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Z)V
    .locals 0

    .line 1785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-boolean p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->readOnly:Z

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iput-boolean p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->optional:Z

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->readOnly:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->readOnly:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->optional:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->optional:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->readOnly:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->optional:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 5

    .line 1800
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p5, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->isPremature(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto/16 :goto_0

    .line 1809
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    iget-object p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p2, p5, v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    .line 1810
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p5

    const-string v0, " to "

    const-string v1, "Cannot assign "

    if-eqz p5, :cond_3

    iget-boolean p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->readOnly:Z

    const/4 v2, 0x0

    if-eqz p5, :cond_1

    .line 1813
    new-instance p3, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p4, v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result p4

    invoke-direct {p3, p1, p4, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p3

    :cond_1
    iget-object p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1815
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p5, v3, v4}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    .line 1816
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 1819
    new-instance p5, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadWrite;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p4, v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result p4

    invoke-direct {p5, p1, p4, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p5

    .line 1817
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1811
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    iget-boolean p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->optional:Z

    if-eqz p3, :cond_6

    iget-boolean p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;->readOnly:Z

    if-eqz p2, :cond_5

    .line 1802
    new-instance p2, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadOnly;

    invoke-direct {p2, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    goto :goto_1

    :cond_5
    new-instance p2, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;

    invoke-direct {p2, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    :goto_1
    return-object p2

    .line 1806
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot map this reference for static method or constructor start: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
