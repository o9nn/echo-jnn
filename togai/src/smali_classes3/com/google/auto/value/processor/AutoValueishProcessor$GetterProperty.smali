.class public Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;
.super Lcom/google/auto/value/processor/AutoValueishProcessor$Property;
.source "AutoValueishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/AutoValueishProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetterProperty"
.end annotation


# instance fields
.field private final fieldAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljavax/lang/model/element/ExecutableElement;

.field private final methodAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Optional;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-interface {p3}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 266
    invoke-interface {p3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p7

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Ljava/util/Optional;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->method:Ljavax/lang/model/element/ExecutableElement;

    iput-object p5, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->fieldAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p6, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->methodAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 294
    instance-of v0, p1, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    iget-object p1, p1, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->method:Ljavax/lang/model/element/ExecutableElement;

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 289
    invoke-static {v0}, Lcom/google/auto/value/processor/SimpleMethod;->access(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->fieldAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method

.method public getMethodAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->methodAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
