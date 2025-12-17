.class final enum Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate$2;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 5075
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$1;)V

    return-void
.end method


# virtual methods
.method protected apply(Ljava/lang/StringBuilder;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 2

    if-eqz p3, :cond_1

    .line 5079
    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5080
    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5081
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "$"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5083
    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5086
    :cond_1
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method
