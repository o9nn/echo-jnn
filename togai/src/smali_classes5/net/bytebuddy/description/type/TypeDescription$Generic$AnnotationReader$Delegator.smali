.class public abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.super Ljava/lang/Object;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;
    }
.end annotation


# static fields
.field protected static final NO_ARGUMENTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asList()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 3201
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;->resolve()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public ofComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 3194
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0
.end method

.method public ofOuterClass()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 3187
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->access$900(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method public ofOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 3180
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;->access$900(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method public ofTypeArgument(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 3173
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeArgument;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeArgument;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method

.method public ofTypeVariableBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 3166
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method

.method public ofWildcardLowerBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 3159
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardLowerBoundType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardLowerBoundType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method

.method public ofWildcardUpperBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 3152
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardUpperBoundType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardUpperBoundType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method
