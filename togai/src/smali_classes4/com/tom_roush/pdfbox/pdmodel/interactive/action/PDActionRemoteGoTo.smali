.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
.source "PDActionRemoteGoTo.java"


# static fields
.field public static final SUB_TYPE:Ljava/lang/String; = "GoToR"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>()V

    const-string v0, "GoToR"

    .line 45
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getD()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;->createFS(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getOpenInNewWindow()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    .line 178
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->NEW_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->SAME_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    :goto_0
    return-object v0

    .line 180
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->USER_PREFERENCE:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setD(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFile(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setOpenInNewWindow(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;)V
    .locals 2

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$interactive$action$OpenMode:[I

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method

.method public setOpenInNewWindow(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOpenInNewWindow()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method
