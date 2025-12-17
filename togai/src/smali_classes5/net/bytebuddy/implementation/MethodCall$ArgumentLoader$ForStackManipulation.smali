.class public Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForStackManipulation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1786
    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0

    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;
    .locals 3

    if-nez p0, :cond_0

    .line 1809
    sget-object p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForNullConstant;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForNullConstant;

    return-object p0

    .line 1810
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1811
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    const-class p0, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1812
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1813
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1814
    :cond_2
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 1815
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1816
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 1817
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1818
    :cond_4
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 1819
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1820
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1821
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1822
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 1823
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->forValue(J)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1824
    :cond_7
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 1825
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->forValue(F)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1826
    :cond_8
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 1827
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1828
    :cond_9
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 1829
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    const-class v1, Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1830
    :cond_a
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1831
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    sget-object p0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0

    .line 1832
    :cond_b
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1833
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    sget-object p0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0

    .line 1834
    :cond_c
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_d

    .line 1835
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    check-cast p0, Ljava/lang/Enum;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    .line 1836
    new-instance p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    invoke-interface {v0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object p0

    .line 1838
    :cond_d
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;-><init>(Ljava/lang/Object;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;
    .locals 0

    return-object p0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;",
            ">;"
        }
    .end annotation

    .line 1860
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toStackManipulation(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 1867
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {p2, v0, v1, p3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    .line 1868
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1871
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p3, 0x2

    new-array p3, p3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    aput-object p2, p3, v0

    invoke-direct {p1, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1

    .line 1869
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot assign "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
