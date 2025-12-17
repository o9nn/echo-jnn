.class public Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;
.super Ljava/lang/Object;
.source "FieldRegistry.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;

.field private final fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
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
.method protected constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;",
            "Ljava/lang/Object;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)V"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->defaultValue:Ljava/lang/Object;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    return-void
.end method


# virtual methods
.method protected bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;
    .locals 4

    .line 313
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->defaultValue:Ljava/lang/Object;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-interface {v3, p1, p2}, Lnet/bytebuddy/dynamic/Transformer;->transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;-><init>(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Ljava/lang/Object;Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object v0
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->defaultValue:Ljava/lang/Object;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 264
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->matches(Lnet/bytebuddy/description/field/FieldDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/field/FieldDescription;)Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 320
    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
