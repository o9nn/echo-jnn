.class final Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$AnnotationMirrorVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnnotationMirrorVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor<",
        "Ljavax/lang/model/element/AnnotationMirror;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$AnnotationMirrorVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$AnnotationMirrorVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$AnnotationMirrorVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$AnnotationMirrorVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$AnnotationMirrorVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 181
    const-class v0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$AnnotationMirrorVisitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Void;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Void;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 0

    return-object p1
.end method
