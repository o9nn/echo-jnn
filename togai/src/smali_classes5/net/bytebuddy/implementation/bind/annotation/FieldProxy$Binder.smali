.class public Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;
.super Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFieldBinding;
.source "FieldProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Binder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$InstanceFieldConstructor;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$StaticFieldConstructor;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFieldBinding<",
        "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final FIELD_NAME:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SERIALIZABLE_PROXY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
.field private final fieldResolverFactory:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "declaringType"

    .line 119
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "value"

    .line 120
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->FIELD_NAME:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "serializableProxy"

    .line 121
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->SERIALIZABLE_PROXY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 1

    .line 251
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory$Simplex;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory$Simplex;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;-><init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 1

    .line 262
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory$Duplex;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory$Duplex;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;-><init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFieldBinding;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->fieldResolverFactory:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;

    return-void
.end method

.method public static install(Ljava/lang/Class;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->install(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    move-result-object p0

    return-object p0
.end method

.method public static install(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->install(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    move-result-object p0

    return-object p0
.end method

.method public static install(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 153
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 156
    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    .line 157
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 160
    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 161
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 164
    new-instance v2, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v2, p0, v1, v0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v2

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " does not declare a setter with an Object type"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " does not declare a getter with an Object type"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " does not declare exactly two non-abstract methods"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not public"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " must not extend other interfaces"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not an interface"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static install(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-static {p0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->onlyMethod(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p0

    .line 203
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-static {p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->onlyMethod(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    .line 209
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 212
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must declare a single Object-typed parameters"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must return void"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " must not declare parameters"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " must take a single Object-typed parameter"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static onlyMethod(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    .line 225
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 233
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 236
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object p0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " must declare exactly one abstract method"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not public"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " must not extend other interfaces"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not an interface"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected bind(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            ")",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;"
        }
    .end annotation

    iget-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->fieldResolverFactory:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;

    .line 298
    invoke-interface {p4}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p4

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

    move-result-object v4

    .line 299
    invoke-interface {v4}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;->isResolved()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 300
    new-instance p3, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;

    new-instance p4, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;

    .line 301
    invoke-interface {p5}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    sget-object p5, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->SERIALIZABLE_PROXY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 304
    invoke-interface {p2, p5}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    const-class p5, Ljava/lang/Boolean;

    invoke-interface {p2, p5}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;-><init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Z)V

    invoke-direct {p3, p4}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p3

    .line 306
    :cond_0
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    return-object p1
.end method

.method protected declaringType(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 288
    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->fieldResolverFactory:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->fieldResolverFactory:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method protected fieldName(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->FIELD_NAME:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 283
    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHandledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;",
            ">;"
        }
    .end annotation

    .line 278
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;->fieldResolverFactory:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
