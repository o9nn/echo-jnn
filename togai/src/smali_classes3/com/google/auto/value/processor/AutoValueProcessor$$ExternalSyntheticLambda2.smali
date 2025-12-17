.class public final synthetic Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/auto/value/extension/AutoValueExtension;

    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->lambda$extensionsFromLoader$0(Lcom/google/auto/value/extension/AutoValueExtension;)Z

    move-result p1

    return p1
.end method
