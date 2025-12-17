.class Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$3;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;->visitArray(Ljava/util/List;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor8<",
        "Ljava/lang/Boolean;",
        "Ljava/util/List<",
        "+",
        "Ljavax/lang/model/element/AnnotationValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$3;->this$1:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;

    .line 72
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$3;->defaultAction(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->pairwise()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$3;->visitArray(Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
