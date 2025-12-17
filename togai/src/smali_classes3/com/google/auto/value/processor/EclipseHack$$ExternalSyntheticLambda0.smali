.class public final synthetic Lcom/google/auto/value/processor/EclipseHack$$ExternalSyntheticLambda0;
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

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {p1}, Lcom/google/auto/value/processor/EclipseHack;->lambda$getEnclosingType$0(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method
