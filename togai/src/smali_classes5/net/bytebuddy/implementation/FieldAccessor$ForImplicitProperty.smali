.class public Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;
.super Lnet/bytebuddy/implementation/FieldAccessor;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForImplicitProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty$Appender;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;)V
    .locals 2

    .line 631
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {p0, p1, v0, v1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 642
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/FieldAccessor;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    .line 656
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty$Appender;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;->prepare(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty$Appender;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;)V

    return-object v0
.end method

.method public in(Ljava/lang/Class;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;"
        }
    .end annotation

    .line 813
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->in(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;

    move-result-object p1

    return-object p1
.end method

.method public in(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
    .locals 1

    .line 820
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForExactType$Factory;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForExactType$Factory;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->in(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;

    move-result-object p1

    return-object p1
.end method

.method public in(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
    .locals 3

    .line 827
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;->with(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {v0, p1, v1, v2}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public setsArgumentAt(I)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 7

    if-ltz p1, :cond_0

    .line 666
    new-instance v6, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v4, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;I)V

    return-object v6

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A parameter index cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setsDefaultValue()Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 5

    .line 677
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v4, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V

    return-object v0
.end method

.method public setsFieldValueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 1

    .line 788
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor$ForFixedValue;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor$ForFixedValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsFieldValueOf(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public setsFieldValueOf(Ljava/lang/reflect/Field;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 1

    .line 770
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsFieldValueOf(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public setsFieldValueOf(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 7

    .line 777
    new-instance v6, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfFieldValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v4, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    new-instance v5, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;

    invoke-direct {v5, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfFieldValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;)V

    return-object v6
.end method

.method public setsFieldValueOf(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 7

    .line 795
    new-instance v6, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfFieldValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v4, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    new-instance v5, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;

    invoke-direct {v5, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfFieldValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;)V

    return-object v6
.end method

.method public setsReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 2

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixedFieldValue$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsReference(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public setsReference(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 8

    .line 758
    new-instance v7, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v4, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v7
.end method

.method public setsValue(Ljava/lang/Object;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 2

    .line 684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 685
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 686
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    const-class p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 687
    :cond_0
    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 688
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 689
    :cond_1
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    .line 690
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 691
    :cond_2
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_3

    .line 692
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 693
    :cond_3
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_4

    .line 694
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 695
    :cond_4
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_5

    .line 696
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 697
    :cond_5
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_6

    .line 698
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 699
    :cond_6
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_7

    .line 700
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->forValue(J)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 701
    :cond_7
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_8

    .line 702
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->forValue(F)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 703
    :cond_8
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_9

    .line 704
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 705
    :cond_9
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 706
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 707
    :cond_a
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 708
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1

    .line 710
    :cond_b
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public setsValue(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 1

    .line 718
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 0

    .line 732
    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 8

    .line 739
    new-instance v7, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfConstantValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v4, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    move-object v0, v7

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfConstantValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v7
.end method

.method public setsValue(Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 1

    .line 725
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-interface {p1}, Lnet/bytebuddy/utility/JavaConstant;->getType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->setsValue(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/FieldAccessor$PropertyConfigurable;
    .locals 2

    .line 806
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    invoke-direct {v0, v1, p1, p2}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v0
.end method
