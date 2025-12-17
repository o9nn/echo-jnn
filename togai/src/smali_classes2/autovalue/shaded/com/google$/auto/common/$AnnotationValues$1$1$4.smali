.class Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$4;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;->visitType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor8<",
        "Ljava/lang/Boolean;",
        "Ljavax/lang/model/type/TypeMirror;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$4;->this$1:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;

    .line 91
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljava/lang/Object;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$4;->defaultAction(Ljava/lang/Object;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 1

    .line 98
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$4;->visitType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
