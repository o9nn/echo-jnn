.class final Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$EnumVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor<",
        "Ljavax/lang/model/element/VariableElement;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$EnumVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$EnumVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$EnumVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$EnumVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$EnumVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 204
    const-class v0, Ljavax/lang/model/element/VariableElement;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$DefaultVisitor;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$EnumVisitor;->visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljavax/lang/model/element/VariableElement;

    move-result-object p1

    return-object p1
.end method

.method public visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljavax/lang/model/element/VariableElement;
    .locals 0

    return-object p1
.end method
