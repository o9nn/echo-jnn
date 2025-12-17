.class public abstract Lnet/bytebuddy/jar/asm/commons/Remapper;
.super Ljava/lang/Object;
.source "Remapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;
    .locals 3

    .line 69
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    .line 78
    :pswitch_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    :cond_0
    return-object p1

    .line 71
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDimensions()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x5b

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getElementType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createRemappingSignatureAdapter(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method protected createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    .line 237
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;

    invoke-direct {v0, p1, p0}, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public mapInnerClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "$"

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x24

    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "()V"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 137
    invoke-direct {p0, v4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    .line 140
    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v1, :cond_2

    const-string p1, ")V"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x29

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public mapModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapSignature(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance p1, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    .line 206
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 208
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->acceptType(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->accept(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    .line 212
    :goto_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapTypes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 108
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 109
    aget-object v3, p1, v2

    .line 110
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    .line 113
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 114
    array-length v4, p1

    invoke-static {p1, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_0
    aput-object v3, v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public mapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 159
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Lnet/bytebuddy/jar/asm/Type;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz v0, :cond_2

    .line 163
    check-cast p1, Lnet/bytebuddy/jar/asm/Handle;

    .line 164
    new-instance v6, Lnet/bytebuddy/jar/asm/Handle;

    .line 165
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v1

    .line 166
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v0

    const/4 v4, 0x4

    if-gt v0, v4, :cond_1

    .line 169
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 171
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->isInterface()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6

    .line 173
    :cond_2
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v0, :cond_4

    .line 174
    check-cast p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 175
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgumentCount()I

    move-result v0

    .line 176
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 179
    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgument(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v2, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 183
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/jar/asm/Handle;

    invoke-direct {v2, v3, v0, p1, v1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    return-object p1
.end method
