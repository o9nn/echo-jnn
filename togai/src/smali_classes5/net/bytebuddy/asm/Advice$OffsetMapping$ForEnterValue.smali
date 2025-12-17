.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;
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
    name = "ForEnterValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final readOnly:Z

.field private final target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$Enter;)V
    .locals 1

    .line 2879
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Enter;->readOnly()Z

    move-result v0

    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Enter;->typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 2890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->readOnly:Z

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->readOnly:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->readOnly:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->readOnly:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 3

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 2905
    invoke-interface {p3, p1, p2, p5}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    .line 2906
    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p2

    const-string p5, " to "

    const-string v0, "Cannot assign "

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->readOnly:Z

    if-eqz p2, :cond_0

    .line 2909
    new-instance p2, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result p4

    invoke-direct {p2, p3, p4, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 2911
    invoke-interface {p3, p2, v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    .line 2912
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2915
    new-instance p3, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadWrite;

    iget-object p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result p4

    invoke-direct {p3, p5, p4, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p3

    .line 2913
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2907
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
