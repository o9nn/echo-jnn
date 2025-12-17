.class public Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;
.super Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Copying"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/TreeMap;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    .line 4115
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/TreeMap;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-void
.end method


# virtual methods
.method public argument(I)I
    .locals 2

    .line 4122
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4123
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->namedTypes:Ljava/util/TreeMap;

    .line 4124
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4125
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

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

    move-result-object p1

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public isCopyingArguments()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)I
    .locals 6

    .line 4153
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 4154
    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 4155
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4156
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->namedTypes:Ljava/util/TreeMap;

    .line 4157
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4158
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3a

    .line 4155
    invoke-virtual {p1, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 4159
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_0

    .line 4161
    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 4163
    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 4164
    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    const/16 v4, 0x15

    .line 4165
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v4

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x36

    .line 4166
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v3

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v4

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4167
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->namedTypes:Ljava/util/TreeMap;

    .line 4168
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 4169
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 4170
    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v5

    add-int/2addr v4, v5

    .line 4166
    invoke-virtual {p1, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 4171
    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->maximum(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    goto :goto_1

    .line 4173
    :cond_1
    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    return p1
.end method

.method public variable(I)I
    .locals 3

    .line 4133
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 4134
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 4135
    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->namedTypes:Ljava/util/TreeMap;

    .line 4136
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 4137
    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method
