.class public Lnet/bytebuddy/asm/Advice$WithCustomMapping;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithCustomMapping"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final offsetMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 10622
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;)V"
        }
    .end annotation

    .line 10630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10732
    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/Enum;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10756
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10644
    invoke-static {p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/reflect/Constructor;I)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;I)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    if-ltz p3, :cond_1

    .line 10704
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-le v0, p3, :cond_0

    .line 10707
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2, p3}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1

    .line 10705
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " does not declare a parameter with index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10703
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "A parameter cannot be negative: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10657
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/reflect/Method;I)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "I)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    if-ltz p3, :cond_1

    .line 10686
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-le v0, p3, :cond_0

    .line 10689
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2, p3}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1

    .line 10687
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " does not declare a parameter with index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10685
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "A parameter cannot be negative: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$OffsetMapping;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10845
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;-><init>(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$OffsetMapping;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10768
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10671
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Resolved$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Resolved$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/field/FieldDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10720
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10744
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10820
    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10833
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10856
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 10857
    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10859
    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10862
    new-instance p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-direct {p1, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>(Ljava/util/Map;)V

    return-object p1

    .line 10860
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Annotation type already mapped: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10858
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an annotation type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindProperty(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10807
    invoke-static {p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->of(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindSerialized(Ljava/lang/Class;Ljava/io/Serializable;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Serializable;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10781
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindSerialized(Ljava/lang/Class;Ljava/io/Serializable;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindSerialized(Ljava/lang/Class;Ljava/io/Serializable;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            "S::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TS;",
            "Ljava/lang/Class<",
            "-TS;>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    .line 10795
    invoke-static {p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForSerializedValue$Factory;->of(Ljava/lang/Class;Ljava/io/Serializable;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    check-cast p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 10873
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 10907
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 10909
    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    const/4 v4, 0x0

    .line 10910
    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    move-object v0, v2

    .line 10908
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 10922
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 10884
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    .line 10935
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 2

    .line 10947
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p2, p3, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 2

    .line 10895
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p2, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method
