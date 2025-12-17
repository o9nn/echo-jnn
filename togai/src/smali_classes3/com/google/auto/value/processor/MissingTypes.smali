.class final Lcom/google/auto/value/processor/MissingTypes;
.super Ljava/lang/Object;
.source "MissingTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;,
        Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;
    }
.end annotation


# static fields
.field private static final MISSING_TYPE_VISITOR:Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;-><init>(Lcom/google/auto/value/processor/MissingTypes$1;)V

    sput-object v0, Lcom/google/auto/value/processor/MissingTypes;->MISSING_TYPE_VISITOR:Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deferIfMissingTypesIn(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 2

    sget-object v0, Lcom/google/auto/value/processor/MissingTypes;->MISSING_TYPE_VISITOR:Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;

    .line 69
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->check(Ljavax/lang/model/type/TypeMirror;)V

    .line 70
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    sget-object v1, Lcom/google/auto/value/processor/MissingTypes;->MISSING_TYPE_VISITOR:Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;

    .line 71
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->check(Ljavax/lang/model/type/TypeMirror;)V

    goto :goto_0

    :cond_0
    return-void
.end method
