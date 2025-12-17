.class public Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "InstrumentedType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field private static final KEYWORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final annotationDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousClass:Z

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final fieldTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

.field private final localClass:Z

.field private final methodTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final nestHost:Lnet/bytebuddy/description/type/TypeDescription;

.field private final nestMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

.field private final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 51

    .line 427
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "abstract"

    const-string v2, "continue"

    const-string v3, "for"

    const-string v4, "new"

    const-string v5, "switch"

    const-string v6, "assert"

    const-string v7, "default"

    const-string v8, "goto"

    const-string v9, "package"

    const-string v10, "synchronized"

    const-string v11, "boolean"

    const-string v12, "do"

    const-string v13, "if"

    const-string v14, "private"

    const-string v15, "this"

    const-string v16, "break"

    const-string v17, "double"

    const-string v18, "implements"

    const-string v19, "protected"

    const-string v20, "throw"

    const-string v21, "byte"

    const-string v22, "else"

    const-string v23, "import"

    const-string v24, "public"

    const-string v25, "throws"

    const-string v26, "case"

    const-string v27, "enum"

    const-string v28, "instanceof"

    const-string v29, "return"

    const-string v30, "transient"

    const-string v31, "catch"

    const-string v32, "extends"

    const-string v33, "int"

    const-string v34, "short"

    const-string v35, "try"

    const-string v36, "char"

    const-string v37, "final"

    const-string v38, "interface"

    const-string v39, "static"

    const-string v40, "void"

    const-string v41, "class"

    const-string v42, "finally"

    const-string v43, "long"

    const-string v44, "strictfp"

    const-string v45, "volatile"

    const-string v46, "const"

    const-string v47, "float"

    const-string v48, "native"

    const-string v49, "super"

    const-string v50, "while"

    filled-new-array/range {v1 .. v50}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->KEYWORDS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;ZZ",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 564
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    move-object v1, p4

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v1, p5

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    move-object v1, p9

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-object v1, p10

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-object v1, p11

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object v1, p12

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object v1, p13

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move/from16 v1, p15

    iput-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v1, p18

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    return-void
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->KEYWORDS:Ljava/util/Set;

    .line 1482
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "package-info"

    .line 1484
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 1487
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1488
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private static isValidIdentifier([Ljava/lang/String;)Z
    .locals 4

    .line 1464
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1467
    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1468
    invoke-static {v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static of(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    .line 606
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    invoke-virtual {v0, p0, p2, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 594
    invoke-static {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result p2

    invoke-static {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->of(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 1113
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 1143
    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForTokens;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/field/FieldList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 1150
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForTokens;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/MethodList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    .line 1082
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    .line 1136
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$WithResolvedErasure;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$WithResolvedErasure;-><init>(Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1178
    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    :goto_0
    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1187
    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    .line 1188
    invoke-static {p0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1189
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1104
    new-instance v1, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1106
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v0, :cond_0

    .line 1127
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1129
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    :goto_0
    return-object v0
.end method

.method public getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    .line 1157
    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes;->attachVariables(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    return v0
.end method

.method public validated()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 30

    move-object/from16 v0, p0

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier([Ljava/lang/String;)Z

    move-result v1

    const-string v2, " for "

    if-eqz v1, :cond_72

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v1

    const v3, -0x27620

    and-int/2addr v1, v3

    const-string v3, "Illegal modifiers "

    if-nez v1, :cond_71

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isPackageType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v1

    const/16 v4, 0x1600

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 1201
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1203
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1205
    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->SUPER_CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1207
    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1209
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1210
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invisible super type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1208
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal type annotations on super class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1206
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal super class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1213
    :cond_5
    :goto_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1215
    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->INTERFACE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1217
    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1219
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1221
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 1222
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invisible interface type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1220
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Already implemented interface "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1218
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal type annotations on interface "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1216
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal interface "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1225
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    .line 1226
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_3

    .line 1227
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot define throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to be generic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1229
    :cond_c
    :goto_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1230
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Illegal interface bound "

    const-string v8, "Duplicate bound "

    const-string v9, "Illegal type variable bound "

    const-string v10, " does not define at least one bound"

    const-string v11, "Type variable "

    const-string v12, "Illegal type annotation on \'"

    const-string v14, "Illegal type variable name \'"

    const-string v15, "Duplicate type variable symbol \'"

    const-string v7, "\' for "

    const-string v13, " of "

    if-eqz v5, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object/from16 v17, v1

    .line 1231
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 1232
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1234
    invoke-static {v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1236
    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->ofFormalTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1240
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1241
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v16, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1242
    sget-object v14, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->TYPE_VARIABLE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v12, v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1244
    sget-object v14, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v12, v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1246
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    if-eqz v16, :cond_e

    .line 1248
    invoke-interface {v12}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v14

    invoke-virtual {v14}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isTypeVariable()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-interface {v12}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_6

    .line 1249
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_6
    const/16 v16, 0x1

    goto :goto_5

    .line 1247
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1245
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal type annotations on type variable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1243
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz v16, :cond_13

    move-object/from16 v1, v17

    goto/16 :goto_4

    .line 1254
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1237
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1233
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1257
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const-string v4, "Cannot define array type or primitive type "

    if-eqz v1, :cond_19

    .line 1258
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_7

    .line 1259
    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " + as enclosing type for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1261
    :cond_19
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 1262
    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isTypeInitializer()Z

    move-result v17

    if-nez v17, :cond_1a

    goto :goto_8

    .line 1263
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot enclose type declaration in class initializer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_8
    move-object/from16 v17, v3

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1267
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_9

    .line 1268
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as declaring type for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    if-nez v1, :cond_1f

    if-nez v5, :cond_1f

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isLocalType()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isAnonymousType()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_9

    .line 1271
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot define an anonymous or local class without a declaring type for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1273
    :cond_1f
    :goto_9
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    .line 1275
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v18

    if-nez v18, :cond_21

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_21

    .line 1277
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    move-object/from16 v5, v19

    goto :goto_a

    .line 1278
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate definition of declared type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1276
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + as declared type for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1281
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    .line 1282
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v18, v1

    const-string v1, " + within different package then "

    if-eqz v5, :cond_26

    .line 1283
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    .line 1285
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v19

    if-nez v19, :cond_25

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v19

    if-nez v19, :cond_25

    .line 1287
    invoke-interface {v5, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 1289
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v5, v20

    goto :goto_b

    .line 1290
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate definition of nest member "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1288
    :cond_24
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot define nest member "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1286
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + as nest member of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1293
    :cond_26
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v5

    if-nez v5, :cond_70

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_70

    .line 1295
    invoke-interface {v3, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1298
    :cond_27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " on "

    move-object/from16 v19, v15

    const-string v15, "Cannot add "

    move-object/from16 v20, v14

    const-string v14, "Duplicate annotation "

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object/from16 v21, v3

    .line 1300
    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v22, v7

    sget-object v7, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isAnnotation()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v3

    sget-object v7, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1302
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isPackageType()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v3

    sget-object v7, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_d

    .line 1303
    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1304
    :cond_2a
    :goto_d
    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v3, v21

    move-object/from16 v7, v22

    goto :goto_c

    .line 1305
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    move-object/from16 v22, v7

    .line 1308
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v7, "Illegal type annotations on "

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 1310
    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v3

    .line 1311
    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->asSignatureToken()Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1313
    invoke-static/range {v21 .. v21}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1315
    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getModifiers()I

    move-result v3

    const v21, -0x250e0

    and-int v3, v3, v21

    if-nez v3, :cond_34

    .line 1318
    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    move-object/from16 v21, v1

    .line 1319
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->FIELD:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1321
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1323
    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_f

    .line 1324
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invisible field type "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1326
    :cond_2e
    :goto_f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1327
    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object/from16 v24, v3

    .line 1328
    invoke-interface {v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v25, v12

    sget-object v12, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1330
    invoke-interface {v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object/from16 v3, v24

    move-object/from16 v12, v25

    goto :goto_10

    .line 1331
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1329
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    move-object/from16 v1, v21

    move-object/from16 v3, v23

    goto/16 :goto_e

    .line 1322
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1320
    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal field type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1316
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Illegal field modifiers "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getModifiers()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1314
    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal field name for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1312
    :cond_36
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate field definition for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    move-object/from16 v25, v12

    .line 1335
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1336
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 1337
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6d

    .line 1339
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getModifiers()I

    move-result v12

    and-int/lit16 v12, v12, -0x1e00

    if-nez v12, :cond_6c

    .line 1342
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1343
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_12
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_42

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v1

    move-object/from16 v1, v23

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object/from16 v23, v3

    .line 1344
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v3

    .line 1345
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_41

    .line 1347
    invoke-static {v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1349
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->ofFormalTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1353
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1354
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v26

    const/16 v27, 0x0

    :goto_13
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v12

    move-object/from16 v12, v28

    check-cast v12, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object/from16 v28, v7

    .line 1355
    sget-object v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->TYPE_VARIABLE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v12, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1357
    sget-object v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v12, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1359
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    if-eqz v27, :cond_39

    .line 1361
    invoke-interface {v12}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v7

    invoke-virtual {v7}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isTypeVariable()Z

    move-result v7

    if-nez v7, :cond_38

    invoke-interface {v12}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_38

    goto :goto_14

    .line 1362
    :cond_38
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_39
    :goto_14
    move-object/from16 v7, v28

    move-object/from16 v12, v29

    const/16 v27, 0x1

    goto :goto_13

    .line 1360
    :cond_3a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1358
    :cond_3b
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal type annotations on bound "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1356
    :cond_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3d
    move-object/from16 v28, v7

    move-object/from16 v29, v12

    if-eqz v27, :cond_3e

    move-object/from16 v3, v23

    move-object/from16 v1, v24

    move-object/from16 v7, v28

    move-object/from16 v12, v29

    goto/16 :goto_12

    .line 1367
    :cond_3e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1350
    :cond_3f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v7, v25

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_40
    move-object/from16 v3, v22

    .line 1348
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v12, v20

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    move-object/from16 v3, v22

    .line 1346
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    move-object/from16 v24, v1

    move-object/from16 v23, v3

    move-object/from16 v28, v7

    move-object/from16 v12, v20

    move-object/from16 v3, v22

    move-object/from16 v7, v25

    .line 1370
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    .line 1371
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isTypeInitializer()Z

    move-result v20

    if-nez v20, :cond_6b

    .line 1373
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v20

    if-eqz v20, :cond_45

    move-object/from16 v22, v3

    .line 1374
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1376
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    goto/16 :goto_15

    .line 1377
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The void non-type must not be annotated for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1375
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A constructor must return void "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    move-object/from16 v22, v3

    .line 1379
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1381
    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->METHOD_RETURN:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1383
    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1385
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_15

    .line 1386
    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invisible return type "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1388
    :cond_47
    :goto_15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1389
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-object/from16 v20, v6

    .line 1390
    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    move-object/from16 v25, v7

    .line 1391
    sget-object v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->METHOD_PARAMETER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 1393
    sget-object v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1395
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_49

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_17

    .line 1396
    :cond_48
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invisible parameter type of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1398
    :cond_49
    :goto_17
    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->isNamed()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1399
    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1400
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1402
    invoke-static {v6}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_18

    .line 1403
    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal parameter name of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_4b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Duplicate parameter name of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    :cond_4c
    :goto_18
    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->hasModifiers()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getModifiers()I

    move-result v6

    const v7, -0x9011

    and-int/2addr v6, v7

    if-nez v6, :cond_4d

    goto :goto_19

    .line 1407
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal modifiers of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1409
    :cond_4e
    :goto_19
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1410
    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_51

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v1

    move-object/from16 v1, v26

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object/from16 v26, v7

    .line 1411
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v7

    move-object/from16 v29, v8

    sget-object v8, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1413
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    move-object/from16 v7, v26

    move-object/from16 v1, v27

    move-object/from16 v8, v29

    goto :goto_1a

    .line 1414
    :cond_4f
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1412
    :cond_50
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_51
    move-object/from16 v6, v20

    move-object/from16 v3, v21

    move-object/from16 v7, v25

    goto/16 :goto_16

    .line 1394
    :cond_52
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal type annotations on parameter "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1392
    :cond_53
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal parameter type of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    move-object/from16 v20, v6

    move-object/from16 v25, v7

    move-object/from16 v29, v8

    .line 1418
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1419
    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->EXCEPTION:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v3, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1421
    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v3, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1423
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_55

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v6

    if-eqz v6, :cond_56

    goto :goto_1b

    .line 1424
    :cond_56
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invisible exception type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1422
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1420
    :cond_58
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal exception type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    move-object/from16 v6, v28

    .line 1427
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1428
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1429
    invoke-interface {v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isMethod()Z

    move-result v21

    if-eqz v21, :cond_5a

    sget-object v21, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    goto :goto_1d

    :cond_5a
    sget-object v21, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    :goto_1d
    move-object/from16 v26, v3

    move-object/from16 v3, v21

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1431
    invoke-interface {v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move-object/from16 v3, v26

    goto :goto_1c

    .line 1432
    :cond_5b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1430
    :cond_5c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1435
    :cond_5d
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 1436
    invoke-interface {v4, v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isDefaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_1e

    .line 1437
    :cond_5e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Illegal default value "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1439
    :cond_5f
    :goto_1e
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 1440
    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->RECEIVER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_60

    goto :goto_1f

    .line 1441
    :cond_60
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal receiver type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1442
    :cond_61
    :goto_1f
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_63

    if-nez v1, :cond_62

    goto :goto_21

    .line 1444
    :cond_62
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Static method "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defines a non-null receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1446
    :cond_63
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v3

    const-string v7, " defines an illegal receiver "

    if-eqz v3, :cond_66

    if-eqz v1, :cond_65

    .line 1447
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    if-nez v18, :cond_64

    move-object v8, v0

    goto :goto_20

    :cond_64
    move-object/from16 v8, v18

    :goto_20
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_21

    .line 1448
    :cond_65
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Constructor "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_66
    if-eqz v1, :cond_67

    .line 1450
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    :goto_21
    move-object v7, v6

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move-object/from16 v1, v24

    move-object/from16 v8, v29

    move-object/from16 v20, v12

    goto/16 :goto_11

    .line 1451
    :cond_67
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Method "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1384
    :cond_68
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal type annotations on return type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1382
    :cond_69
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal return type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1380
    :cond_6a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal method name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1372
    :cond_6b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal explicit declaration of a type initializer by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1340
    :cond_6c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getModifiers()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1338
    :cond_6d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate method signature for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6e
    return-object v0

    .line 1296
    :cond_6f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot define nest host "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1294
    :cond_70
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + as nest host for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    move-object v5, v3

    .line 1199
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1197
    :cond_72
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal type name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 709
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    move-object/from16 v10, p1

    .line 716
    invoke-static {v9, v10}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v16, p1

    .line 982
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    const/16 v17, 0x0

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withDeclaredTypes(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 855
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    .line 868
    invoke-static {v15, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withDeclaredTypes(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withDeclaredTypes(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    .line 831
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 807
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 819
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withEnclosingType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 783
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v13, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withEnclosingType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withEnclosingType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 637
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    .line 642
    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Lnet/bytebuddy/description/field/FieldDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/field/FieldDescription$Token;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 1006
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    new-instance v12, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    move-object v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    const/4 v14, 0x0

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-direct {v12, v13}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;-><init>([Lnet/bytebuddy/implementation/LoadedTypeInitializer;)V

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 1030
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-object/from16 v11, p1

    .line 1038
    invoke-interface {v10, v11}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v10

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 685
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    .line 689
    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-interface {v8, v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v17, p1

    .line 958
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    const/16 v16, 0x0

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 661
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    .line 667
    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v3, p1

    .line 613
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withName(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 903
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public withNestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 733
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    move-object/from16 v1, p1

    .line 749
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    sget-object v1, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    :cond_0
    move-object/from16 v18, v1

    .line 752
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    move-object/from16 v1, v20

    move/from16 v21, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withNestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withNestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withNestMembers(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 759
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    sget-object v18, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v0, p1

    .line 776
    invoke-static {v1, v0}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withNestMembers(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withNestMembers(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 22

    move-object/from16 v0, p0

    .line 879
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    .line 882
    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Lnet/bytebuddy/description/type/TypeVariableToken;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeVariableToken;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method

.method public bridge synthetic withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withTypeVariables(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 927
    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    .line 929
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeVariableToken;

    .line 930
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v4, v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p2

    .line 931
    invoke-interface {v2, v0, v3}, Lnet/bytebuddy/dynamic/Transformer;->transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeVariableToken;

    goto :goto_1

    :cond_0
    move-object/from16 v2, p2

    .line 930
    :goto_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_0

    .line 934
    :cond_1
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v20

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v20
.end method
