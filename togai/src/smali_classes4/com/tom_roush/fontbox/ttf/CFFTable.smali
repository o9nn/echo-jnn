.class public Lcom/tom_roush/fontbox/ttf/CFFTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "CFFTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/ttf/CFFTable$CFFBytesource;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CFF "


# instance fields
.field private cffFont:Lcom/tom_roush/fontbox/cff/CFFFont;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getFont()Lcom/tom_roush/fontbox/cff/CFFFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/CFFTable;->cffFont:Lcom/tom_roush/fontbox/cff/CFFFont;

    return-object v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/CFFTable;->getLength()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p2, p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read(I)[B

    move-result-object p1

    .line 54
    new-instance p2, Lcom/tom_roush/fontbox/cff/CFFParser;

    invoke-direct {p2}, Lcom/tom_roush/fontbox/cff/CFFParser;-><init>()V

    .line 55
    new-instance v0, Lcom/tom_roush/fontbox/ttf/CFFTable$CFFBytesource;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/CFFTable;->font:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/ttf/CFFTable$CFFBytesource;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->parse([BLcom/tom_roush/fontbox/cff/CFFParser$ByteSource;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/cff/CFFFont;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/CFFTable;->cffFont:Lcom/tom_roush/fontbox/cff/CFFFont;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/CFFTable;->initialized:Z

    return-void
.end method
