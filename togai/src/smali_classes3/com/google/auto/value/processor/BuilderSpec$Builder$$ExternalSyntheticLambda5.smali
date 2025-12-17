.class public final synthetic Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/BuilderSpec$Builder;

.field public final synthetic f$1:Ljavax/lang/model/util/Types;

.field public final synthetic f$2:Ljavax/lang/model/type/DeclaredType;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/BuilderSpec$Builder;Ljavax/lang/model/util/Types;Ljavax/lang/model/type/DeclaredType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;->f$0:Lcom/google/auto/value/processor/BuilderSpec$Builder;

    iput-object p2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;->f$1:Ljavax/lang/model/util/Types;

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;->f$2:Ljavax/lang/model/type/DeclaredType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;->f$0:Lcom/google/auto/value/processor/BuilderSpec$Builder;

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;->f$1:Ljavax/lang/model/util/Types;

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;->f$2:Ljavax/lang/model/type/DeclaredType;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->lambda$buildMethod$2$com-google-auto-value-processor-BuilderSpec$Builder(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p1

    return p1
.end method
