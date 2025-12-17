.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;
.super Ljava/lang/Object;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LangSysRecord"
.end annotation


# instance fields
.field langSysTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

.field langSysTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTag:Ljava/lang/String;

    .line 615
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LangSysRecord[langSysTag=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
