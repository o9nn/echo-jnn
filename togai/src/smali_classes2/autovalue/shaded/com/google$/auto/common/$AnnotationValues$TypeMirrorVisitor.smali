.class final Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$TypeMirrorVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeMirrorVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor<",
        "Ljavax/lang/model/type/DeclaredType;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$TypeMirrorVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$TypeMirrorVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$TypeMirrorVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$TypeMirrorVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$TypeMirrorVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 158
    const-class v0, Ljavax/lang/model/type/DeclaredType;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$TypeMirrorVisitor;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljavax/lang/model/type/DeclaredType;
    .locals 0

    .line 163
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method
