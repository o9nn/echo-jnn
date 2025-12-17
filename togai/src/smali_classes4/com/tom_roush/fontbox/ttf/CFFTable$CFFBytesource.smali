.class Lcom/tom_roush/fontbox/ttf/CFFTable$CFFBytesource;
.super Ljava/lang/Object;
.source "CFFTable.java"

# interfaces
.implements Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/CFFTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CFFBytesource"
.end annotation


# instance fields
.field private final ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/CFFTable$CFFBytesource;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/CFFTable$CFFBytesource;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 83
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTableMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "CFF "

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/TTFTable;

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTableBytes(Lcom/tom_roush/fontbox/ttf/TTFTable;)[B

    move-result-object v0

    return-object v0
.end method
