.class public Lnet/bytebuddy/description/method/ParameterDescription$Token;
.super Ljava/lang/Object;
.source "ParameterDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_MODIFIERS:Ljava/lang/Integer;

.field public static final NO_NAME:Ljava/lang/String;


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

.field private final modifiers:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;

.field private final type:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1

    .line 1166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_NAME:Ljava/lang/String;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_MODIFIERS:Ljava/lang/Integer;

    .line 1176
    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 1127
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/ParameterDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/ParameterDescription$Token;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;"
        }
    .end annotation

    .line 1248
    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1267
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1270
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1271
    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    .line 1272
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    .line 1273
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    if-nez v1, :cond_4

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    .line 1274
    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 1223
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1256
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    .line 1257
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1258
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1259
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParameterDescription.Token{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
