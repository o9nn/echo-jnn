.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForOwnerType"
.end annotation


# static fields
.field private static final GET_ANNOTATED_OWNER_TYPE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.lang.reflect.AnnotatedType"

    const-string v1, "getAnnotatedOwnerType"

    .line 3518
    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->GET_ANNOTATED_OWNER_TYPE:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0

    .line 3540
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-void
.end method

.method static synthetic access$900(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0

    .line 3513
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->of(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object p0

    return-object p0
.end method

.method private static of(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->GET_ANNOTATED_OWNER_TYPE:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 3529
    sget-object p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 3513
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->resolve()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    return-object v0
.end method

.method protected resolve(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    :try_start_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->GET_ANNOTATED_OWNER_TYPE:Ljava/lang/reflect/Method;

    .line 3546
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    if-nez p1, :cond_0

    .line 3547
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.AnnotatedType#getAnnotatedOwnerType"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 3553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.AnnotatedType#getAnnotatedOwnerType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3551
    :catch_2
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method
