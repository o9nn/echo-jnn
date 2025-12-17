.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForComponentType"
.end annotation


# static fields
.field private static final GET_ANNOTATED_GENERIC_COMPONENT_TYPE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.lang.reflect.AnnotatedArrayType"

    const-string v1, "getAnnotatedGenericComponentType"

    .line 3485
    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;->of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;->GET_ANNOTATED_GENERIC_COMPONENT_TYPE:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0

    .line 3493
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 3480
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->resolve()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    return-object v0
.end method

.method protected resolve(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    :try_start_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;->GET_ANNOTATED_GENERIC_COMPONENT_TYPE:Ljava/lang/reflect/Method;

    .line 3499
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/AnnotatedElement;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3505
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.AnnotatedArrayType#getAnnotatedGenericComponentType"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 3503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.AnnotatedArrayType#getAnnotatedGenericComponentType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3501
    :catch_2
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method
