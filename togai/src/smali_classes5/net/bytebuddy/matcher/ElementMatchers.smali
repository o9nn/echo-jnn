.class public final Lnet/bytebuddy/matcher/ElementMatchers;
.super Ljava/lang/Object;
.source "ElementMatchers.java"


# static fields
.field private static final BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static annotationType(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2122
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static annotationType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2133
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2144
    new-instance v0, Lnet/bytebuddy/matcher/AnnotationTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/AnnotationTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    return-object v0
.end method

.method public static anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 350
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    .line 352
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 356
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static varargs anyOf([Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 331
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 417
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 381
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Field;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">([",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 405
    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>([Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Method;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 393
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 369
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static cached(Lnet/bytebuddy/matcher/ElementMatcher;I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;I)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 115
    new-instance v0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;I)V

    return-object v0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Eviction size must be a positive number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cached(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lnet/bytebuddy/matcher/CachingMatcher;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/matcher/CachingMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static canThrow(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1351
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->canThrow(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static canThrow(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1363
    const-class v0, Ljava/lang/RuntimeException;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Error;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    .line 1365
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSuperTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_1

    .line 1363
    :cond_1
    :goto_0
    new-instance p0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    :goto_1
    return-object p0
.end method

.method public static declaresAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 960
    new-instance v0, Lnet/bytebuddy/matcher/DeclaringAnnotationMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DeclaringAnnotationMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static declaresException(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1404
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresException(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static declaresException(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1415
    const-class v0, Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    .line 1416
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    :goto_0
    return-object p0
.end method

.method public static declaresField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1972
    new-instance v0, Lnet/bytebuddy/matcher/DeclaringFieldMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DeclaringFieldMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static declaresGenericException(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1378
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static declaresGenericException(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1391
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isWildcard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    .line 1392
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    :goto_0
    return-object p0
.end method

.method public static declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1429
    new-instance v0, Lnet/bytebuddy/matcher/MethodExceptionTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodExceptionTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static declaresMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1983
    new-instance v0, Lnet/bytebuddy/matcher/DeclaringMethodMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DeclaringMethodMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lnet/bytebuddy/matcher/DefinedShapeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DefinedShapeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Lnet/bytebuddy/matcher/DefinedShapeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DefinedShapeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static definedParameter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 228
    new-instance v0, Lnet/bytebuddy/matcher/DefinedShapeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DefinedShapeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static erasure(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 544
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static erasure(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 556
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 568
    new-instance v0, Lnet/bytebuddy/matcher/ErasureMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/ErasureMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static erasures(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>(",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 607
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static erasures(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 622
    new-instance v0, Lnet/bytebuddy/matcher/CollectionErasureMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionErasureMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static varargs erasures([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 580
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs erasures([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>([",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 592
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lnet/bytebuddy/matcher/FailSafeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/matcher/FailSafeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Z)V

    return-object v0
.end method

.method public static fieldType(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2069
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->fieldType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static fieldType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2080
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->fieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static fieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2091
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->genericFieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static genericFieldType(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2036
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->genericFieldType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static genericFieldType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2047
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->genericFieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static genericFieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2058
    new-instance v0, Lnet/bytebuddy/matcher/FieldTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/FieldTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1961
    new-instance v0, Lnet/bytebuddy/matcher/InheritedAnnotationMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/InheritedAnnotationMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasChild(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2205
    new-instance v0, Lnet/bytebuddy/matcher/ClassLoaderHierarchyMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/ClassLoaderHierarchyMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 768
    new-instance v0, Lnet/bytebuddy/matcher/DescriptorMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DescriptorMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasGenericSuperType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1913
    new-instance v0, Lnet/bytebuddy/matcher/HasSuperTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/HasSuperTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasGenericType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 250
    new-instance v0, Lnet/bytebuddy/matcher/MethodParameterTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodParameterTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasMethodName(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<init>"

    .line 1830
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "<clinit>"

    .line 1832
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1833
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isTypeInitializer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0

    .line 1835
    :cond_1
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static hasParameters(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1339
    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasSignature(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1847
    new-instance v0, Lnet/bytebuddy/matcher/SignatureTokenMatcher;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/SignatureTokenMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasSuperType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1902
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasGenericSuperType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static hasType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasGenericType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static inheritsAnnotation(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1925
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->inheritsAnnotation(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static inheritsAnnotation(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1937
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->inheritsAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static inheritsAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1949
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 127
    new-instance p0, Lnet/bytebuddy/matcher/NullMatcher;

    invoke-direct {p0}, Lnet/bytebuddy/matcher/NullMatcher;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static is(Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 282
    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->of(Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Field;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Method;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 173
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 271
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedParameter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 893
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isAccessibleTo(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 872
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 883
    new-instance v0, Lnet/bytebuddy/matcher/AccessibilityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/AccessibilityMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 916
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAnnotatedWith(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 930
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAnnotatedWith(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 945
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAnnotation()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1518
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isArray()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2025
    new-instance v0, Lnet/bytebuddy/matcher/ArrayTypeMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/ArrayTypeMatcher;-><init>()V

    return-object v0
.end method

.method public static isBootstrapClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2155
    new-instance v0, Lnet/bytebuddy/matcher/NullMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/NullMatcher;-><init>()V

    return-object v0
.end method

.method public static isBridge()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1080
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isChildOf(Ljava/lang/ClassLoader;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ElementMatchers;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-ne p0, v0, :cond_0

    .line 2192
    new-instance p0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    goto :goto_0

    .line 2194
    :cond_0
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasChild(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isClone()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clone"

    .line 1628
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1538
    new-instance v0, Lnet/bytebuddy/matcher/MethodSortMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->CONSTRUCTOR:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodSortMatcher;-><init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V

    return-object v0
.end method

.method public static isDeclaredBy(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 780
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 792
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 805
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredByGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredByGeneric(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 816
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredByGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredByGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 827
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredByGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredByGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 838
    new-instance v0, Lnet/bytebuddy/matcher/DeclaringTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DeclaringTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static isDefaultConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1578
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1588
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isDefaultMethod()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1568
    new-instance v0, Lnet/bytebuddy/matcher/MethodSortMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->DEFAULT_METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodSortMatcher;-><init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V

    return-object v0
.end method

.method public static isEnum()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 903
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "equals"

    .line 1618
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v2, 0x0

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    aput-object v3, v1, v2

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isExtensionClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2177
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2179
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v1, v0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static isFinal()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1020
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "finalize"

    .line 1598
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isGenericGetter(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1775
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericGetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericGetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1797
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1819
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericSetter(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1684
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericSetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericSetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1706
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1728
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1738
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const-string v2, "get"

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    const-string v3, "is"

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/reflect/Type;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v4, v0

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v3, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isGetter(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1764
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1751
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "is"

    const-string v3, "get"

    if-nez v1, :cond_0

    .line 1752
    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {p0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1753
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {v1, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    .line 1751
    :goto_0
    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1786
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1808
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "hashCode"

    .line 1608
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isInterface()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1508
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isMandated()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 260
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isMethod()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1528
    new-instance v0, Lnet/bytebuddy/matcher/MethodSortMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodSortMatcher;-><init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V

    return-object v0
.end method

.method public static isNamed()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement$WithOptionalName;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 757
    new-instance v0, Lnet/bytebuddy/matcher/IsNamedMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/IsNamedMatcher;-><init>()V

    return-object v0
.end method

.method public static isNative()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1050
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isOverriddenFrom(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1440
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFrom(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFrom(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1451
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFrom(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFrom(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1463
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFromGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFromGeneric(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1474
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFromGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFromGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1485
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFromGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFromGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1497
    new-instance v0, Lnet/bytebuddy/matcher/MethodOverrideMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 990
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPublic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isProtected()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isParentOf(Ljava/lang/ClassLoader;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ElementMatchers;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-ne p0, v0, :cond_0

    .line 2218
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isBootstrapClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;-><init>(Ljava/lang/ClassLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static isPrimitive()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2015
    new-instance v0, Lnet/bytebuddy/matcher/PrimitiveTypeMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/PrimitiveTypeMatcher;-><init>()V

    return-object v0
.end method

.method public static isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1000
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isProtected()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 980
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isPublic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 970
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isSetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "set"

    .line 1648
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isSetter(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1673
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSetter(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1660
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "set"

    if-nez v1, :cond_0

    .line 1661
    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1662
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    .line 1660
    :goto_0
    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1695
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1717
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1010
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isStrict()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1060
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isSubTypeOf(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1858
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSubTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSubTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1869
    new-instance v0, Lnet/bytebuddy/matcher/SubTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/SubTypeMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isSuperTypeOf(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1880
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSuperTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSuperTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1891
    new-instance v0, Lnet/bytebuddy/matcher/SuperTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/SuperTypeMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isSynchronized()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1040
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1030
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isSystemClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2166
    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isToString()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "toString"

    .line 1638
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isTransient()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2111
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isTypeInitializer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1548
    new-instance v0, Lnet/bytebuddy/matcher/MethodSortMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->TYPE_INITIALIZER:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodSortMatcher;-><init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V

    return-object v0
.end method

.method public static isVarArgs()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1070
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static isVariable(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isVariable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isVariable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/NamedElement;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 644
    new-instance v0, Lnet/bytebuddy/matcher/TypeSortMatcher;

    sget-object v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf([Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/TypeSortMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {v0, p0}, Lnet/bytebuddy/matcher/TypeSortMatcher;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1558
    new-instance v0, Lnet/bytebuddy/matcher/MethodSortMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->VIRTUAL:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodSortMatcher;-><init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V

    return-object v0
.end method

.method public static isVisibleTo(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 849
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 860
    new-instance v0, Lnet/bytebuddy/matcher/VisibilityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/VisibilityMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isVolatile()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2101
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher;

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    return-object v0
.end method

.method public static nameContains(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 724
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameContainsIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 736
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameEndsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 701
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameEndsWithIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 713
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameMatches(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 747
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 678
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameStartsWithIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 690
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 655
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static namedIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 667
    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 313
    new-instance v0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    return-object v0
.end method

.method public static noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 442
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    .line 444
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_0
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 448
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static varargs noneOf([Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 429
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 509
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 473
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Field;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">([",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 497
    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>([Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Method;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 485
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 461
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 293
    new-instance v0, Lnet/bytebuddy/matcher/NegatingMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/NegatingMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static ofSort(Lnet/bytebuddy/description/type/TypeDefinition$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDefinition$Sort;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1994
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->ofSort(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static ofSort(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDefinition$Sort;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2005
    new-instance v0, Lnet/bytebuddy/matcher/TypeSortMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/TypeSortMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static ofType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2230
    new-instance v0, Lnet/bytebuddy/matcher/InstanceTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/InstanceTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static returns(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1114
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1125
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1136
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returnsGeneric(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1091
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returnsGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1103
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1147
    new-instance v0, Lnet/bytebuddy/matcher/MethodReturnTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodReturnTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static supportsModules()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 2240
    new-instance v0, Lnet/bytebuddy/matcher/NullMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/NullMatcher;-><init>()V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static takesArgument(ILjava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1243
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArgument(ILnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArgument(ILnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1255
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1267
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1326
    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionSizeMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionSizeMatcher;-><init>(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static takesArguments(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 1302
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1304
    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1315
    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static varargs takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1278
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs takesArguments([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1289
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArgument(ILjava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1159
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArgument(ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArgument(ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1171
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1183
    new-instance v0, Lnet/bytebuddy/matcher/CollectionElementMatcher;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/matcher/CollectionElementMatcher;-><init>(ILnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArguments(Ljava/util/List;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDefinition;

    .line 1218
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1220
    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1231
    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static varargs takesGenericArguments([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1194
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Ljava/util/List;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs takesGenericArguments([Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 1205
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Ljava/util/List;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static whereAny(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 521
    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static whereNone(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 532
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->whereAny(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method
