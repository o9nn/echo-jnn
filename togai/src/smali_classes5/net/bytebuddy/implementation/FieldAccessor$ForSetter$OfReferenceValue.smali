.class public Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;
.super Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.source "FieldAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfReferenceValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/implementation/FieldAccessor$ForSetter<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final PREFIX:Ljava/lang/String; = "fixedFieldValue"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1255
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V

    iput-object p5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    iput-object p6, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 9

    .line 1308
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    new-instance v8, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v5, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    iget-object v7, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 10

    .line 1296
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v9, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v6, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    iget-object v7, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    iget-object v8, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .locals 0

    .line 1221
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->initialize(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method protected initialize(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 1

    .line 1273
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    return-object p1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 4

    .line 1264
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    .line 1265
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    const/16 v3, 0x1009

    invoke-direct {v0, v1, v3, v2}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1266
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic resolve(Ljava/lang/Object;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 1221
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->resolve(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1
.end method

.method protected resolve(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 1283
    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->isFinal()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->isMethod()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 1284
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set final field "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1286
    :cond_1
    :goto_0
    new-instance p3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p4, 0x2

    new-array p4, p4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1287
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p4, v0

    iget-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->value:Ljava/lang/Object;

    .line 1288
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p1, v0, p2, v1}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p4, p2

    invoke-direct {p3, p4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p3
.end method
