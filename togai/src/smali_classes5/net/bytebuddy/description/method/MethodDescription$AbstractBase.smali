.class public abstract Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;
.super Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;
.source "MethodDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/method/MethodDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# static fields
.field private static final SOURCE_MODIFIERS:I = 0x53f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;-><init>()V

    return-void
.end method

.method private static varargs isAnnotationType(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Z
    .locals 4

    .line 778
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 779
    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isBootstrap(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 630
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 635
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_0

    const-class v3, Ljava/lang/Integer;

    if-eq v2, v3, :cond_0

    const-class v3, Ljava/lang/Long;

    if-eq v2, v3, :cond_0

    const-class v3, Ljava/lang/Float;

    if-eq v2, v3, :cond_0

    const-class v3, Ljava/lang/Double;

    if-eq v2, v3, :cond_0

    const-class v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 640
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lnet/bytebuddy/utility/JavaConstant;

    .line 641
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 642
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not a Java constant representation: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The null value is not a bootstrap constant"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :cond_3
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    .line 646
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6

    .line 647
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v2, v4

    :cond_5
    return v2

    .line 650
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x3

    .line 651
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result v5

    invoke-interface {v0, v1, v5}, Lnet/bytebuddy/description/type/TypeList;->subList(II)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    .line 652
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    xor-int/2addr v6, v4

    if-nez v6, :cond_d

    .line 654
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 655
    instance-of v7, v6, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v7, :cond_7

    move-object v7, v6

    check-cast v7, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v7}, Lnet/bytebuddy/utility/JavaConstant;->getType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v7, v5}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v7

    if-nez v7, :cond_10

    :cond_7
    const-class v7, Ljava/lang/Class;

    .line 656
    invoke-interface {v5, v7}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_8

    instance-of v7, v6, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_8
    const-class v7, Ljava/lang/String;

    .line 657
    invoke-interface {v5, v7}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_10

    :cond_9
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 658
    invoke-interface {v5, v7}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    if-eq v7, v8, :cond_10

    :cond_a
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 659
    invoke-interface {v5, v7}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Long;

    if-eq v7, v8, :cond_10

    :cond_b
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 660
    invoke-interface {v5, v7}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Float;

    if-eq v7, v8, :cond_10

    :cond_c
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 661
    invoke-interface {v5, v7}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Double;

    if-eq v6, v7, :cond_10

    goto :goto_2

    :cond_d
    if-eqz v6, :cond_10

    .line 664
    :cond_e
    :goto_2
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result p1

    if-ne v3, p1, :cond_f

    const-class p1, [Ljava/lang/Object;

    invoke-interface {v5, p1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_f

    move v2, v4

    :cond_f
    return v2

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_11
    return v4
.end method

.method private isBootstrap(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 6

    .line 602
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    .line 603
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 616
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    invoke-interface {v0, v3}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v5, Ljava/lang/Object;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    :cond_0
    invoke-interface {v0, v4}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 612
    :cond_2
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 613
    invoke-interface {v0, v3}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v5, Ljava/lang/Object;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 614
    :cond_3
    invoke-interface {v0, v4}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v5, [Ljava/lang/Object;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, v4}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2

    .line 609
    :cond_6
    sget-object p1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 610
    invoke-interface {v0, v3}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v2, v3

    :cond_7
    return v2

    .line 607
    :cond_8
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_9
    return v2
.end method

.method private static varargs isEnumerationType(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Z
    .locals 4

    .line 762
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 763
    invoke-interface {v3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/description/TypeVariableSource$Visitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/TypeVariableSource$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/TypeVariableSource$Visitor;->onMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;
    .locals 4

    .line 831
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/method/MethodDescription$Token;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;"
        }
    .end annotation

    .line 813
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 814
    new-instance v11, Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getModifiers()I

    move-result v3

    .line 816
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v4

    .line 817
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    new-instance v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;

    invoke-direct {v5, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 818
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/method/ParameterList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v6

    .line 819
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    new-instance v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;

    invoke-direct {v7, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-interface {v1, v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    .line 820
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v8

    .line 821
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v9

    if-nez v0, :cond_0

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;

    invoke-direct {v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    .line 824
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    move-object v10, p1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v11
.end method

.method public asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;
    .locals 3

    .line 838
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 870
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/method/MethodDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 873
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 874
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 876
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 877
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActualModifiers()I
    .locals 3

    .line 505
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getModifiers()I

    move-result v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    const-class v2, Ljava/lang/Deprecated;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public getActualModifiers(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getActualModifiers()I

    move-result p1

    and-int/lit16 p1, p1, -0x501

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getActualModifiers()I

    move-result p1

    and-int/lit16 p1, p1, -0x101

    or-int/lit16 p1, p1, 0x400

    :goto_0
    return p1
.end method

.method public getActualModifiers(ZLnet/bytebuddy/description/modifier/Visibility;)I
    .locals 1

    .line 523
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/description/modifier/Visibility;->expandTo(Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p2

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getActualModifiers(Z)I

    move-result p1

    invoke-virtual {p2, p1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result p1

    return p1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 3

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 456
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 1

    .line 790
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/TypeVariableSource;->UNDEFINED:Lnet/bytebuddy/description/TypeVariableSource;

    goto :goto_0

    .line 792
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 8

    .line 466
    :try_start_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    .line 468
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 469
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitFormalTypeParameter(Ljava/lang/String;)V

    .line 471
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 472
    new-instance v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    if-eqz v4, :cond_0

    .line 473
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v4

    goto :goto_2

    .line 474
    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v4

    :goto_2
    invoke-direct {v7, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    .line 472
    invoke-interface {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move v4, v2

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 480
    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v4, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 481
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_4
    move v3, v5

    goto :goto_3

    .line 483
    :cond_5
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    .line 484
    new-instance v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v6

    invoke-direct {v4, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v3, :cond_7

    .line 485
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6

    :cond_7
    :goto_5
    move v1, v5

    .line 486
    :goto_6
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    .line 487
    sget-object v4, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->ofSort(Lnet/bytebuddy/description/type/TypeDefinition$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 488
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 489
    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v4, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v1, :cond_9

    .line 490
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    goto :goto_7

    :cond_9
    :goto_8
    move v1, v5

    goto :goto_7

    :cond_a
    if-eqz v1, :cond_b

    .line 494
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_b
    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    return-object v0

    .line 497
    :catch_0
    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStackSize()I
    .locals 2

    .line 394
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getStackSize()I

    move-result v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isStatic()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 860
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    .line 861
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 862
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 863
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 542
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 544
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 546
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isBridgeCompatible(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Z
    .locals 6

    .line 845
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    .line 846
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    move v2, v4

    .line 849
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 850
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    :cond_3
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    .line 855
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    return v4
.end method

.method public isConstantBootstrap()Z
    .locals 3

    .line 696
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    .line 697
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .line 699
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isBootstrap(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isConstantBootstrap(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 706
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isConstantBootstrap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isBootstrap(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isConstructor()Z
    .locals 2

    const-string v0, "<init>"

    .line 408
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDefaultMethod()Z
    .locals 1

    .line 560
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isBridge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultValue()Z
    .locals 1

    .line 713
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationReturnType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)Z"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isDefaultValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 726
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 727
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    .line 728
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/Boolean;

    if-nez v2, :cond_18

    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 729
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Ljava/lang/Byte;

    if-nez v2, :cond_18

    :cond_2
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 730
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Ljava/lang/Character;

    if-nez v2, :cond_18

    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 731
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, p1, Ljava/lang/Short;

    if-nez v2, :cond_18

    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 732
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_18

    :cond_5
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 733
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, p1, Ljava/lang/Long;

    if-nez v2, :cond_18

    :cond_6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 734
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, p1, Ljava/lang/Float;

    if-nez v2, :cond_18

    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 735
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, p1, Ljava/lang/Double;

    if-nez v2, :cond_18

    :cond_8
    const-class v2, Ljava/lang/String;

    .line 736
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_9

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_18

    :cond_9
    const-class v2, Ljava/lang/Enum;

    .line 737
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v2, :cond_a

    new-array v2, v3, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    move-object v4, p1

    check-cast v4, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isEnumerationType(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_a
    const-class v2, Ljava/lang/annotation/Annotation;

    .line 738
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    instance-of v2, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v2, :cond_b

    new-array v2, v3, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object v4, p1

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isAnnotationType(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_b
    const-class v2, Ljava/lang/Class;

    .line 739
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, p1, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v2, :cond_18

    :cond_c
    const-class v2, [Z

    .line 740
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_d

    instance-of v2, p1, [Z

    if-nez v2, :cond_18

    :cond_d
    const-class v2, [B

    .line 741
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_e

    instance-of v2, p1, [B

    if-nez v2, :cond_18

    :cond_e
    const-class v2, [C

    .line 742
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_f

    instance-of v2, p1, [C

    if-nez v2, :cond_18

    :cond_f
    const-class v2, [S

    .line 743
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, p1, [S

    if-nez v2, :cond_18

    :cond_10
    const-class v2, [I

    .line 744
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_11

    instance-of v2, p1, [I

    if-nez v2, :cond_18

    :cond_11
    const-class v2, [J

    .line 745
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_12

    instance-of v2, p1, [J

    if-nez v2, :cond_18

    :cond_12
    const-class v2, [F

    .line 746
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_13

    instance-of v2, p1, [F

    if-nez v2, :cond_18

    :cond_13
    const-class v2, [D

    .line 747
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_14

    instance-of v2, p1, [D

    if-nez v2, :cond_18

    :cond_14
    const-class v2, [Ljava/lang/String;

    .line 748
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_15

    instance-of v2, p1, [Ljava/lang/String;

    if-nez v2, :cond_18

    :cond_15
    const-class v2, [Ljava/lang/Enum;

    .line 749
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_16

    instance-of v2, p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v2, :cond_16

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    move-object v4, p1

    check-cast v4, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    check-cast v4, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-static {v2, v4}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isEnumerationType(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    const-class v2, [Ljava/lang/annotation/Annotation;

    .line 750
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_17

    instance-of v2, p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v2, :cond_17

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    move-object v4, p1

    check-cast v4, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    check-cast v4, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-static {v2, v4}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isAnnotationType(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    const-class v2, [Ljava/lang/Class;

    .line 751
    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_19

    instance-of p1, p1, [Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz p1, :cond_19

    :cond_18
    move v1, v3

    :cond_19
    return v1
.end method

.method public isGenerified()Z
    .locals 1

    .line 806
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInvokableOn(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 587
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isTypeInitializer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isInvokeBootstrap()Z
    .locals 2

    .line 676
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 677
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    .line 678
    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 682
    :cond_2
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isBootstrap(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    return v0
.end method

.method public isInvokeBootstrap(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isInvokeBootstrap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isBootstrap(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMethod()Z
    .locals 1

    .line 401
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isTypeInitializer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpecializableFor(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2

    .line 567
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 569
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 570
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isTypeInitializer()Z
    .locals 2

    const-string v0, "<clinit>"

    .line 415
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .line 553
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isTypeInitializer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 530
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_4

    .line 532
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 533
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 534
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 535
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public represents(Ljava/lang/reflect/Constructor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    .line 429
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public represents(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 422
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 7

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x53f

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 887
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x2c

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v3, :cond_2

    .line 897
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v3, v6

    .line 901
    :goto_1
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getActualName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x29

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    .line 905
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, " throws "

    .line 906
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v2, :cond_4

    .line 910
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    move v2, v6

    .line 914
    :goto_3
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getActualName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 917
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x53f

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 925
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->isMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 931
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x2c

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v3, :cond_2

    .line 935
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v3, v6

    .line 939
    :goto_1
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x29

    .line 941
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    .line 943
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, " throws "

    .line 944
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v2, :cond_4

    .line 948
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    move v2, v6

    .line 952
    :goto_3
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 955
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
