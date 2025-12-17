.class public Lnet/bytebuddy/description/type/TypeDescription$Latent;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation


# instance fields
.field private final interfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 9043
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->name:Ljava/lang/String;

    iput p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->modifiers:I

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p4, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->interfaces:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;[Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0

    .line 9032
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/description/type/TypeDescription$Latent;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    .line 9128
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve declared annotations of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 9103
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve declared fields of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 9110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve declared methods of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 9082
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve inner types of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 9001
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Latent;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 9135
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve declared type of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    .line 9068
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve enclosing method of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 9075
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve enclosing type of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 9061
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->interfaces:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 9163
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve nest host of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 9170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve nest mates of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 4

    .line 9117
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Latent;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 9118
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 9119
    new-instance v2, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9121
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Latent;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    .line 9156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve type variables of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAnonymousType()Z
    .locals 3

    .line 9089
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve anonymous type property of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLocalType()Z
    .locals 3

    .line 9096
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve local class property of a latent type description: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
