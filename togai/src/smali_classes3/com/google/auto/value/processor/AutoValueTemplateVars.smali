.class Lcom/google/auto/value/processor/AutoValueTemplateVars;
.super Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;
.source "AutoValueTemplateVars.java"


# static fields
.field private static final TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;


# instance fields
.field gwtCompatibleAnnotation:Ljava/lang/String;

.field modifiers:Ljava/lang/String;

.field subclass:Ljava/lang/String;

.field toBuilderMethods:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/processor/SimpleMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "autovalue.vm"

    .line 48
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoValueTemplateVars;->parsedTemplateForResource(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/AutoValueTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;-><init>()V

    return-void
.end method


# virtual methods
.method parsedTemplate()Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 1

    sget-object v0, Lcom/google/auto/value/processor/AutoValueTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-object v0
.end method
