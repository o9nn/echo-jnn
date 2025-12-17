.class public final enum Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;
.super Ljava/lang/Enum;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForTypeAnnotations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;


# instance fields
.field private final typeParameter:Ljava/lang/annotation/ElementType;

.field private final typeUse:Ljava/lang/annotation/ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1476
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    filled-new-array {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1494
    :try_start_0
    const-class p1, Ljava/lang/annotation/ElementType;

    const-string p2, "TYPE_USE"

    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/ElementType;

    .line 1495
    const-class p2, Ljava/lang/annotation/ElementType;

    const-string v0, "TYPE_PARAMETER"

    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Ljava/lang/annotation/ElementType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    move-object p2, p1

    :goto_0
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->typeUse:Ljava/lang/annotation/ElementType;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->typeParameter:Ljava/lang/annotation/ElementType;

    return-void
.end method

.method private isValid(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z
    .locals 4

    .line 1581
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1582
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1583
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->typeUse:Ljava/lang/annotation/ElementType;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static ofFormalTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z
    .locals 4

    .line 1512
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1513
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1514
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    iget-object v3, v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->typeParameter:Ljava/lang/annotation/ElementType;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    .line 1471
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    .line 1471
    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    return-object v0
.end method


# virtual methods
.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 1

    .line 1525
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->isValid(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1471
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 1

    .line 1571
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->isValid(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1471
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 2

    .line 1545
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->isValid(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1546
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 1548
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1549
    invoke-interface {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 1552
    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1553
    invoke-interface {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x1

    .line 1557
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1471
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 0

    .line 1564
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->isValid(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1471
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 2

    .line 1532
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->isValid(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1533
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1535
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getLowerBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    .line 1536
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1537
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    .line 1538
    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1471
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
