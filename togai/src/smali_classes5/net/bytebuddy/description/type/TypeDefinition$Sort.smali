.class public final enum Lnet/bytebuddy/description/type/TypeDefinition$Sort;
.super Ljava/lang/Enum;
.source "TypeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDefinition$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 170
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v1, "NON_GENERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 175
    new-instance v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v2, "GENERIC_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 180
    new-instance v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v3, "PARAMETERIZED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 185
    new-instance v3, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v4, "WILDCARD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 190
    new-instance v4, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v5, "VARIABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 196
    new-instance v5, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v6, "VARIABLE_SYMBOLIC"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    filled-new-array/range {v0 .. v5}, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->$VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 205
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0
.end method

.method protected static describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 217
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 219
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;-><init>(Ljava/lang/reflect/GenericArrayType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 221
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 222
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;-><init>(Ljava/lang/reflect/ParameterizedType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 223
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 224
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;-><init>(Ljava/lang/reflect/TypeVariable;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 225
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 226
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$ForLoadedType;-><init>(Ljava/lang/reflect/WildcardType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 228
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 165
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->$VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 165
    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object v0
.end method


# virtual methods
.method public isGenericArray()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNonGeneric()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParameterized()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWildcard()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
