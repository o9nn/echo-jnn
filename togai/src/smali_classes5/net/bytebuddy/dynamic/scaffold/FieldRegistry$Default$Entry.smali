.class public Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;
.super Ljava/lang/Object;
.source "FieldRegistry.java"

# interfaces
.implements Lnet/bytebuddy/matcher/LatentMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/LatentMatcher<",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;

.field private final fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

.field private final matcher:Lnet/bytebuddy/matcher/LatentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final transformer:Lnet/bytebuddy/dynamic/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            "Ljava/lang/Object;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->defaultValue:Ljava/lang/Object;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->defaultValue:Ljava/lang/Object;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method protected getDefaultValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected getFieldAttributeAppenderFactory()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    return-object v0
.end method

.method protected getTransformer()Lnet/bytebuddy/dynamic/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    .line 218
    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object p1

    return-object p1
.end method
