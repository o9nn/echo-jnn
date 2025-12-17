.class Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;
.super Lcom/google/auto/value/processor/TemplateVars;
.source "GwtSerialization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/GwtSerialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GwtTemplateVars"
.end annotation


# static fields
.field private static final TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;


# instance fields
.field actualTypes:Ljava/lang/String;

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

.field builderSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;",
            ">;"
        }
    .end annotation
.end field

.field classHashString:Ljava/lang/String;

.field formalTypes:Ljava/lang/String;

.field generated:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field props:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/auto/value/processor/GwtSerialization$Property;",
            ">;"
        }
    .end annotation
.end field

.field serializerClass:Ljava/lang/String;

.field subclass:Ljava/lang/String;

.field useBuilder:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gwtserializer.vm"

    .line 230
    invoke-static {v0}, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->parsedTemplateForResource(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/google/auto/value/processor/TemplateVars;-><init>()V

    .line 216
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->builderPropertyBuilders:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method


# virtual methods
.method parsedTemplate()Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 1

    sget-object v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->TEMPLATE:Lautovalue/shaded/com/google$/escapevelocity/$Template;

    return-object v0
.end method
