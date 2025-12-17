.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;
.super Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnly"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;I)V
    .locals 1

    .line 860
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 871
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-void
.end method


# virtual methods
.method public resolveIncrement(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 885
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot write to read-only variable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write to read-only parameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForVariable$ReadOnly;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
