.class public abstract Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForDefaultValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadOnly;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field protected final typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 725
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
