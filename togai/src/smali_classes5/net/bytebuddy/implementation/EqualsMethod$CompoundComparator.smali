.class public Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;
.super Ljava/lang/Object;
.source "EqualsMethod.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CompoundComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final comparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;)V"
        }
    .end annotation

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    .line 1055
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 1056
    instance-of v1, v0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    .line 1057
    check-cast v0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;

    iget-object v0, v0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1058
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    .line 1059
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected varargs constructor <init>([Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    .line 1045
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1029
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    .line 1068
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    .line 1069
    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;

    iget-object p1, p1, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
