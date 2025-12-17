.class Lcom/google/auto/value/processor/AutoOneOfTemplateVars;
.super Lcom/google/auto/value/processor/AutoValueishTemplateVars;
.source "AutoOneOfTemplateVars.java"


# static fields
.field private static final TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;


# instance fields
.field generatedClass:Ljava/lang/String;

.field kindGetter:Ljava/lang/String;

.field kindType:Ljava/lang/String;

.field propertyToKind:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$Property;",
            ">;"
        }
    .end annotation
.end field

.field serializable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "autooneof.vm"

    .line 50
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->parsedTemplateForResource(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/auto/value/processor/AutoValueishTemplateVars;-><init>()V

    return-void
.end method


# virtual methods
.method parsedTemplate()Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 1

    sget-object v0, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-object v0
.end method
