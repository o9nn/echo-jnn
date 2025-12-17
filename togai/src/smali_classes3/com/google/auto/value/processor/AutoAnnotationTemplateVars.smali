.class Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;
.super Lcom/google/auto/value/processor/TemplateVars;
.source "AutoAnnotationTemplateVars.java"


# static fields
.field private static final TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;


# instance fields
.field annotationFullName:Ljava/lang/String;

.field annotationName:Ljava/lang/String;

.field className:Ljava/lang/String;

.field generated:Ljava/lang/String;

.field gwtCompatible:Ljava/lang/Boolean;

.field invariableHashSum:Ljava/lang/Integer;

.field invariableHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;",
            ">;"
        }
    .end annotation
.end field

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Parameter;",
            ">;"
        }
    .end annotation
.end field

.field pkg:Ljava/lang/String;

.field serialVersionUID:Ljava/lang/Long;

.field wrapperTypesUsedInCollections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "autoannotation.vm"

    .line 83
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->parsedTemplateForResource(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/auto/value/processor/TemplateVars;-><init>()V

    return-void
.end method


# virtual methods
.method parsedTemplate()Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 1

    sget-object v0, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-object v0
.end method
