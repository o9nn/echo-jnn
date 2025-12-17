.class Lcom/google/auto/value/processor/AutoBuilderTemplateVars;
.super Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;
.source "AutoBuilderTemplateVars.java"


# static fields
.field private static final TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "autobuilder.vm"

    .line 21
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->parsedTemplateForResource(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;-><init>()V

    return-void
.end method


# virtual methods
.method parsedTemplate()Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 1

    sget-object v0, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-object v0
.end method
