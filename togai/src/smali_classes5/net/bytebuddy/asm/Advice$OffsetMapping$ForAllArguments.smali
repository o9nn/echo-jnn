.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;
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
    name = "ForAllArguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final readOnly:Z

.field private final target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$AllArguments;)V
    .locals 1

    .line 1883
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$AllArguments;->readOnly()Z

    move-result v0

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$AllArguments;->typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 1893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-boolean p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 9

    .line 1907
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p5

    invoke-interface {p5}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result p5

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1908
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p5

    invoke-interface {p5}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, " to "

    const-string v2, "Cannot assign "

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 1909
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v8, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, v6, v7, v8}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    .line 1910
    invoke-interface {v6}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1913
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v2, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v5

    .line 1914
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v0

    invoke-interface {p4, v0}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object v6, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1913
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1911
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean p5, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    if-eqz p5, :cond_2

    .line 1917
    new-instance p2, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadOnly;

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p2, p3, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object p2

    .line 1919
    :cond_2
    new-instance p5, Ljava/util/ArrayList;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    invoke-direct {p5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1920
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    iget-object v6, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1921
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    iget-object v8, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, v6, v7, v8}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    .line 1922
    invoke-interface {v6}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1925
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v8, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v6, v8, v4

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-static {v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v6

    .line 1926
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v0

    invoke-interface {p4, v0}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeAt(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-direct {v7, v8}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1925
    invoke-interface {p5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1923
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1928
    :cond_4
    new-instance p2, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p2, p3, p1, p5}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V

    return-object p2
.end method
