.class public final enum Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;
.super Ljava/lang/Enum;
.source "PDFBoxConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/android/PDFBoxConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontLoadLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

.field public static final enum FULL:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

.field public static final enum MINIMUM:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

.field public static final enum NONE:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->FULL:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    .line 18
    new-instance v1, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    const-string v2, "MINIMUM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->MINIMUM:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    .line 23
    new-instance v2, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->NONE:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    filled-new-array {v0, v1, v2}, [Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->$VALUES:[Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->$VALUES:[Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    .line 8
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    return-object v0
.end method
