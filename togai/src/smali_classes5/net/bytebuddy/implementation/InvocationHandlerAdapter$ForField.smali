.class public Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;
.super Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
.source "InvocationHandlerAdapter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    iput-object p5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    .line 425
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const-class v1, Ljava/lang/reflect/InvocationHandler;

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 431
    new-instance p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;-><init>(Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object p1

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not declare a type that is assignable to invocation handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find a field named \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    check-cast p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation;
    .locals 7

    .line 406
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->cached:Z

    iget-boolean v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->privileged:Z

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v6
.end method

.method public withPrivilegedLookup()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$AssignerConfigurable;
    .locals 7

    .line 411
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->cached:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v6
.end method

.method public withoutMethodCache()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;
    .locals 7

    .line 401
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->privileged:Z

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v6
.end method
