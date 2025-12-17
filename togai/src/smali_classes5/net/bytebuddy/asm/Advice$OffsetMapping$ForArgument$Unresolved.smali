.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;
.super Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unresolved"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final index:I

.field private final optional:Z


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/ParameterDescription;)V
    .locals 3

    .line 1549
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;I)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$Argument;)V
    .locals 6

    .line 1540
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Argument;->readOnly()Z

    move-result v2

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Argument;->typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object v3

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Argument;->value()I

    move-result v4

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Argument;->optional()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;IZ)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1561
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;IZ)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;IZ)V
    .locals 0

    .line 1574
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    iput p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->index:I

    iput-boolean p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->optional:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->index:I

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;

    iget v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->index:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->optional:Z

    iget-boolean p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->optional:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->optional:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 2

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->optional:Z

    if-eqz v0, :cond_1

    .line 1597
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    iget v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->index:I

    if-gt v0, v1, :cond_1

    .line 1598
    iget-boolean p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->readOnly:Z

    if-eqz p1, :cond_0

    new-instance p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadOnly;

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    :goto_0
    return-object p1

    .line 1602
    :cond_1
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    move-result-object p1

    return-object p1
.end method

.method protected resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/ParameterDescription;
    .locals 3

    .line 1581
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    .line 1582
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    iget v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->index:I

    if-le v1, v2, :cond_0

    .line 1585
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription;

    return-object p1

    .line 1583
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not define an index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved;->index:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
