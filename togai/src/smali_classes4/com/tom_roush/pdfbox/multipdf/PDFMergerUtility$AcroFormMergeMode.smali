.class public final enum Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;
.super Ljava/lang/Enum;
.source "PDFMergerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AcroFormMergeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

.field public static final enum JOIN_FORM_FIELDS_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

.field public static final enum PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 135
    new-instance v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    const-string v1, "JOIN_FORM_FIELDS_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->JOIN_FORM_FIELDS_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    .line 136
    new-instance v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    const-string v2, "PDFBOX_LEGACY_MODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    filled-new-array {v0, v1}, [Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->$VALUES:[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    .line 133
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->$VALUES:[Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    .line 133
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    return-object v0
.end method
