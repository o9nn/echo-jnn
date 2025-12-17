.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;
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
    name = "ForStackManipulation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfDefaultValue;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final targetType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 3447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->targetType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->targetType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->targetType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->targetType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 1

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->targetType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 3462
    invoke-interface {p3, p1, p2, p4}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    .line 3463
    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3466
    new-instance p2, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForStackManipulation;

    new-instance p3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p4, 0x2

    new-array p4, p4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 p5, 0x0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v0, p4, p5

    const/4 p5, 0x1

    aput-object p1, p4, p5

    invoke-direct {p3, p4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-direct {p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p2

    .line 3464
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot assign "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;->targetType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
