.class public final synthetic Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->$r8$lambda$p5L8G0ki1qE8V9xf0ZtApU1efKI(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
