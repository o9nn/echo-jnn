.class public final synthetic Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljavax/lang/model/element/Element;

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateElement(Ljavax/lang/model/element/Element;)Z

    move-result p1

    return p1
.end method
