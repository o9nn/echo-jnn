.class public Lnet/bytebuddy/implementation/InvokeDynamic;
.super Ljava/lang/Object;
.source "InvokeDynamic.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$Appender;,
        Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;,
        Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;,
        Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;,
        Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;,
        Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field protected final bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field protected final handleArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field protected final invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

.field protected final terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

.field protected final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    iput-object p4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iput-object p5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-void
.end method

.method public static bootstrap(Ljava/lang/reflect/Constructor;Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;"
        }
    .end annotation

    .line 193
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;

    move-result-object p0

    return-object p0
.end method

.method public static varargs bootstrap(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;"
        }
    .end annotation

    .line 175
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;

    move-result-object p0

    return-object p0
.end method

.method public static bootstrap(Ljava/lang/reflect/Method;Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;"
        }
    .end annotation

    .line 157
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;

    move-result-object p0

    return-object p0
.end method

.method public static varargs bootstrap(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;
    .locals 1

    .line 138
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;

    move-result-object p0

    return-object p0
.end method

.method public static bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 232
    invoke-static {}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofNullConstant()Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    move-result-object v1

    goto :goto_1

    .line 233
    :cond_0
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 234
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofPrimitiveType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v1

    goto :goto_1

    .line 236
    :cond_1
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    goto :goto_1

    .line 237
    :cond_2
    instance-of v2, v1, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    invoke-static {v2}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->ofPrimitiveType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v1

    goto :goto_1

    .line 239
    :cond_3
    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v1

    goto :goto_1

    .line 241
    :cond_4
    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 242
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v1

    .line 244
    :cond_5
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_6
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isInvokeBootstrap(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 251
    instance-of v1, v0, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v1, :cond_7

    .line 252
    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    goto :goto_3

    .line 253
    :cond_7
    instance-of v1, v0, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v1, :cond_8

    .line 254
    check-cast v0, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v0}, Lnet/bytebuddy/utility/JavaConstant;->asConstantPoolValue()Ljava/lang/Object;

    move-result-object v0

    .line 256
    :cond_8
    :goto_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    :cond_9
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;

    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    invoke-direct {v4}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>()V

    sget-object v5, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1

    .line 247
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid bootstrap method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;
    .locals 0

    .line 211
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;

    move-result-object p0

    return-object p0
.end method

.method public static lambda(Ljava/lang/reflect/Method;Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;"
        }
    .end annotation

    .line 283
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic;->lambda(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    move-result-object p0

    return-object p0
.end method

.method public static lambda(Ljava/lang/reflect/Method;Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;"
        }
    .end annotation

    .line 304
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lnet/bytebuddy/implementation/InvokeDynamic;->lambda(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    move-result-object p0

    return-object p0
.end method

.method public static lambda(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 1

    .line 324
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default;->forJavaHierarchy()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic;->lambda(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    move-result-object p0

    return-object p0
.end method

.method public static lambda(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 13

    .line 347
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object p2

    .line 351
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object p2

    .line 352
    invoke-virtual {p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->asMethodList()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p2

    .line 353
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodList;

    .line 354
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 357
    new-instance p1, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$Latent;

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/4 v2, 0x0

    new-array v4, v2, [Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v5, "java.lang.invoke.LambdaMetafactory"

    invoke-direct {v3, v5, v1, v0, v4}, Lnet/bytebuddy/description/type/TypeDescription$Latent;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;[Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const-string v4, "metafactory"

    const/16 v5, 0x9

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    .line 363
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/bytebuddy/description/method/ParameterDescription$Token;

    new-instance v8, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v9, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    .line 364
    invoke-virtual {v9}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    invoke-interface {v9}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v9

    invoke-direct {v8, v9}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    aput-object v8, v0, v2

    new-instance v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v8, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    .line 365
    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v8

    invoke-direct {v2, v8}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    aput-object v2, v0, v1

    new-instance v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 366
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 367
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 368
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 369
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 364
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    sget-object v11, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v12, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 374
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->asDefined()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v0

    .line 375
    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    .line 376
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->asDefined()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 357
    invoke-static {p1, p0}, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;

    move-result-object p0

    .line 376
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->asDefined()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;->invoke(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    move-result-object p0

    return-object p0

    .line 355
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not define exactly one abstract method: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not an interface type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 9

    .line 896
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    new-instance v8, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    sget-object v5, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->DROPPING:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    invoke-direct {v0, v8, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 10

    .line 883
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v9, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    sget-object v6, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->DROPPING:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    .line 916
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    check-cast p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 909
    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withArgument(I)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 9

    if-ltz p1, :cond_0

    .line 731
    new-instance v8, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfArgument;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfArgument;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;I)V

    return-object v8

    .line 729
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method parameter indices cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs withArgument([I)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 8

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 706
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    if-ltz v3, :cond_0

    .line 710
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForMethodParameter;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForMethodParameter;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method parameter indices cannot be negative: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_1
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 714
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 8

    .line 871
    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method

.method public varargs withBooleanValue([Z)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-boolean v3, p1, v2

    .line 389
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;-><init>(Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 393
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withByteValue([B)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 409
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForByteConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForByteConstant;-><init>(B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 413
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withCharacterValue([C)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 448
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    .line 449
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForCharacterConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForCharacterConstant;-><init>(C)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 453
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withDoubleValue([D)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 528
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    .line 529
    new-instance v5, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForDoubleConstant;

    invoke-direct {v5, v3, v4}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForDoubleConstant;-><init>(D)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 533
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withEnumeration([Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 634
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 635
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;-><init>(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 637
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 639
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public withField(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 1

    .line 840
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic;->withField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public withField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 10

    .line 852
    new-instance v9, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v9

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfField;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v9
.end method

.method public varargs withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 821
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 822
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForField;

    invoke-direct {v4, v3, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForField;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object p2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 826
    invoke-interface {p2, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 808
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFloatValue([F)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 509
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForFloatConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForFloatConstant;-><init>(F)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 513
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public withImplicitAndMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 8

    .line 792
    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    sget-object v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodInstanceAndParameters;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodInstanceAndParameters;

    .line 794
    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArgument(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method

.method public varargs withInstance([Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 655
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 656
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 660
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withIntegerValue([I)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 469
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForIntegerConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForIntegerConstant;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 473
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withLongValue([J)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 488
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    .line 489
    new-instance v5, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForLongConstant;

    invoke-direct {v5, v3, v4}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForLongConstant;-><init>(J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 493
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public withMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 8

    .line 777
    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    sget-object v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodParameters;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodParameters;

    .line 779
    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArgument(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method

.method public varargs withNullValue([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic;"
        }
    .end annotation

    .line 673
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withNullValue([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withNullValue([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 8

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 685
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 688
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForNullValue;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForNullValue;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot assign null to primitive type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 690
    :cond_1
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 692
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public withReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 9

    .line 573
    new-instance v8, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfInstance;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfInstance;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/Object;)V

    return-object v8
.end method

.method public varargs withReference([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 592
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 593
    invoke-static {v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInstance;->of(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 597
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withShortValue([S)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 428
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, p1, v2

    .line 429
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForShortConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForShortConstant;-><init>(S)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 433
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withThis([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic;"
        }
    .end annotation

    .line 748
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withThis([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withThis([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 760
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 761
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForThisInstance;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForThisInstance;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 765
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withType([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 614
    new-instance v4, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForClassConstant;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForClassConstant;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 618
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method

.method public varargs withValue([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 10

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 553
    invoke-static {v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->of(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    .line 557
    invoke-interface {v1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v8, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object p1
.end method
