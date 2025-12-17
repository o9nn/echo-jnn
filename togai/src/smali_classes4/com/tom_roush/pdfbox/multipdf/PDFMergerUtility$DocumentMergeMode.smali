.class public final enum Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;
.super Ljava/lang/Enum;
.source "PDFMergerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentMergeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

.field public static final enum OPTIMIZE_RESOURCES_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

.field public static final enum PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 114
    new-instance v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    const-string v1, "OPTIMIZE_RESOURCES_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->OPTIMIZE_RESOURCES_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    .line 115
    new-instance v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    const-string v2, "PDFBOX_LEGACY_MODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    filled-new-array {v0, v1}, [Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->$VALUES:[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    .line 112
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->$VALUES:[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    .line 112
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    return-object v0
.end method
