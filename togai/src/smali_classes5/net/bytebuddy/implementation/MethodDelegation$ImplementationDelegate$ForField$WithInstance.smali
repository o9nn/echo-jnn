.class public Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;
.super Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField;
.source "MethodDelegation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithInstance"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final target:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Ljava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/Object;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")V"
        }
    .end annotation

    .line 1009
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Ljava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;)V

    iput-object p5, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->target:Ljava/lang/Object;

    iput-object p6, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->target:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->target:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 4

    .line 1018
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldName:Ljava/lang/String;

    const/16 v2, 0x1049

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1019
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldName:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->target:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1022
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method protected resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1027
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldName:Ljava/lang/String;

    .line 1031
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->fieldType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldList;

    .line 1032
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    return-object p1

    .line 1028
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not visible to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
