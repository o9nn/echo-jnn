.class public Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;
.super Ljava/lang/Object;
.source "ArrayFactory.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForReferenceType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final internalTypeName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;->internalTypeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    const/16 p2, 0xbd

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;->internalTypeName:Ljava/lang/String;

    .line 264
    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 265
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;->ARRAY_CREATION_SIZE_CHANGE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;->internalTypeName:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;->internalTypeName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getStorageOpcode()I
    .locals 1

    const/16 v0, 0x53

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;->internalTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
