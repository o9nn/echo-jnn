.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;
.super Ljava/lang/Object;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScriptRecord"
.end annotation


# instance fields
.field scriptTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;

.field scriptTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;->scriptTag:Ljava/lang/String;

    .line 589
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScriptRecord[scriptTag=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
