.class public Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final FIELD_PREFIX:Ljava/lang/String; = "methodCall"


# instance fields
.field private final name:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->value:Ljava/lang/Object;

    .line 1496
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "methodCall$"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->name:Ljava/lang/String;

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->value:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;
    .locals 2

    .line 1514
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->name:Ljava/lang/String;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 4

    .line 1503
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->value:Ljava/lang/Object;

    .line 1506
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    const/16 v3, 0x1009

    invoke-direct {v0, v1, v3, v2}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1504
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1507
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method
