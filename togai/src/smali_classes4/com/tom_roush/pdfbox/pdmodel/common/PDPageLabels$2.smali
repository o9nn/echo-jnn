.class Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;
.super Ljava/lang/Object;
.source "PDPageLabels.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->getLabelsByPageIndices()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;

.field final synthetic val$map:[Ljava/lang/String;

.field final synthetic val$numberOfPages:I


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;->val$numberOfPages:I

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;->val$map:[Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newLabel(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;->val$numberOfPages:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;->val$map:[Ljava/lang/String;

    .line 241
    aput-object p2, v0, p1

    :cond_0
    return-void
.end method
