.class public Lnet/bytebuddy/utility/JavaConstant$Dynamic;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dynamic"
.end annotation


# static fields
.field private static final CONSTANT_BOOTSTRAPS:Ljava/lang/String; = "java/lang/invoke/ConstantBootstraps"


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

.field private final value:Lnet/bytebuddy/jar/asm/ConstantDynamic;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public static bootstrap(Ljava/lang/String;Ljava/lang/reflect/Constructor;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1748
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {p0, v0, p2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->bootstrap(Ljava/lang/String;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static varargs bootstrap(Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1735
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->bootstrap(Ljava/lang/String;Ljava/lang/reflect/Constructor;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static bootstrap(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1722
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v0, p2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->bootstrap(Ljava/lang/String;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static varargs bootstrap(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 0

    .line 1709
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->bootstrap(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static bootstrap(Ljava/lang/String;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1774
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1777
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1778
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1780
    invoke-static {}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofNullConstant()Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object v1

    goto :goto_1

    .line 1781
    :cond_0
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 1782
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1783
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofPrimitiveType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v1

    goto :goto_1

    .line 1784
    :cond_1
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    goto :goto_1

    .line 1785
    :cond_2
    instance-of v2, v1, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1786
    invoke-static {v2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofPrimitiveType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v1

    goto :goto_1

    .line 1787
    :cond_3
    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1788
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v1

    goto :goto_1

    .line 1789
    :cond_4
    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1790
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v1

    .line 1792
    :cond_5
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1794
    :cond_6
    invoke-interface {p1, v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstantBootstrap(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1797
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    .line 1799
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1800
    instance-of v3, v2, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v3, :cond_7

    .line 1801
    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    goto :goto_3

    .line 1802
    :cond_7
    instance-of v3, v2, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v3, :cond_8

    .line 1803
    check-cast v2, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v2}, Lnet/bytebuddy/utility/JavaConstant;->asConstantPoolValue()Ljava/lang/Object;

    move-result-object v2

    :cond_8
    :goto_3
    add-int/lit8 v3, v1, 0x1

    .line 1805
    aput-object v2, p2, v1

    move v1, v3

    goto :goto_2

    .line 1807
    :cond_9
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1808
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1809
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    goto :goto_4

    .line 1810
    :cond_a
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/bytebuddy/jar/asm/Handle;

    .line 1811
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x8

    goto :goto_5

    :cond_b
    const/4 v3, 0x6

    :goto_5
    move v4, v3

    .line 1812
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 1813
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v6

    .line 1814
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, p0, v2, v9, p2}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 1817
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1818
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    goto :goto_6

    .line 1819
    :cond_c
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    :goto_6
    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 1795
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Not a valid bootstrap method "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1775
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not a valid field name: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs bootstrap(Ljava/lang/String;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 0

    .line 1761
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->bootstrap(Ljava/lang/String;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static ofArrayVarHandle(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant;"
        }
    .end annotation

    .line 1676
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofArrayVarHandle(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p0

    return-object p0
.end method

.method public static ofArrayVarHandle(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 10

    .line 1686
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 1690
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v4, 0x6

    const-string v5, "java/lang/invoke/ConstantBootstraps"

    const-string v6, "arrayVarHandle"

    const-string v7, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;"

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1696
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "arrayVarHandle"

    invoke-direct {v1, v3, v2, v9, p0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    sget-object p0, Lnet/bytebuddy/utility/JavaType;->VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 1687
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an array type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofEnumeration(Ljava/lang/Enum;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant;"
        }
    .end annotation

    .line 1458
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p0

    return-object p0
.end method

.method public static ofEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 11

    .line 1468
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-interface {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1469
    invoke-interface {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v5, 0x6

    const-string v6, "java/lang/invoke/ConstantBootstraps"

    const-string v7, "enumConstant"

    const-string v8, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;"

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v10, v4}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 1474
    invoke-interface {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static ofField(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 1

    .line 1484
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static ofField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 12

    .line 1494
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1497
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asBoxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1499
    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1500
    :goto_0
    new-instance v1, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v2, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 1501
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v6, 0x6

    const-string v7, "java/lang/invoke/ConstantBootstraps"

    const-string v8, "getStaticFinal"

    if-eqz v0, :cond_1

    const-string v5, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;"

    goto :goto_1

    :cond_1
    const-string v5, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;"

    :goto_1
    move-object v9, v5

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_2

    .line 1510
    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-direct {v2, v3, v4, v11, v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v1

    .line 1495
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field must be static and final: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofInvocation(Ljava/lang/reflect/Constructor;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1554
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofInvocation(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofInvocation(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1543
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofInvocation(Ljava/lang/reflect/Constructor;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static ofInvocation(Ljava/lang/reflect/Method;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1532
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofInvocation(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 0

    .line 1521
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofInvocation(Ljava/lang/reflect/Method;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static ofInvocation(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$Dynamic;"
        }
    .end annotation

    .line 1576
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1577
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bootstrap method is no constructor or non-void static factory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1578
    :cond_1
    :goto_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, " to "

    if-ne v0, v1, :cond_16

    .line 1581
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 1583
    :cond_4
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 1582
    :cond_5
    :goto_3
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    .line 1583
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1584
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1585
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1587
    invoke-static {}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofNullConstant()Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object v5

    goto :goto_6

    .line 1588
    :cond_6
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_8

    .line 1589
    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1590
    invoke-static {v5}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofPrimitiveType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v5

    goto :goto_6

    .line 1591
    :cond_7
    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    goto :goto_6

    .line 1592
    :cond_8
    instance-of v6, v5, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v6, :cond_9

    move-object v6, v5

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1593
    invoke-static {v6}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofPrimitiveType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v5

    goto :goto_6

    .line 1594
    :cond_9
    sget-object v6, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v6, v5}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1595
    invoke-static {v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v5

    goto :goto_6

    .line 1596
    :cond_a
    sget-object v6, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v6, v5}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1597
    invoke-static {v5}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v5

    .line 1600
    :cond_b
    :goto_6
    instance-of v6, v5, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v6, :cond_c

    .line 1601
    move-object v6, v5

    check-cast v6, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v6}, Lnet/bytebuddy/utility/JavaConstant;->getType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    goto :goto_7

    .line 1602
    :cond_c
    instance-of v6, v5, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v6, :cond_d

    .line 1603
    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_7

    .line 1605
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    .line 1607
    :goto_7
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->asBoxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->asBoxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1610
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1608
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot assign argument of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1612
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/Object;

    .line 1613
    new-instance v0, Lnet/bytebuddy/jar/asm/Handle;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0x8

    goto :goto_8

    :cond_10
    const/4 v4, 0x6

    :goto_8
    move v5, v4

    .line 1614
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v6

    .line 1615
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v7

    .line 1616
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, p1, v2

    .line 1619
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1620
    instance-of v2, v1, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v2, :cond_11

    .line 1621
    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    goto :goto_a

    .line 1622
    :cond_11
    instance-of v2, v1, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v2, :cond_12

    .line 1623
    check-cast v1, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v1}, Lnet/bytebuddy/utility/JavaConstant;->asConstantPoolValue()Ljava/lang/Object;

    move-result-object v1

    :cond_12
    :goto_a
    add-int/lit8 v2, v3, 0x1

    .line 1625
    aput-object v1, p1, v3

    move v3, v2

    goto :goto_9

    .line 1627
    :cond_13
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1628
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1629
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    goto :goto_b

    .line 1630
    :cond_14
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v4, 0x6

    const-string v5, "java/lang/invoke/ConstantBootstraps"

    const-string v6, "invoke"

    const-string v7, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "invoke"

    invoke-direct {v1, v3, v2, v9, p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 1636
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    goto :goto_c

    :cond_15
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    :goto_c
    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 1579
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot assign "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs ofInvocation(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 0

    .line 1565
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofInvocation(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object p0

    return-object p0
.end method

.method public static ofNullConstant()Lnet/bytebuddy/utility/JavaConstant$Dynamic;
    .locals 10

    .line 1413
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1414
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v4, 0x6

    const-string v5, "java/lang/invoke/ConstantBootstraps"

    const-string v6, "nullConstant"

    const-string v7, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;"

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "nullConstant"

    invoke-direct {v1, v4, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static ofPrimitiveType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant;"
        }
    .end annotation

    .line 1429
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofPrimitiveType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p0

    return-object p0
.end method

.method public static ofPrimitiveType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 10

    .line 1439
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1443
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v4, 0x6

    const-string v5, "java/lang/invoke/ConstantBootstraps"

    const-string v6, "primitiveClass"

    const-string v7, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;"

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    sget-object p0, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 1440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a primitive type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofVarHandle(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 1

    .line 1646
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofVarHandle(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p0

    return-object p0
.end method

.method public static ofVarHandle(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 11

    .line 1656
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/utility/JavaType;->VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 1657
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v5, 0x6

    const-string v6, "java/lang/invoke/ConstantBootstraps"

    .line 1660
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "staticFieldVarHandle"

    goto :goto_0

    :cond_0
    const-string v4, "fieldVarHandle"

    :goto_0
    move-object v7, v4

    const-string v8, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;"

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1665
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v4

    .line 1666
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p0

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, v2, v3, v10, p0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    sget-object p0, Lnet/bytebuddy/utility/JavaType;->VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method


# virtual methods
.method public asConstantPoolValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1883
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1886
    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1887
    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1874
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1875
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public withType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant;"
        }
    .end annotation

    .line 1830
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->withType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p1

    return-object p1
.end method

.method public withType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 6

    .line 1841
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1843
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1844
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1845
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->asBoxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asBoxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1848
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgumentCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1849
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgumentCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1850
    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgument(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1852
    :cond_1
    new-instance v1, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    new-instance v2, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1853
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->value:Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 1854
    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    invoke-direct {v1, v2, p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Lnet/bytebuddy/jar/asm/ConstantDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v1

    .line 1846
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not compatible with bootstrapped type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1842
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Constant value cannot represent void"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
