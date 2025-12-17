.class final Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1;
.super Lautovalue/shaded/com/google$/common/base/$Equivalence;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
        "Ljavax/lang/model/element/AnnotationValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 39
    check-cast p1, Ljavax/lang/model/element/AnnotationValue;

    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1;->doEquivalent(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)Z

    move-result p1

    return p1
.end method

.method protected doEquivalent(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)Z
    .locals 1

    .line 41
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;-><init>(Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1;)V

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic doHash(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1;->doHash(Ljavax/lang/model/element/AnnotationValue;)I

    move-result p1

    return p1
.end method

.method protected doHash(Ljavax/lang/model/element/AnnotationValue;)I
    .locals 2

    .line 106
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$2;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$2;-><init>(Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
