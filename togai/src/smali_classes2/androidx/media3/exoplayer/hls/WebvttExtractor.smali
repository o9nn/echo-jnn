.class public final Landroidx/media3/exoplayer/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field private static final HEADER_MAX_LENGTH:I = 0x9

.field private static final HEADER_MIN_LENGTH:I = 0x6

.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private final language:Ljava/lang/String;

.field private output:Landroidx/media3/extractor/ExtractorOutput;

.field private sampleData:[B

.field private final sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field private sampleSize:I

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(-?\\d+)"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->language:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 70
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    return-void
.end method

.method private buildTrackOutput(J)Landroidx/media3/extractor/TrackOutput;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 199
    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 200
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string/jumbo v2, "text/vtt"

    .line 202
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p1, p2}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 200
    invoke-interface {v0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 206
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-object v0
.end method

.method private processSample()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 142
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 145
    invoke-static {v0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 152
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    .line 153
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_3

    const-string v8, "X-TIMESTAMP-MAP"

    .line 155
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v4, Landroidx/media3/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 156
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    sget-object v5, Landroidx/media3/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 161
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    .line 171
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 170
    invoke-static {v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v4

    goto :goto_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 154
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_3
    invoke-static {v0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->findNextCueHeader(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_4

    .line 179
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Landroidx/media3/extractor/TrackOutput;

    return-void

    .line 184
    :cond_4
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    add-long/2addr v4, v0

    sub-long/2addr v4, v6

    .line 187
    invoke-static {v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->usToWrappedPts(J)J

    move-result-wide v3

    .line 186
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 190
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Landroidx/media3/extractor/TrackOutput;

    move-result-object v5

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    iget v2, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    .line 192
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget v1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    .line 193
    invoke-interface {v5, v0, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    const/4 v8, 0x1

    iget v9, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 194
    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 98
    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 115
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    long-to-int p2, v0

    iget v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 119
    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 123
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 121
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    iget v1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    .line 127
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 136
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/WebvttExtractor;->processSample()V

    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 104
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 79
    invoke-interface {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 81
    invoke-virtual {v0, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 82
    invoke-static {v0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    const/4 v3, 0x3

    .line 86
    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    const/16 v1, 0x9

    .line 91
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 92
    invoke-static {p1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result p1

    return p1
.end method
