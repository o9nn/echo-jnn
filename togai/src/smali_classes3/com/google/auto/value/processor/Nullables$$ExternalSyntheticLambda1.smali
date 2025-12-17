.class public final synthetic Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {p1}, Lcom/google/auto/value/processor/Nullables;->$r8$lambda$2PpT7Gs6YeyuKUB7bwemKmKkSp0(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
