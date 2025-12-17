.class abstract Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;
.super Lcom/google/auto/value/processor/AutoValueishTemplateVars;
.source "AutoValueOrBuilderTemplateVars.java"


# instance fields
.field build:Ljava/lang/String;

.field buildMethod:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/processor/SimpleMethod;",
            ">;"
        }
    .end annotation
.end field

.field builderActualTypes:Ljava/lang/String;

.field builderAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field builderFormalTypes:Ljava/lang/String;

.field builderGetters:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;",
            ">;"
        }
    .end annotation
.end field

.field builderIsInterface:Ljava/lang/Boolean;

.field builderName:Ljava/lang/String;

.field builderPropertyBuilders:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field builderRequiredProperties:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$Property;",
            ">;"
        }
    .end annotation
.end field

.field builderSetters:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;",
            ">;"
        }
    .end annotation
.end field

.field builderTypeName:Ljava/lang/String;

.field builtType:Ljava/lang/String;

.field identifiers:Ljava/lang/Boolean;

.field isFinal:Ljava/lang/Boolean;

.field props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$Property;",
            ">;"
        }
    .end annotation
.end field

.field toBuilderConstructor:Ljava/lang/Boolean;

.field types:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/google/auto/value/processor/AutoValueishTemplateVars;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderTypeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderFormalTypes:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderActualTypes:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderIsInterface:Ljava/lang/Boolean;

    .line 76
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 79
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->buildMethod:Ljava/util/Optional;

    .line 95
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderSetters:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 104
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderPropertyBuilders:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 116
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderRequiredProperties:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 124
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderGetters:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->isFinal:Ljava/lang/Boolean;

    return-void
.end method
