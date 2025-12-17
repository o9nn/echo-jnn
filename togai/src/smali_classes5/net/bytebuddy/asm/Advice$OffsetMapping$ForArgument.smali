.class public abstract Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForArgument"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final readOnly:Z

.field protected final target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-boolean p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->readOnly:Z

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->readOnly:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->readOnly:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->readOnly:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 4

    .line 1494
    invoke-virtual {p0, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/ParameterDescription;

    move-result-object p1

    .line 1495
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    iget-object p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p2, p5, v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    .line 1496
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p5

    const-string v0, " to "

    const-string v1, "Cannot assign "

    if-eqz p5, :cond_2

    iget-boolean p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->readOnly:Z

    if-eqz p5, :cond_0

    .line 1499
    new-instance p3, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p5

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p1

    invoke-interface {p4, p1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result p1

    invoke-direct {p3, p5, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p3

    :cond_0
    iget-object p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1501
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p5, v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    .line 1502
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 1505
    new-instance p5, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadWrite;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p1

    invoke-interface {p4, p1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result p1

    invoke-direct {p5, v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p5

    .line 1503
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1497
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/ParameterDescription;
.end method
