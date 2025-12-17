.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 780
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    return-void
.end method

.method static synthetic access$2100()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;

    return-object v0
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    .line 784
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 779
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 799
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 779
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 804
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->isType(Ljavax/lang/model/element/Element;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 779
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 789
    invoke-interface {p1}, Ljavax/lang/model/type/NoType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p1

    sget-object p2, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {p1, p2}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 779
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 794
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 779
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
