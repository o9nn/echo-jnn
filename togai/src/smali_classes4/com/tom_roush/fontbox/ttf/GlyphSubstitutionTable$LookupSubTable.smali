.class abstract Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;
.super Ljava/lang/Object;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LookupSubTable"
.end annotation


# instance fields
.field coverageTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;

.field substFormat:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract doSubstitution(II)I
.end method
