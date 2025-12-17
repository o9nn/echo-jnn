.class public abstract Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.super Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
    }
.end annotation


# static fields
.field public static final RAW_TYPES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7392
    :try_start_0
    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v1, "net.bytebuddy.raw"

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7379
    invoke-direct {p0}, Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;-><init>()V

    return-void
.end method

.method private static isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 3

    .line 7410
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 7414
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 7415
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7416
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-class p1, Ljava/lang/Object;

    .line 7417
    invoke-interface {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 7420
    :cond_4
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7421
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 7424
    :cond_5
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7425
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 7429
    :cond_6
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7430
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 7431
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_8
    return v2
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/description/TypeVariableSource$Visitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/TypeVariableSource$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 7749
    invoke-interface {p1, p0}, Lnet/bytebuddy/description/TypeVariableSource$Visitor;->onType(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asBoxed()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 7803
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7804
    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7805
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7806
    const-class v0, Ljava/lang/Byte;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7807
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7808
    const-class v0, Ljava/lang/Short;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7809
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7810
    const-class v0, Ljava/lang/Character;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7811
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7812
    const-class v0, Ljava/lang/Integer;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7813
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7814
    const-class v0, Ljava/lang/Long;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7815
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7816
    const-class v0, Ljava/lang/Float;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7817
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7818
    const-class v0, Ljava/lang/Double;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_7
    return-object p0
.end method

.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    return-object p0
.end method

.method public asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 7493
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForErasure;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForErasure;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public asUnboxed()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 7828
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7829
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7830
    :cond_0
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7831
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7832
    :cond_1
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7833
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7834
    :cond_2
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7835
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7836
    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7837
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7838
    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7839
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7840
    :cond_5
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7841
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 7842
    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7843
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_7
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 7918
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/type/TypeDefinition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 7921
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/type/TypeDefinition;

    .line 7922
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActualModifiers(Z)I
    .locals 3

    .line 7567
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getModifiers()I

    move-result v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

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

    .line 7570
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0xb

    goto :goto_1

    .line 7572
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, -0xd

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_1
    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    return v0
.end method

.method public getActualName()Ljava/lang/String;
    .locals 4

    .line 7664
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v2, p0

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 7669
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .line 7670
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7672
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v0, v1, :cond_1

    const-string v2, "[]"

    .line 7674
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7676
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7678
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2

    .line 7853
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7854
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 7855
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7856
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 7857
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7858
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 7859
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7860
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 7861
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7862
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 7863
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    .line 7864
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 7865
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 7866
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 7867
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    .line 7868
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosingSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 1

    .line 7739
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7741
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/TypeVariableSource;->UNDEFINED:Lnet/bytebuddy/description/TypeVariableSource;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 8

    .line 7585
    :try_start_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    .line 7587
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

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

    .line 7588
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitFormalTypeParameter(Ljava/lang/String;)V

    .line 7589
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 7590
    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7591
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    goto :goto_2

    .line 7592
    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    :goto_2
    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    .line 7590
    invoke-interface {v4, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    .line 7596
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7599
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 7601
    :cond_3
    new-instance v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v6

    invoke-direct {v4, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 7602
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v5

    .line 7603
    :goto_4
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 7604
    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v4, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v1, :cond_7

    .line 7605
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    :goto_6
    move v1, v5

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    .line 7608
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    return-object v0

    .line 7611
    :catch_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;

    return-object v0
.end method

.method public getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 5

    .line 7647
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 7648
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 7652
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 7653
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 7654
    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7656
    :cond_1
    new-instance v3, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->inherited(Ljava/util/Set;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getInnerClassCount()I
    .locals 2

    .line 7776
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7779
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7782
    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInnerClassCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 3

    .line 7560
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    .line 7500
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 7732
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 7911
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 7638
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7639
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7640
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isAnnotationReturnType()Z
    .locals 1

    .line 7700
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/String;

    .line 7701
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/Enum;

    .line 7702
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v0, Ljava/lang/annotation/Annotation;

    .line 7703
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-class v0, Ljava/lang/Class;

    .line 7704
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7705
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationReturnType()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnnotationValue()Z
    .locals 1

    .line 7712
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    .line 7713
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 7714
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 7715
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 7716
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7717
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnnotationValue(Ljava/lang/Object;)Z
    .locals 6

    .line 7514
    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_15

    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 7515
    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_1
    instance-of v0, p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 7516
    invoke-interface {v0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_2
    const-class v0, Ljava/lang/String;

    .line 7517
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 7518
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_15

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 7519
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_15

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 7520
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_15

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 7521
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_15

    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 7522
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_15

    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 7523
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_15

    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 7524
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_15

    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 7525
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_15

    :cond_b
    const-class v0, [Ljava/lang/String;

    .line 7526
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, [Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_c
    const-class v0, [Z

    .line 7527
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p1, [Z

    if-nez v0, :cond_15

    :cond_d
    const-class v0, [B

    .line 7528
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of v0, p1, [B

    if-nez v0, :cond_15

    :cond_e
    const-class v0, [S

    .line 7529
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of v0, p1, [S

    if-nez v0, :cond_15

    :cond_f
    const-class v0, [C

    .line 7530
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of v0, p1, [C

    if-nez v0, :cond_15

    :cond_10
    const-class v0, [I

    .line 7531
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, p1, [I

    if-nez v0, :cond_15

    :cond_11
    const-class v0, [J

    .line 7532
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    instance-of v0, p1, [J

    if-nez v0, :cond_15

    :cond_12
    const-class v0, [F

    .line 7533
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, p1, [F

    if-nez v0, :cond_15

    :cond_13
    const-class v0, [D

    .line 7534
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, p1, [D

    if-nez v0, :cond_15

    :cond_14
    const-class v0, [Ljava/lang/Class;

    .line 7535
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p1, [Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_16

    :cond_15
    return v1

    .line 7537
    :cond_16
    const-class v0, [Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    instance-of v0, p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v0, :cond_19

    .line 7538
    check-cast p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    check-cast p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_18

    aget-object v4, p1, v3

    .line 7539
    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_18
    return v1

    .line 7544
    :cond_19
    const-class v0, [Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    instance-of v0, p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_1c

    .line 7545
    check-cast p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    check-cast p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1b

    aget-object v4, p1, v3

    .line 7546
    invoke-interface {v4}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1b
    return v1

    :cond_1c
    return v2
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 7444
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 0

    .line 7451
    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableTo(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 7458
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 0

    .line 7465
    invoke-static {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isGenerified()Z
    .locals 3

    .line 7763
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 7765
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isStatic()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 7768
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7769
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isGenerified()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public isInHierarchyWith(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 7472
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 7479
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isInnerClass()Z
    .locals 1

    .line 7789
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestedClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 0

    .line 7507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isMemberType()Z
    .locals 1

    .line 7899
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isLocalType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAnonymousType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNestHost()Z
    .locals 1

    .line 7878
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNestMateOf(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 7885
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 7892
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isNestedClass()Z
    .locals 1

    .line 7796
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPackageType()Z
    .locals 2

    .line 7756
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package-info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveWrapper()Z
    .locals 1

    .line 7686
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    .line 7687
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Short;

    .line 7688
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Character;

    .line 7689
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    .line 7690
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Long;

    .line 7691
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Float;

    .line 7692
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Double;

    .line 7693
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 7619
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7622
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 7629
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7630
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7631
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isProtected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    .line 7906
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 0

    .line 7725
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 7927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "interface"

    goto :goto_0

    :cond_1
    const-string v1, "class"

    :goto_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
