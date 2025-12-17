.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;
.super Ljava/lang/Object;
.source "PDViewerPreferences.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$PRINT_SCALING;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$DUPLEX;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;
    }
.end annotation


# static fields
.field public static final BOUNDARY_ART_BOX:Ljava/lang/String; = "ArtBox"

.field public static final BOUNDARY_BLEED_BOX:Ljava/lang/String; = "BleedBox"

.field public static final BOUNDARY_CROP_BOX:Ljava/lang/String; = "CropBox"

.field public static final BOUNDARY_MEDIA_BOX:Ljava/lang/String; = "MediaBox"

.field public static final BOUNDARY_TRIM_BOX:Ljava/lang/String; = "TrimBox"

.field public static final NON_FULL_SCREEN_PAGE_MODE_USE_NONE:Ljava/lang/String; = "UseNone"

.field public static final NON_FULL_SCREEN_PAGE_MODE_USE_OPTIONAL_CONTENT:Ljava/lang/String; = "UseOC"

.field public static final NON_FULL_SCREEN_PAGE_MODE_USE_OUTLINES:Ljava/lang/String; = "UseOutlines"

.field public static final NON_FULL_SCREEN_PAGE_MODE_USE_THUMBS:Ljava/lang/String; = "UseThumbs"

.field public static final READING_DIRECTION_L2R:Ljava/lang/String; = "L2R"

.field public static final READING_DIRECTION_R2L:Ljava/lang/String; = "R2L"


# instance fields
.field private final prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public centerWindow()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 308
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CENTER_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public displayDocTitle()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 328
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DISPLAY_DOC_TITLE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public fitWindow()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 288
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIT_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDuplex()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 541
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DUPLEX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonFullScreenPageMode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 348
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NON_FULL_SCREEN_PAGE_MODE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->UseNone:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    .line 349
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintArea()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 477
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_AREA:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->CropBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintClip()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 509
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_CLIP:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->CropBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintScaling()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 561
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_SCALING:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$PRINT_SCALING;->AppDefault:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$PRINT_SCALING;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$PRINT_SCALING;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadingDirection()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 381
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIRECTION:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->L2R:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewArea()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 413
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEW_AREA:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->CropBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewClip()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 445
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEW_CLIP:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->CropBox:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideMenubar()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 248
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HIDE_MENUBAR:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public hideToolbar()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 228
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HIDE_TOOLBAR:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public hideWindowUI()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 268
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HIDE_WINDOWUI:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public setCenterWindow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 318
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CENTER_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setDisplayDocTitle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 338
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DISPLAY_DOC_TITLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setDuplex(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$DUPLEX;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 551
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DUPLEX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$DUPLEX;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFitWindow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 298
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIT_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setHideMenubar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 258
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HIDE_MENUBAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setHideToolbar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 238
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HIDE_TOOLBAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setHideWindowUI(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 278
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HIDE_WINDOWUI:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setNonFullScreenPageMode(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 359
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NON_FULL_SCREEN_PAGE_MODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setNonFullScreenPageMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 371
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NON_FULL_SCREEN_PAGE_MODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPrintArea(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 499
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_AREA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPrintArea(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 489
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_AREA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPrintClip(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 531
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_CLIP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPrintClip(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 521
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_CLIP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPrintScaling(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$PRINT_SCALING;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 571
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRINT_SCALING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$PRINT_SCALING;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setReadingDirection(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 391
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIRECTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setReadingDirection(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 403
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIRECTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setViewArea(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 435
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEW_AREA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setViewArea(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 425
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEW_AREA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setViewClip(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 455
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEW_CLIP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$BOUNDARY;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setViewClip(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->prefs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 467
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEW_CLIP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
