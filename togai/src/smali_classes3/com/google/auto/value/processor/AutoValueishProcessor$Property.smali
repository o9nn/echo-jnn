.class public Lcom/google/auto/value/processor/AutoValueishProcessor$Property;
.super Ljava/lang/Object;
.source "AutoValueishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/AutoValueishProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field private final getter:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nullableAnnotation:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optional:Lcom/google/auto/value/processor/Optionalish;

.field private final type:Ljava/lang/String;

.field private final typeMirror:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Ljava/util/Optional;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->identifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->typeMirror:Ljavax/lang/model/type/TypeMirror;

    iput-object p5, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->nullableAnnotation:Ljava/util/Optional;

    .line 173
    invoke-static {p4}, Lcom/google/auto/value/processor/Optionalish;->createIfOptional(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/processor/Optionalish;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->optional:Lcom/google/auto/value/processor/Optionalish;

    iput-object p6, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->getter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGetter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->getter:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->typeMirror:Ljavax/lang/model/type/TypeMirror;

    .line 207
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNullableAnnotation()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->nullableAnnotation:Ljava/util/Optional;

    const-string v1, ""

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()Lcom/google/auto/value/processor/Optionalish;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->optional:Lcom/google/auto/value/processor/Optionalish;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeMirror()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->typeMirror:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public isNullable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->nullableAnnotation:Ljava/util/Optional;

    .line 232
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->identifier:Ljava/lang/String;

    return-object v0
.end method
