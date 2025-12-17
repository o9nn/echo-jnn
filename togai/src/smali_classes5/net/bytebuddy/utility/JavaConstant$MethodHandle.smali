.class public Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
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
    name = "MethodHandle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;


# instance fields
.field private final handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field private final name:Ljava/lang/String;

.field private final ownerType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 434
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p5, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    return-void
.end method

.method public static lookupType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;

    .line 739
    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;->lookupType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodHandle;"
        }
    .end annotation

    .line 536
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    .line 526
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    .line 546
    new-instance v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v1

    .line 547
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .line 548
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 549
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    .line 550
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v6
.end method

.method public static ofGetter(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    .line 589
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    .line 599
    new-instance v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v1

    .line 600
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .line 601
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 602
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    .line 603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v6
.end method

.method public static ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;

    .line 491
    invoke-interface {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;->publicLookup()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofLoaded(Ljava/lang/Object;Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 8

    .line 504
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;

    .line 509
    invoke-interface {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;->initialize()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;

    move-result-object v0

    .line 510
    invoke-interface {v0, p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;->reveal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 511
    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;->getMethodType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 512
    new-instance v7, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;->getReferenceKind(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->of(I)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v2

    .line 513
    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;->getDeclaringClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    .line 514
    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-interface {v0, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;->returnType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    new-instance v6, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    .line 516
    invoke-interface {v0, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;->parameterArray(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v6, p0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>(Ljava/util/List;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v7

    .line 507
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected method handle lookup object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected method handle object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ofSetter(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    .line 613
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofSetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofSetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    .line 623
    new-instance v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->ofSetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v1

    .line 624
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .line 625
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    .line 627
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v6
.end method

.method public static ofSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodHandle;"
        }
    .end annotation

    .line 561
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofSpecial(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofSpecial(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    .line 572
    invoke-interface {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isSpecializableFor(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->ofSpecial(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v2

    .line 577
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    .line 579
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v6

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot specialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asConstantPoolValue()Ljava/lang/Object;
    .locals 7

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

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

    .line 636
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 639
    new-instance v0, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getHandleType()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->getIdentifier()I

    move-result v2

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 721
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 724
    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    .line 725
    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    .line 726
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 727
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    .line 728
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 729
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 3

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    .line 701
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 702
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleType()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getParameterTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    .line 691
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 646
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    .line 709
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 710
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    .line 711
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 712
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    .line 713
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
