.class public final Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
.super Ljava/lang/Object;
.source "MemoryUsageSetting.java"


# instance fields
.field private final maxMainMemoryBytes:J

.field private final maxStorageBytes:J

.field private tempDir:Ljava/io/File;

.field private final useMainMemory:Z

.field private final useTempFile:Z


# direct methods
.method private constructor <init>(ZZJJ)V
    .locals 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-wide/16 v2, -0x1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide p3, v2

    :goto_2
    const-wide/16 v4, 0x0

    cmp-long p1, p5, v4

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    move-wide p5, v2

    :goto_3
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    move-wide p3, v2

    :cond_4
    if-eqz v1, :cond_6

    cmp-long p1, p3, v4

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move-wide p3, p5

    :cond_6
    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    cmp-long p1, p5, v2

    if-lez p1, :cond_8

    cmp-long p1, p3, v2

    if-eqz p1, :cond_7

    cmp-long p1, p3, p5

    if-lez p1, :cond_8

    :cond_7
    move-wide p5, p3

    :cond_8
    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useMainMemory:Z

    iput-boolean p2, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useTempFile:Z

    iput-wide p3, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxMainMemoryBytes:J

    iput-wide p5, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxStorageBytes:J

    return-void
.end method

.method public static setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 2

    const-wide/16 v0, -0x1

    .line 100
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly(J)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    return-object v0
.end method

.method public static setupMainMemoryOnly(J)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 8

    .line 112
    new-instance v7, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;-><init>(ZZJJ)V

    return-object v7
.end method

.method public static setupMixed(J)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 2

    const-wide/16 v0, -0x1

    .line 147
    invoke-static {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMixed(JJ)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object p0

    return-object p0
.end method

.method public static setupMixed(JJ)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 8

    .line 163
    new-instance v7, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;-><init>(ZZJJ)V

    return-object v7
.end method

.method public static setupTempFileOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 2

    const-wide/16 v0, -0x1

    .line 121
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupTempFileOnly(J)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    return-object v0
.end method

.method public static setupTempFileOnly(J)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 8

    .line 134
    new-instance v7, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;-><init>(ZZJJ)V

    return-object v7
.end method


# virtual methods
.method public getMaxMainMemoryBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxMainMemoryBytes:J

    return-wide v0
.end method

.method public getMaxStorageBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxStorageBytes:J

    return-wide v0
.end method

.method public getPartitionedCopy(I)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 11

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxMainMemoryBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v4, p1

    .line 179
    div-long/2addr v0, v4

    :goto_0
    move-wide v7, v0

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxStorageBytes:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v2, p1

    .line 181
    div-long/2addr v0, v2

    :goto_1
    move-wide v9, v0

    .line 183
    new-instance p1, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    iget-boolean v5, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useMainMemory:Z

    iget-boolean v6, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useTempFile:Z

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;-><init>(ZZJJ)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->tempDir:Ljava/io/File;

    iput-object v0, p1, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->tempDir:Ljava/io/File;

    return-object p1
.end method

.method public getTempDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->tempDir:Ljava/io/File;

    return-object v0
.end method

.method public isMainMemoryRestricted()Z
    .locals 4

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxMainMemoryBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStorageRestricted()Z
    .locals 4

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxStorageBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTempDir(Ljava/io/File;)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->tempDir:Ljava/io/File;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useMainMemory:Z

    const-string v1, " bytes"

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useTempFile:Z

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mixed mode with max. of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxMainMemoryBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " main memory bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->isStorageRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " and max. of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxStorageBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storage bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, " and unrestricted scratch file size"

    .line 275
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->isMainMemoryRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Main memory only with max. of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxMainMemoryBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "Main memory only with no size restriction"

    goto :goto_1

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->isStorageRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Scratch file only with max. of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->maxStorageBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "Scratch file only with no size restriction"

    :goto_1
    return-object v0
.end method

.method public useMainMemory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useMainMemory:Z

    return v0
.end method

.method public useTempFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useTempFile:Z

    return v0
.end method
