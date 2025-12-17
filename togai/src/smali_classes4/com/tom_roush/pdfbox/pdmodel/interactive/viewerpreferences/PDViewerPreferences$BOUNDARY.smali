.class public final enum Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;
.super Ljava/lang/Enum;
.source "PDViewerPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BOUNDARY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

.field public static final enum ArtBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

.field public static final enum BleedBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

.field public static final enum CropBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

.field public static final enum MediaBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

.field public static final enum TrimBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 145
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    const-string v1, "MediaBox"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->MediaBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    .line 149
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    const-string v2, "CropBox"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->CropBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    .line 153
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    const-string v3, "BleedBox"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->BleedBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    .line 157
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    const-string v4, "TrimBox"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->TrimBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    .line 161
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    const-string v5, "ArtBox"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->ArtBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    .line 140
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    .line 140
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    return-object v0
.end method
