.class public final enum Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;
.super Ljava/lang/Enum;
.source "PDViewerPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NON_FULL_SCREEN_PAGE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

.field public static final enum UseNone:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

.field public static final enum UseOC:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

.field public static final enum UseOutlines:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

.field public static final enum UseThumbs:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 65
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    const-string v1, "UseNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->UseNone:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    .line 69
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    const-string v2, "UseOutlines"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->UseOutlines:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    .line 73
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    const-string v3, "UseThumbs"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->UseThumbs:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    .line 77
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    const-string v4, "UseOC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->UseOC:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    .line 60
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    .line 60
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$NON_FULL_SCREEN_PAGE_MODE;

    return-object v0
.end method
