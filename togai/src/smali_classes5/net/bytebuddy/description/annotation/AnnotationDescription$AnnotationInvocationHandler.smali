.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;
.super Ljava/lang/Object;
.source "AnnotationDescription.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationInvocationHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler$MissingValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final EQUALS:Ljava/lang/String; = "equals"

.field private static final HASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final NO_ARGUMENTS:[Ljava/lang/Object;

.field private static final TO_STRING:Ljava/lang/String; = "toString"


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static asWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 235
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 236
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 237
    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 238
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 239
    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 240
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 241
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 242
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 243
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 244
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 245
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 246
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 247
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 248
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 249
    const-class p0, Ljava/lang/Double;

    :cond_7
    return-object p0
.end method

.method private static defaultValueOf(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler$MissingValue;->of(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private equalsRepresentation(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    .line 331
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 333
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 335
    instance-of v2, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :try_start_0
    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 340
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    sget-object v4, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->represents(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_3

    :catch_0
    return v1

    :cond_4
    return v0

    :catch_1
    move-exception p1

    .line 353
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not access annotation property"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    return v1
.end method

.method private hashCodeRepresentation()I
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 312
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->isDefined()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x7f

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 204
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 205
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-nez v6, :cond_0

    .line 207
    invoke-static {v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->defaultValueOf(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v6

    .line 208
    :cond_0
    invoke-interface {v6, p0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v6

    .line 206
    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    aput-object p1, p2, v3

    .line 210
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    invoke-direct {v1, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    invoke-static {p0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 371
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 374
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    .line 375
    iget-object v3, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 378
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    iget-object v5, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 360
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 361
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    mul-int/lit8 v0, v0, 0x1f

    .line 362
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 259
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    .line 260
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCodeRepresentation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 262
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p2, 0x0

    .line 263
    aget-object p2, p3, p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->equalsRepresentation(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 264
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->toStringRepresentation()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    return-object p1

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 270
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object p1

    .line 271
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->asWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-object p1

    .line 272
    :cond_4
    new-instance p3, Ljava/lang/annotation/AnnotationTypeMismatchException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    throw p3
.end method

.method protected toStringRepresentation()Ljava/lang/String;
    .locals 6

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 288
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->isDefined()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v4, ", "

    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    .line 298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 299
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
