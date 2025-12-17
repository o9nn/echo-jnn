.class Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;
.super Ljava/lang/Object;
.source "FileSystemFontProvider.java"

# interfaces
.implements Lcom/tom_roush/fontbox/ttf/TrueTypeCollection$TrueTypeFontProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeCollection(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

.field final synthetic val$ttcFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;->this$0:Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;->val$ttcFile:Ljava/io/File;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;->this$0:Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;->val$ttcFile:Ljava/io/File;

    .line 657
    invoke-static {v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->access$1200(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/io/File;)V

    return-void
.end method
