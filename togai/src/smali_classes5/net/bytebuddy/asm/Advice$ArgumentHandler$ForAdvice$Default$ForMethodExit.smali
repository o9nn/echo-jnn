.class public Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;
.super Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForMethodExit"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final enterType:Lnet/bytebuddy/description/type/TypeDefinition;

.field private final throwableSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/TreeMap;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 4345
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/TreeMap;)V

    iput-object p5, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    iput-object p6, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->throwableSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->throwableSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    check-cast p1, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->throwableSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->throwableSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public mapped(I)I
    .locals 2

    .line 4375
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4376
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->namedTypes:Ljava/util/TreeMap;

    .line 4377
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4378
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 4379
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->throwableSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 4380
    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 4381
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public returned()I
    .locals 2

    .line 4354
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4355
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->namedTypes:Ljava/util/TreeMap;

    .line 4356
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4357
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public thrown()I
    .locals 2

    .line 4364
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4365
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->namedTypes:Ljava/util/TreeMap;

    .line 4366
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4367
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 4368
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
