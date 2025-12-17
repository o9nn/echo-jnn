.class public abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Chained"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final NOT_AVAILABLE:Ljava/lang/reflect/Method;


# instance fields
.field protected final annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0

    .line 3225
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    return-void
.end method

.method protected static of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .line 3239
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->NOT_AVAILABLE:Ljava/lang/reflect/Method;

    return-object p0
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    .line 3249
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->resolve()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->resolve(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract resolve(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/AnnotatedElement;
.end method
