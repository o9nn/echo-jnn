.class public Lnet/bytebuddy/description/type/TypeVariableToken;
.super Ljava/lang/Object;
.source "TypeVariableToken.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/type/TypeVariableToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/type/TypeVariableToken;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->symbol:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->bounds:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->annotations:Ljava/util/List;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/type/TypeVariableToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeVariableToken;"
        }
    .end annotation

    .line 77
    new-instance v0, Lnet/bytebuddy/description/type/TypeVariableToken;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;

    invoke-direct {v3, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    .line 79
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lnet/bytebuddy/description/type/TypeVariableToken;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeVariableToken;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeVariableToken;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeVariableToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeVariableToken;"
        }
    .end annotation

    .line 113
    new-instance v0, Lnet/bytebuddy/description/type/TypeVariableToken;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->symbol:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeVariableToken;->getBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    invoke-interface {v2, p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->annotations:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/description/type/TypeVariableToken;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/type/TypeVariableToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 131
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/type/TypeVariableToken;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->symbol:Ljava/lang/String;

    .line 132
    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeVariableToken;->symbol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->bounds:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeVariableToken;->bounds:Ljava/util/List;

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->annotations:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeVariableToken;->annotations:Ljava/util/List;

    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 106
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 97
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->bounds:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->symbol:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->bounds:Ljava/util/List;

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->annotations:Ljava/util/List;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeVariableToken;->symbol:Ljava/lang/String;

    return-object v0
.end method
