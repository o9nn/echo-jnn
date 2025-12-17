.class Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$1;
.super Ljava/lang/Object;
.source "PDPageLabels.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->getPageIndicesByLabels()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;

.field final synthetic val$labelMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$1;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$1;->val$labelMap:Ljava/util/Map;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newLabel(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$1;->val$labelMap:Ljava/util/Map;

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
