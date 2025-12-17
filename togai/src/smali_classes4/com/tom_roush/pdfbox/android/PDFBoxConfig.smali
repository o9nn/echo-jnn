.class public Lcom/tom_roush/pdfbox/android/PDFBoxConfig;
.super Ljava/lang/Object;
.source "PDFBoxConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;
    }
.end annotation


# static fields
.field public static FONT_LOAD_LEVEL:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

.field private static debugLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->MINIMUM:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    sput-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->FONT_LOAD_LEVEL:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->debugLoggingEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontLoadLevel()Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->FONT_LOAD_LEVEL:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->debugLoggingEnabled:Z

    return v0
.end method

.method public static setDebugLoggingEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->debugLoggingEnabled:Z

    return-void
.end method

.method public static setFontLoadLevel(Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;)V
    .locals 0

    sput-object p0, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->FONT_LOAD_LEVEL:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    return-void
.end method
