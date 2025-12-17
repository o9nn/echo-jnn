.class public abstract Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
.super Ljava/lang/Object;
.source "AnnotationDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase$ForPrepared;
    }
.end annotation


# static fields
.field private static final DEFAULT_TARGET:[Ljava/lang/annotation/ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/annotation/ElementType;

    const/4 v1, 0x0

    .line 471
    sget-object v2, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->DEFAULT_TARGET:[Ljava/lang/annotation/ElementType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 522
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 525
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 526
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 527
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 530
    :cond_2
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 531
    invoke-virtual {p0, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    invoke-interface {p1, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public getElementTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/ElementType;",
            ">;"
        }
    .end annotation

    .line 489
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Target;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    .line 490
    new-instance v1, Ljava/util/HashSet;

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->DEFAULT_TARGET:[Ljava/lang/annotation/ElementType;

    goto :goto_0

    .line 492
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Target;

    invoke-interface {v0}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v0

    .line 490
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getRetention()Ljava/lang/annotation/RetentionPolicy;
    .locals 2

    .line 479
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Retention;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 480
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Retention;

    invoke-interface {v0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 512
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 513
    invoke-virtual {p0, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isDocumented()Z
    .locals 2

    .line 506
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isInherited()Z
    .locals 2

    .line 499
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 540
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 547
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_1
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    .line 551
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
