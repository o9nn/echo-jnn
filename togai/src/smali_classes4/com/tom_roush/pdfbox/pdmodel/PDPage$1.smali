.class Lcom/tom_roush/pdfbox/pdmodel/PDPage$1;
.super Ljava/lang/Object;
.source "PDPage.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPage;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage$1;->this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
