.class final enum Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$1;
.super Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
.source "InstrumentedType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/InstrumentedType$1;)V

    return-void
.end method


# virtual methods
.method public represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21

    .line 358
    new-instance v19, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v2

    .line 360
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    .line 361
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v0, v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v4

    .line 362
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v5

    invoke-interface {v0, v5}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v5

    .line 363
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/field/FieldList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v6

    .line 364
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v0, v7}, Lnet/bytebuddy/description/method/MethodList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v7

    .line 365
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v8

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    sget-object v10, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    .line 368
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    .line 369
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v12

    .line 370
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v13

    .line 371
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v14

    .line 372
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v15

    .line 373
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v16

    .line 374
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 376
    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    move-object/from16 v17, v0

    .line 377
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v18

    move/from16 v20, v15

    invoke-static/range {v18 .. v18}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v15

    invoke-interface {v0, v15}, Lnet/bytebuddy/description/type/TypeList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    goto :goto_1

    :cond_1
    move/from16 v20, v15

    .line 379
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v15, v20

    invoke-direct/range {v0 .. v18}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v19
.end method
