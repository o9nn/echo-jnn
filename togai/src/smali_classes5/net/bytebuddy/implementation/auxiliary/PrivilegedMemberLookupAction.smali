.class public final enum Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;
.super Ljava/lang/Enum;
.source "PrivilegedMemberLookupAction.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;",
        ">;",
        "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field private static final DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field public static final enum FOR_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field public static final enum FOR_DECLARED_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field public static final enum FOR_PUBLIC_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field public static final enum FOR_PUBLIC_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field private static final TYPE_FIELD:Ljava/lang/String; = "type"


# instance fields
.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 49
    new-instance v8, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v1, "FOR_PUBLIC_METHOD"

    const/4 v2, 0x0

    const-string v3, "getMethod"

    const-string v4, "name"

    const-class v5, Ljava/lang/String;

    const-string v6, "parameters"

    const-class v7, [Ljava/lang/Class;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v8, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 54
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v10, "FOR_DECLARED_METHOD"

    const/4 v11, 0x1

    const-string v12, "getDeclaredMethod"

    const-string v13, "name"

    const-class v14, Ljava/lang/String;

    const-string v15, "parameters"

    const-class v16, [Ljava/lang/Class;

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 59
    new-instance v7, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v2, "FOR_PUBLIC_CONSTRUCTOR"

    const/4 v3, 0x2

    const-string v4, "getConstructor"

    const-string v5, "parameters"

    const-class v6, [Ljava/lang/Class;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v7, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 64
    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v10, "FOR_DECLARED_CONSTRUCTOR"

    const/4 v11, 0x3

    const-string v12, "getDeclaredConstructor"

    const-string v13, "parameters"

    const-class v14, [Ljava/lang/Class;

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    filled-new-array {v8, v0, v7, v1}, [Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 74
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 75
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 76
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    :try_start_0
    new-instance p1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class p2, Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-static {p4, p5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    return-void

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Could not locate method: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    :try_start_0
    new-instance p1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class p2, Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p7, v0, v1

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 120
    invoke-interface {p1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {p1, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Could not locate method: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;
    .locals 3

    .line 131
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isPublic()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    :goto_0
    return-object p0

    .line 135
    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isMethod()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isPublic()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    goto :goto_1

    :cond_2
    sget-object p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    :goto_1
    return-object p0

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot load constant for type initializer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 44
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 44
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    return-object v0
.end method


# virtual methods
.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 7

    sget-object p3, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 150
    invoke-static {p3}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p3

    const-string v0, "type"

    invoke-static {v0}, Lnet/bytebuddy/implementation/FieldAccessor;->ofField(Ljava/lang/String;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;->setsArgumentAt(I)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p3

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 152
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 153
    invoke-static {v5}, Lnet/bytebuddy/implementation/FieldAccessor;->ofField(Ljava/lang/String;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v4}, Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;->setsArgumentAt(I)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v4

    invoke-interface {p3, v4}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p3

    move v4, v6

    goto :goto_0

    .line 155
    :cond_0
    new-instance v1, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v1, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object p2, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 156
    invoke-virtual {v1, p2}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    const-class v1, Ljava/security/PrivilegedExceptionAction;

    sget-object v4, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    .line 157
    invoke-virtual {p2, v1, v4}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 158
    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    .line 159
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    new-array p2, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v1, p2, v2

    .line 160
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    const-class p2, Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 161
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object p1

    .line 162
    invoke-interface {p1, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    const-string p2, "run"

    .line 163
    invoke-static {p2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 164
    invoke-static {p2}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p2

    .line 165
    invoke-virtual {p2, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 166
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/implementation/MethodCall;->withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p2

    .line 164
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    const-class p2, Ljava/lang/Class;

    new-array p3, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v1, p3, v2

    .line 167
    invoke-interface {p1, v0, p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 168
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Type;

    new-array v1, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v4, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v4, v1, v2

    invoke-interface {p1, v0, p3, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object p1

    goto :goto_1

    .line 171
    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
