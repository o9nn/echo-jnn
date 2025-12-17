.class public Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MemberSubstitution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SubstitutingMethodVisitor"
.end annotation


# instance fields
.field private final implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field private final replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

.field private stackSizeBuffer:I

.field private final strict:Z

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;ZLnet/bytebuddy/asm/MemberSubstitution$Replacement;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;)V
    .locals 1

    .line 1874
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iput-boolean p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    iput-object p5, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    iput-object p6, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iput-object p7, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/4 p1, 0x0

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 1886
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    .line 1887
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v3

    const-string v4, " using "

    const-string v5, "Could not resolve "

    if-eqz v3, :cond_5

    .line 1888
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    iget-boolean v3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v3, :cond_0

    .line 1889
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    goto :goto_0

    .line 1890
    :cond_0
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    .line 1888
    :goto_0
    invoke-interface {v0, v3}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldList;

    .line 1891
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    .line 1892
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v3, :cond_2

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v5

    :goto_2
    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v1

    .line 1893
    invoke-interface {v1}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v2

    if-eqz v2, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 1914
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1898
    :pswitch_0
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    const/4 p2, 0x2

    new-array p2, p2, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    aput-object p3, p2, v5

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    .line 1899
    sget-object p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_3

    .line 1906
    :pswitch_1
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array p2, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    .line 1907
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    goto :goto_3

    .line 1902
    :pswitch_2
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array p2, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    .line 1903
    sget-object p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_3

    .line 1910
    :pswitch_3
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {p1}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    .line 1911
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    :goto_3
    iget p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    .line 1916
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->make(Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    iget-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 1917
    invoke-interface {p1, p4, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 1918
    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1916
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    return-void

    :cond_3
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v0, :cond_4

    goto :goto_4

    .line 1922
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v0, :cond_7

    .line 1928
    :cond_6
    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1926
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMaxs(II)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    add-int/2addr p1, v0

    .line 1991
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 1933
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    .line 1934
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v3

    const-string v4, " using "

    const-string v5, "Could not resolve "

    if-eqz v3, :cond_f

    const/16 v3, 0xb7

    if-ne p1, v3, :cond_1

    const-string v6, "<init>"

    .line 1936
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1937
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    iget-boolean v6, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v6, :cond_0

    .line 1938
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    goto :goto_0

    .line 1939
    :cond_0
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {v6}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    .line 1937
    :goto_0
    invoke-interface {v3, v6}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    goto/16 :goto_5

    :cond_1
    const/16 v6, 0xb8

    if-eq p1, v6, :cond_5

    if-ne p1, v3, :cond_2

    goto/16 :goto_3

    .line 1945
    :cond_2
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    iget-boolean v6, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v6, :cond_3

    .line 1946
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-static {v7}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    goto :goto_1

    .line 1947
    :cond_3
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-static {v7}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {v6}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    .line 1945
    :goto_1
    invoke-interface {v3, v6}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    .line 1948
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    .line 1949
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3, v6, v7}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->asMethodList()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    iget-boolean v6, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v6, :cond_4

    .line 1950
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    goto :goto_2

    .line 1951
    :cond_4
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {v6}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    .line 1949
    :goto_2
    invoke-interface {v3, v6}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    goto :goto_5

    .line 1941
    :cond_5
    :goto_3
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    iget-boolean v6, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v6, :cond_6

    .line 1942
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    goto :goto_4

    .line 1943
    :cond_6
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {v6}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    .line 1941
    :goto_4
    invoke-interface {v3, v6}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    .line 1954
    :cond_7
    :goto_5
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    .line 1955
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {p1, v5}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->of(ILnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    move-result-object v5

    invoke-interface {v1, v2, v4, v5}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v1

    .line 1956
    invoke-interface {v1}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v2

    if-eqz v2, :cond_10

    iget p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    .line 1958
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_6

    .line 1959
    :cond_8
    new-instance p2, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    .line 1960
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p4

    invoke-interface {p4}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p4

    invoke-static {p3, p4}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    goto :goto_7

    .line 1959
    :cond_9
    :goto_6
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p2

    .line 1961
    :goto_7
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1962
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    goto :goto_8

    .line 1963
    :cond_a
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    .line 1957
    :goto_8
    invoke-interface {v1, p2, p3}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->make(Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 1964
    invoke-interface {p2, p3, p4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p2

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p3

    if-eqz p3, :cond_b

    sget-object p3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_9

    .line 1966
    :cond_b
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p3

    :goto_9
    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1957
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    .line 1967
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    .line 1968
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p3, 0x6

    new-array p3, p3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object p4, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    sget-object p5, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1969
    invoke-virtual {p4, p5}, Lnet/bytebuddy/implementation/bytecode/Duplication;->flipOver(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    const/4 p4, 0x1

    sget-object p5, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    aput-object p5, p3, p4

    const/4 p4, 0x2

    sget-object p5, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    aput-object p5, p3, p4

    sget-object p4, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    sget-object p5, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1972
    invoke-virtual {p4, p5}, Lnet/bytebuddy/implementation/bytecode/Duplication;->flipOver(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p4

    const/4 p5, 0x3

    aput-object p4, p3, p5

    const/4 p4, 0x4

    sget-object p5, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    aput-object p5, p3, p4

    const/4 p4, 0x5

    sget-object p5, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    aput-object p5, p3, p4

    invoke-direct {p2, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iget-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 1975
    invoke-virtual {p2, p3, p4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p2

    sget-object p3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p3

    add-int/2addr p2, p3

    .line 1968
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    :cond_c
    return-void

    :cond_d
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v0, :cond_e

    goto :goto_a

    .line 1980
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, "."

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v0, :cond_11

    .line 1986
    :cond_10
    :goto_a
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1984
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
