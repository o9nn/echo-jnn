.class final Lcom/tom_roush/pdfbox/cos/UnmodifiableCOSDictionary;
.super Lcom/tom_roush/pdfbox/cos/COSDictionary;
.source "UnmodifiableCOSDictionary.java"


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 34
    iget-object p1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/UnmodifiableCOSDictionary;->items:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public mergeInto(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNeedToBeUpdated(Z)V
    .locals 0

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
