.class public final Lcom/k2fsa/sherpa/onnx/Sherpa;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Sherpa.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFeedException;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$Companion;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;,
        Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSherpa.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sherpa.kt\ncom/k2fsa/sherpa/onnx/Sherpa\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2097:1\n1#2:2098\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ea\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u001b\u0018\u0000 \u00a3\u00012\u00020\u0001:\u0014\u009e\u0001\u009f\u0001\u00a0\u0001\u00a1\u0001\u00a2\u0001\u00a3\u0001\u00a4\u0001\u00a5\u0001\u00a6\u0001\u00a7\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0007J\u0006\u0010+\u001a\u00020(J\u0016\u0010,\u001a\u00020\t2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\t0.H\u0002J\u0008\u0010/\u001a\u000200H\u0002J\u001a\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020*2\u0006\u00104\u001a\u00020*H\u0002JB\u00105\u001a\u0004\u0018\u0001062\u0006\u00103\u001a\u00020*2\u0006\u00107\u001a\u00020*2\u0006\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020*2\u0006\u0010:\u001a\u00020*2\u0006\u00104\u001a\u00020*2\u0006\u0010;\u001a\u00020*H\u0002J*\u0010<\u001a\u0004\u0018\u00010=2\u0006\u0010>\u001a\u00020*2\u0006\u00104\u001a\u00020*2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020@H\u0002J\"\u0010B\u001a\u00020C2\u0006\u00103\u001a\u00020*2\u0006\u0010D\u001a\u00020*2\u0008\u0010E\u001a\u0004\u0018\u00010*H\u0002J\u001a\u0010F\u001a\u0004\u0018\u00010G2\u0006\u00103\u001a\u00020*2\u0006\u00104\u001a\u00020*H\u0002J\u0008\u0010H\u001a\u00020(H\u0002J\u0008\u0010I\u001a\u00020(H\u0002J\u0010\u0010J\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u0008\u0010M\u001a\u00020(H\u0002J\u0008\u0010N\u001a\u00020(H\u0002J\u0008\u0010O\u001a\u00020(H\u0002J\u0008\u0010P\u001a\u00020(H\u0002J\u0010\u0010Q\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u0008\u0010R\u001a\u00020(H\u0002J\u0010\u0010S\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u0008\u0010T\u001a\u00020(H\u0002J\u0010\u0010U\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u0008\u0010V\u001a\u00020(H\u0002J(\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020*2\u0006\u0010Y\u001a\u00020\u00192\u0006\u0010Z\u001a\u00020@2\u0006\u0010K\u001a\u00020LH\u0007J\u0018\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020`H\u0002J\u0008\u0010a\u001a\u00020*H\u0016J \u0010b\u001a\u00020(2\u0006\u00103\u001a\u00020*2\u0006\u00104\u001a\u00020*2\u0006\u0010K\u001a\u00020LH\u0007J`\u0010c\u001a\u00020(2\u0006\u0010d\u001a\u00020\u00112\u0006\u0010>\u001a\u00020*2\u0006\u00107\u001a\u00020*2\u0006\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020*2\u0006\u0010:\u001a\u00020*2\u0006\u00104\u001a\u00020*2\u0006\u0010;\u001a\u00020*2\u0006\u0010e\u001a\u00020@2\u0006\u0010A\u001a\u00020@2\u0006\u0010K\u001a\u00020LH\u0007J2\u0010f\u001a\u00020(2\u0006\u00103\u001a\u00020*2\u0006\u0010D\u001a\u00020*2\u0008\u0010g\u001a\u0004\u0018\u00010*2\u0006\u00104\u001a\u00020*2\u0006\u0010K\u001a\u00020LH\u0007J \u0010h\u001a\u00020(2\u0006\u00103\u001a\u00020*2\u0006\u00104\u001a\u00020*2\u0006\u0010K\u001a\u00020LH\u0007J\u0010\u0010i\u001a\u00020(2\u0006\u0010j\u001a\u00020\u0019H\u0002J\u0008\u0010k\u001a\u00020\u0011H\u0002J\u0010\u0010l\u001a\u00020\u00112\u0006\u0010m\u001a\u000202H\u0002J\u0008\u0010n\u001a\u00020\u0011H\u0002J\u0010\u0010o\u001a\u00020\u00112\u0006\u0010m\u001a\u000206H\u0002J\u0010\u0010p\u001a\u00020\u00112\u0006\u0010m\u001a\u00020=H\u0002J\u0010\u0010q\u001a\u00020\u00112\u0006\u0010m\u001a\u00020CH\u0002J\u0010\u0010r\u001a\u00020\u00112\u0006\u0010m\u001a\u00020GH\u0002J\u0008\u0010s\u001a\u00020\u0011H\u0002J\u0008\u0010t\u001a\u00020(H\u0002J\u0010\u0010u\u001a\u00020*2\u0006\u0010v\u001a\u00020wH\u0002J\u0008\u0010x\u001a\u00020(H\u0002J\u0010\u0010y\u001a\u00020(2\u0006\u0010X\u001a\u00020*H\u0002J\u0010\u0010z\u001a\u00020(2\u0006\u0010X\u001a\u00020*H\u0002J\u0010\u0010{\u001a\u00020(2\u0006\u0010X\u001a\u00020*H\u0002J\u0010\u0010|\u001a\u00020(2\u0006\u0010X\u001a\u00020*H\u0002J\u0008\u0010}\u001a\u00020(H\u0002J\u0008\u0010~\u001a\u00020(H\u0002J\u0008\u0010\u007f\u001a\u00020(H\u0002J\u001a\u0010\u0080\u0001\u001a\u00020\t2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020*J\u001b\u0010\u0084\u0001\u001a\u00020\t2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0006\u0010_\u001a\u00020`H\u0002J\u0013\u0010\u0085\u0001\u001a\u00020\t2\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u0001H\u0002J\u0012\u0010\u0088\u0001\u001a\u00020(2\u0007\u0010\u0089\u0001\u001a\u00020\u0019H\u0007J!\u0010\u001d\u001a\u00020*2\t\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u001f2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\t0.H\u0002J\u001d\u0010\u008b\u0001\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0002J\t\u0010\u008e\u0001\u001a\u00020(H\u0002J\u0011\u0010\u008f\u0001\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\t\u0010\u0090\u0001\u001a\u00020(H\u0002J\u001a\u0010\u0091\u0001\u001a\u00020(2\u0007\u0010\u0092\u0001\u001a\u00020*2\u0006\u0010K\u001a\u00020LH\u0007J\u0011\u0010\u0093\u0001\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u0011\u0010\u0094\u0001\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\t\u0010\u0095\u0001\u001a\u00020(H\u0002J\u0011\u0010\u0096\u0001\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u0011\u0010\u0097\u0001\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u0011\u0010\u0098\u0001\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\t\u0010\u0099\u0001\u001a\u00020(H\u0002J\u0011\u0010\u009a\u0001\u001a\u00020(2\u0006\u0010K\u001a\u00020LH\u0007J\u001b\u0010\u009b\u0001\u001a\u00020(2\u0007\u0010\u009c\u0001\u001a\u00020\\2\u0007\u0010\u009d\u0001\u001a\u00020*H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/Sherpa;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "aec",
        "Landroid/media/audiofx/AcousticEchoCanceler;",
        "audioBufferQueue",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "",
        "audioRecord",
        "Landroid/media/AudioRecord;",
        "audioTrack",
        "Landroid/media/AudioTrack;",
        "fileFeederThread",
        "Ljava/lang/Thread;",
        "isGeneratingVoice",
        "",
        "isKeywordSpotting",
        "isVAD",
        "keepFeedingFile",
        "keepProcessingAudio",
        "kws",
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotter;",
        "listenerCount",
        "",
        "minBufferSizeInBytes",
        "processingThread",
        "readingThread",
        "runSecondPassStt",
        "sttOfflineRecognizer",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
        "sttOnlineRecognizer",
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;",
        "tts",
        "Lcom/k2fsa/sherpa/onnx/OfflineTts;",
        "ttsTotalFramesWritten",
        "vad",
        "Lcom/k2fsa/sherpa/onnx/Vad;",
        "addListener",
        "",
        "eventName",
        "",
        "cleanup",
        "combineSamples",
        "bufferList",
        "",
        "createFeatureConfig",
        "Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "createKwsConfig",
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;",
        "modelDir",
        "provider",
        "createOfflineRecognizerConfig",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;",
        "encoderFilename",
        "decoderFilename",
        "tokensFilename",
        "joinersFilename",
        "language",
        "createOnlineRecognizerConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;",
        "appDir",
        "trailingSilence",
        "",
        "maxLengthInSeconds",
        "createTtsConfig",
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;",
        "modelName",
        "dataDir",
        "createVadConfig",
        "Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "disposeAecInternal",
        "disposeAudioTrackInternal",
        "disposeKws",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "disposeKwsInternal",
        "disposeMicrophoneInternal",
        "disposeOfflineRecognizerInternal",
        "disposeOnlineRecognizerInternal",
        "disposeStt",
        "disposeSttInternal",
        "disposeTts",
        "disposeTtsInternal",
        "disposeVad",
        "disposeVadInternal",
        "generateVoice",
        "text",
        "voiceId",
        "speed",
        "getFileSizeFromUri",
        "",
        "resolver",
        "Landroid/content/ContentResolver;",
        "uri",
        "Landroid/net/Uri;",
        "getName",
        "initKws",
        "initStt",
        "enableSecondPass",
        "minSilence",
        "initTts",
        "modelDataDir",
        "initVad",
        "initializeAec",
        "audioSessionId",
        "initializeAudioTrack",
        "initializeKws",
        "config",
        "initializeMicrophone",
        "initializeOfflineRecognizer",
        "initializeOnlineRecognizer",
        "initializeTts",
        "initializeVad",
        "isMicrophoneSttActive",
        "joinFileFeederThread",
        "mapExceptionToCode",
        "e",
        "Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;",
        "onFileProcessingComplete",
        "onKeywordDetected",
        "onRecognisedPartialSpeech",
        "onRecognisedSpeech",
        "onSherpaError",
        "onSpeechEnd",
        "onSpeechStart",
        "onVAD",
        "readAudioFileToFloatArray",
        "context",
        "Landroid/content/Context;",
        "inputPathOrUri",
        "readFromContentUri",
        "readFromFile",
        "file",
        "Ljava/io/File;",
        "removeListeners",
        "count",
        "offlineRecognizer",
        "safeEmit",
        "data",
        "",
        "startAudioProcessingIfNeeded",
        "startKeywordSpotting",
        "startProcessingThreadIfNeeded",
        "startRecognisingAudioFile",
        "filePath",
        "startRecognisingVoice",
        "startVAD",
        "stopAudioProcessingIfNeeded",
        "stopKeywordSpotting",
        "stopRecognisingVoice",
        "stopTts",
        "stopTtsInternal",
        "stopVAD",
        "validateAudioSize",
        "sizeBytes",
        "sourceDescription",
        "AudioFeedException",
        "AudioFileException",
        "AudioFileNotFoundException",
        "AudioPermissionException",
        "AudioReadException",
        "Companion",
        "FileFeedingRunnable",
        "InvalidAudioFormatException",
        "ProcessingRunnable",
        "ReadingRunnable",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AUDIO_BUFFER_QUEUE_CAPACITY:I = 0x7d0

.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_SOURCE:I = 0x1

.field private static final CHANNEL_CONFIG:I = 0x10

.field public static final Companion:Lcom/k2fsa/sherpa/onnx/Sherpa$Companion;

.field private static final ERR_API:Ljava/lang/String; = "API_ERROR"

.field private static final ERR_AUDIO:Ljava/lang/String; = "AUDIO_ERROR"

.field private static final ERR_BUSY:Ljava/lang/String; = "BUSY_ERROR"

.field private static final ERR_CONFIG:Ljava/lang/String; = "CONFIG_ERROR"

.field private static final ERR_FILE_NOT_FOUND:Ljava/lang/String; = "FILE_NOT_FOUND_ERROR"

.field private static final ERR_FILE_READ:Ljava/lang/String; = "FILE_READ_ERROR"

.field private static final ERR_INIT:Ljava/lang/String; = "INIT_ERROR"

.field private static final ERR_INVALID_FORMAT:Ljava/lang/String; = "INVALID_FORMAT_ERROR"

.field private static final ERR_NOT_INIT:Ljava/lang/String; = "NOT_INITIALIZED"

.field private static final ERR_PERMISSION:Ljava/lang/String; = "PERMISSION_ERROR"

.field private static final ERR_PROCESSING:Ljava/lang/String; = "PROCESSING_ERROR"

.field private static final EVT_ERROR:Ljava/lang/String; = "SHERPA_ERROR"

.field private static final EVT_FILE_PROCESSING_COMPLETE:Ljava/lang/String; = "FILE_PROCESSING_COMPLETE"

.field private static final EVT_FILE_RECOGNITION_COMPLETE:Ljava/lang/String; = "FILE_RECOGNITION_COMPLETE"

.field private static final EVT_KEYWORD:Ljava/lang/String; = "KEYWORD"

.field private static final EVT_PARTIAL:Ljava/lang/String; = "RECOGNISED_PARTIAL_SPEECH"

.field private static final EVT_RECOGNISED:Ljava/lang/String; = "RECOGNISED_SPEECH"

.field private static final EVT_SPEECH_END:Ljava/lang/String; = "SPEECH_END"

.field private static final EVT_SPEECH_START:Ljava/lang/String; = "SPEECH_START"

.field private static final EVT_VAD:Ljava/lang/String; = "VAD"

.field private static final FILE_FEEDING_THREAD_NAME:Ljava/lang/String; = "FileFeedingThread"

.field private static final MIC_BUFFER_SIZE_MULTIPLIER:I = 0x4

.field private static final PROCESSING_INTERVAL_SECONDS:D = 0.1

.field private static final PROCESSING_THREAD_NAME:Ljava/lang/String; = "AudioProcessingThread"

.field private static final READING_THREAD_NAME:Ljava/lang/String; = "AudioReadingThread"

.field private static final SAMPLE_RATE_HZ:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "SherpaOnnx"

.field private static final TTS_GENERATION_THREAD_NAME:Ljava/lang/String; = "TtsGenerationThread"


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private final audioBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[F>;"
        }
    .end annotation
.end field

.field private audioRecord:Landroid/media/AudioRecord;

.field private audioTrack:Landroid/media/AudioTrack;

.field private fileFeederThread:Ljava/lang/Thread;

.field private volatile isGeneratingVoice:Z

.field private volatile isKeywordSpotting:Z

.field private volatile isVAD:Z

.field private volatile keepFeedingFile:Z

.field private volatile keepProcessingAudio:Z

.field private kws:Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

.field private listenerCount:I

.field private minBufferSizeInBytes:I

.field private processingThread:Ljava/lang/Thread;

.field private readingThread:Ljava/lang/Thread;

.field private runSecondPassStt:Z

.field private sttOfflineRecognizer:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

.field private sttOnlineRecognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

.field private tts:Lcom/k2fsa/sherpa/onnx/OfflineTts;

.field private ttsTotalFramesWritten:I

.field private vad:Lcom/k2fsa/sherpa/onnx/Vad;


# direct methods
.method public static synthetic $r8$lambda$3TUXH4ue4gMylzDBnO2IU8rQoZo(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->generateVoice$lambda$11$lambda$10(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qAECAI81Avk6r5u7iG59X6kowm8(Ljava/lang/String;IFLcom/k2fsa/sherpa/onnx/OfflineTts;Lcom/k2fsa/sherpa/onnx/Sherpa;Landroid/media/AudioTrack;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/k2fsa/sherpa/onnx/Sherpa;->generateVoice$lambda$11(Ljava/lang/String;IFLcom/k2fsa/sherpa/onnx/OfflineTts;Lcom/k2fsa/sherpa/onnx/Sherpa;Landroid/media/AudioTrack;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xBP01XlLwo6OBWbJWo9FNTcbcmc(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->generateVoice$lambda$11$lambda$9(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/Sherpa;->Companion:Lcom/k2fsa/sherpa/onnx/Sherpa$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 96
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x7d0

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public static final synthetic access$getAudioBufferQueue$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getAudioRecord$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Landroid/media/AudioRecord;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static final synthetic access$getKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepFeedingFile:Z

    return p0
.end method

.method public static final synthetic access$getKeepProcessingAudio$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepProcessingAudio:Z

    return p0
.end method

.method public static final synthetic access$getKws$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/KeywordSpotter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->kws:Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

    return-object p0
.end method

.method public static final synthetic access$getRunSecondPassStt$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->runSecondPassStt:Z

    return p0
.end method

.method public static final synthetic access$getSttOfflineRecognizer$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOfflineRecognizer:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    return-object p0
.end method

.method public static final synthetic access$getSttOnlineRecognizer$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOnlineRecognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    return-object p0
.end method

.method public static final synthetic access$getTtsTotalFramesWritten$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->ttsTotalFramesWritten:I

    return p0
.end method

.method public static final synthetic access$getVad$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/Vad;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    return-object p0
.end method

.method public static final synthetic access$isGeneratingVoice$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    return p0
.end method

.method public static final synthetic access$isKeywordSpotting$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    return p0
.end method

.method public static final synthetic access$isVAD$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    return p0
.end method

.method public static final synthetic access$onKeywordDetected(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onKeywordDetected(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onRecognisedPartialSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onRecognisedPartialSpeech(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onRecognisedSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onRecognisedSpeech(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onSpeechEnd(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSpeechEnd()V

    return-void
.end method

.method public static final synthetic access$onVAD(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onVAD()V

    return-void
.end method

.method public static final synthetic access$runSecondPassStt(Lcom/k2fsa/sherpa/onnx/Sherpa;Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->runSecondPassStt(Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$safeEmit(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepFeedingFile:Z

    return-void
.end method

.method public static final synthetic access$stopAudioProcessingIfNeeded(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    return-void
.end method

.method private final combineSamples(Ljava/util/List;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)[F"
        }
    .end annotation

    .line 657
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    new-array p1, v1, [F

    return-object p1

    .line 659
    :cond_1
    new-array v0, v2, [F

    .line 661
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 662
    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 663
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private final createFeatureConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 7

    .line 363
    new-instance v6, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/16 v1, 0x3e80

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method private final createKwsConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
    .locals 20

    .line 468
    new-instance v0, Ljava/io/File;

    const-string v1, "sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01"

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljava/io/File;

    const-string v2, "encoder-epoch-12-avg-2-chunk-16-left-64.onnx"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 470
    new-instance v2, Ljava/io/File;

    const-string v3, "decoder-epoch-12-avg-2-chunk-16-left-64.onnx"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 471
    new-instance v3, Ljava/io/File;

    const-string v4, "joiner-epoch-12-avg-2-chunk-16-left-64.onnx"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 472
    new-instance v4, Ljava/io/File;

    const-string v5, "tokens.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 473
    new-instance v4, Ljava/io/File;

    const-string v5, "keywords.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 475
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createFeatureConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    move-result-object v0

    .line 484
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v7, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 485
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v15, "zipformer2"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x60e

    const/16 v19, 0x0

    move-object v6, v1

    move-object/from16 v14, p2

    .line 483
    invoke-direct/range {v6 .. v19}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 481
    new-instance v2, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    const/4 v15, 0x4

    .line 491
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f000000    # 0.5f

    const/16 v19, 0x1

    move-object v12, v2

    move-object v13, v0

    move-object v14, v1

    move-object/from16 v16, v4

    .line 481
    invoke-direct/range {v12 .. v19}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V

    return-object v2

    .line 476
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "One or more KWS model files not found in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KWS model files missing."

    move-object/from16 v1, p0

    .line 477
    invoke-direct {v1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final createOfflineRecognizerConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    .line 414
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 415
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 416
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p4

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 418
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 424
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 445
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    move-object v12, v3

    .line 446
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 447
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "transcribe"

    const/4 v8, -0x1

    move-object/from16 v6, p7

    .line 445
    invoke-direct/range {v3 .. v8}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const-string v22, "whisper"

    .line 452
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xc1fb

    const/16 v27, 0x0

    move-object/from16 v21, p6

    move-object/from16 v23, v2

    .line 444
    invoke-direct/range {v9 .. v27}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 458
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createFeatureConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    move-result-object v14

    const-string v17, "greedy_search"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f4

    move-object v13, v1

    move-object v15, v0

    .line 458
    invoke-direct/range {v13 .. v25}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 425
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v7, v1

    .line 429
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 430
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 431
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 428
    invoke-direct {v1, v4, v5, v0}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "transducer"

    .line 433
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0xcffe

    const/16 v24, 0x0

    move-object/from16 v20, v2

    .line 427
    invoke-direct/range {v6 .. v24}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 436
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createFeatureConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    move-result-object v7

    const-string v10, "greedy_search"

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3f4

    move-object v6, v1

    move-object v8, v0

    .line 436
    invoke-direct/range {v6 .. v18}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 419
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "One or more offline STT model files not found in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Offline STT model files missing."

    move-object/from16 v1, p0

    .line 420
    invoke-direct {v1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final createOnlineRecognizerConfig(Ljava/lang/String;Ljava/lang/String;FF)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;
    .locals 37

    .line 368
    new-instance v0, Ljava/io/File;

    const-string v1, "kroko-en"

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v1, Ljava/io/File;

    const-string v2, "en_encoder.onnx"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Ljava/io/File;

    const-string v3, "en_decoder.onnx"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 371
    new-instance v3, Ljava/io/File;

    const-string v4, "en_joiner.onnx"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 372
    new-instance v4, Ljava/io/File;

    const-string v5, "en_tokens.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 374
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    move-object/from16 v22, v6

    .line 381
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    .line 382
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 383
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 384
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 381
    invoke-direct {v7, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 386
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "zipformer2"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6ee

    const/16 v19, 0x0

    .line 380
    invoke-direct/range {v6 .. v19}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 389
    new-instance v0, Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    move-object/from16 v26, v0

    .line 390
    new-instance v1, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const v2, 0x4019999a    # 2.4f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 391
    new-instance v2, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const/4 v5, 0x1

    move/from16 v6, p3

    invoke-direct {v2, v5, v6, v4}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 392
    new-instance v5, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    move/from16 v6, p4

    invoke-direct {v5, v3, v4, v6}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 389
    invoke-direct {v0, v1, v2, v5}, Lcom/k2fsa/sherpa/onnx/EndpointConfig;-><init>(Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;)V

    .line 394
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    move-object/from16 v20, v0

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createFeatureConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x1

    const-string v28, "greedy_search"

    const/16 v29, 0x4

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x3e1c

    const/16 v36, 0x0

    .line 394
    invoke-direct/range {v20 .. v36}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 375
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "One or more online STT model files not found in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Online STT model files missing."

    move-object/from16 v1, p0

    .line 376
    invoke-direct {v1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final createTtsConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;
    .locals 42

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 524
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 525
    new-instance v3, Ljava/io/File;

    const-string v4, "lexicon.txt"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 526
    new-instance v4, Ljava/io/File;

    const-string v5, "tokens.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 527
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 528
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "voices.bin"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, ""

    const-string v17, ""

    .line 542
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    move/from16 v18, v5

    .line 549
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-string v19, ""

    if-nez v6, :cond_3

    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 550
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please specify a TTS model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_5

    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_4

    goto :goto_3

    .line 554
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please specify either a VITS or a Matcha model, but not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_5
    :goto_3
    move-object/from16 v20, v19

    check-cast v20, Ljava/lang/CharSequence;

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_7

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    .line 558
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide vocoder for Matcha TTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-string v15, "/tokens.txt"

    const-string v14, "/"

    if-lez v5, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_9

    .line 562
    new-instance v21, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 564
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_8

    move-object/from16 v9, v19

    goto :goto_5

    :cond_8
    move-object v9, v2

    :goto_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v22, 0xe0

    const/16 v23, 0x0

    move-object/from16 v5, v21

    move-object v7, v3

    move-object/from16 v10, v16

    move-object/from16 v24, v14

    move/from16 v14, v22

    move-object v1, v15

    move-object/from16 v15, v23

    .line 562
    invoke-direct/range {v5 .. v15}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_9
    move-object/from16 v24, v14

    move-object v1, v15

    .line 570
    new-instance v5, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0xff

    const/16 v35, 0x0

    move-object/from16 v25, v5

    invoke-direct/range {v25 .. v35}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v21, v5

    .line 573
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v15, v24

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 578
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v2, :cond_a

    move-object/from16 v10, v19

    goto :goto_7

    :cond_a
    move-object v10, v2

    .line 574
    :goto_7
    new-instance v20, Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    .line 577
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc0

    const/16 v22, 0x0

    move-object/from16 v5, v20

    move-object/from16 v7, v17

    move-object v8, v3

    move-object/from16 v11, v16

    move-object v3, v15

    move-object/from16 v15, v22

    .line 574
    invoke-direct/range {v5 .. v15}, Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v20

    goto :goto_8

    :cond_b
    move-object/from16 v3, v24

    .line 583
    new-instance v5, Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xff

    const/16 v33, 0x0

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v33}, Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v5

    .line 586
    :goto_8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 587
    new-instance v5, Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v6, v1

    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 589
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    if-nez v2, :cond_c

    move-object/from16 v26, v19

    goto :goto_9

    :cond_c
    move-object/from16 v26, v2

    :goto_9
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x70

    const/16 v31, 0x0

    move-object/from16 v22, v5

    move-object/from16 v24, v1

    .line 587
    invoke-direct/range {v22 .. v31}, Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v5

    goto :goto_a

    .line 594
    :cond_d
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x7f

    const/16 v41, 0x0

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v41}, Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v0

    .line 597
    :goto_a
    new-instance v13, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    .line 598
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    const/4 v11, 0x0

    const-string v12, "cpu"

    move-object v6, v1

    move-object/from16 v7, v21

    move/from16 v10, v18

    invoke-direct/range {v6 .. v12}, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;)V

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, v13

    .line 597
    invoke-direct/range {v0 .. v7}, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method private final createVadConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 8

    .line 501
    new-instance v0, Ljava/io/File;

    const-string v1, "silero_vad.onnx"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 502
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "VAD model file not found: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SherpaOnnx"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VAD model file missing."

    .line 504
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_0
    new-instance p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    .line 508
    new-instance v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    .line 509
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x3dcccccd    # 0.1f

    const/16 v7, 0x200

    move-object v2, v1

    .line 508
    invoke-direct/range {v2 .. v7}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFI)V

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p2

    .line 507
    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;Z)V

    return-object p1
.end method

.method private final disposeAecInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    :try_start_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1210
    invoke-virtual {v1, v2}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_1

    .line 1213
    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    :cond_1
    const-string v1, "AEC released."

    .line 1214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Error releasing AEC"

    .line 1215
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    return-void
.end method

.method private final disposeAudioTrackInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    :try_start_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 1222
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 1223
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 1226
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    :cond_2
    const-string v1, "AudioTrack released."

    .line 1227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Error releasing AudioTrack"

    .line 1228
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method private final disposeKwsInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    :try_start_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->kws:Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

    if-eqz v1, :cond_0

    .line 1267
    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->release()V

    :cond_0
    const-string v1, "KeywordSpotter released."

    .line 1268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error releasing KeywordSpotter"

    .line 1269
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->kws:Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

    return-void
.end method

.method private final disposeMicrophoneInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    .line 1196
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAecInternal()V

    :try_start_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 1198
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 1201
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_1
    const-string v1, "AudioRecord released."

    .line 1202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Error releasing AudioRecord"

    .line 1203
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method private final disposeOfflineRecognizerInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    :try_start_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOfflineRecognizer:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    if-eqz v1, :cond_0

    .line 1258
    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->release()V

    :cond_0
    const-string v1, "OfflineRecognizer released."

    .line 1259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error releasing OfflineRecognizer"

    .line 1260
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOfflineRecognizer:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    return-void
.end method

.method private final disposeOnlineRecognizerInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    :try_start_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOnlineRecognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-eqz v1, :cond_0

    .line 1251
    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->release()V

    :cond_0
    const-string v1, "OnlineRecognizer released."

    .line 1252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error releasing OnlineRecognizer"

    .line 1253
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOnlineRecognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    return-void
.end method

.method private final disposeSttInternal()V
    .locals 0

    .line 1245
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeOnlineRecognizerInternal()V

    .line 1246
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeOfflineRecognizerInternal()V

    return-void
.end method

.method private final disposeTtsInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    .line 1234
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopTtsInternal()V

    .line 1235
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAudioTrackInternal()V

    :try_start_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->tts:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    if-eqz v1, :cond_0

    .line 1237
    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->free()V

    :cond_0
    const-string v1, "OfflineTts released."

    .line 1238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error releasing OfflineTts"

    .line 1239
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->tts:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    return-void
.end method

.method private final disposeVadInternal()V
    .locals 3

    const-string v0, "SherpaOnnx"

    :try_start_0
    const-string v1, "VAD instance nullified."

    .line 1279
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error releasing VAD"

    .line 1280
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    return-void
.end method

.method private static final generateVoice$lambda$11(Ljava/lang/String;IFLcom/k2fsa/sherpa/onnx/OfflineTts;Lcom/k2fsa/sherpa/onnx/Sherpa;Landroid/media/AudioTrack;Lcom/facebook/react/bridge/Promise;)V
    .locals 8

    const-string v0, "SherpaOnnx"

    const-string v1, "TTS generated empty audio for text: \'"

    const-string v2, "TTS generation finished in "

    const-string v3, "Generating TTS for text: \'"

    const-string v4, "$text"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$ttsInstance"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "this$0"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$track"

    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$promise"

    invoke-static {p6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v5, 0x0

    .line 1372
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\', SID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Speed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1375
    invoke-virtual {p3, p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->generate(Ljava/lang/String;IF)Lcom/k2fsa/sherpa/onnx/GeneratedAudio;

    move-result-object p1

    .line 1380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v6

    .line 1381
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object v3

    array-length v3, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ms. Sample count: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object p2

    array-length p2, p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v5

    :goto_0
    xor-int/2addr p2, p3

    if-eqz p2, :cond_6

    .line 1385
    invoke-direct {p4}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSpeechStart()V

    move p0, v5

    .line 1390
    :goto_1
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object p2

    array-length p2, p2

    if-ge p0, p2, :cond_2

    iget-boolean p2, p4, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    if-eqz p2, :cond_2

    .line 1391
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object p2

    array-length p2, p2

    sub-int/2addr p2, p0

    const/16 v1, 0x2000

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1393
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object v1

    invoke-virtual {p5, v1, p0, p2, v5}, Landroid/media/AudioTrack;->write([FIII)I

    move-result p2

    if-gez p2, :cond_1

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack write error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback write error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/2addr p0, p2

    goto :goto_1

    .line 1404
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object p2

    array-length p2, p2

    if-ne p0, p2, :cond_4

    .line 1405
    iput p0, p4, Lcom/k2fsa/sherpa/onnx/Sherpa;->ttsTotalFramesWritten:I

    .line 1406
    invoke-virtual {p5, p0}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result p0

    .line 1407
    iget p1, p4, Lcom/k2fsa/sherpa/onnx/Sherpa;->ttsTotalFramesWritten:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "TTS write completed. Marker set at "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " frames (Result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    .line 1409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set notification marker: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_3
    iput-boolean p3, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto/16 :goto_3

    .line 1415
    :cond_4
    iget-boolean p2, p4, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, " samples."

    const-string p5, " / "

    if-nez p2, :cond_5

    .line 1416
    :try_start_1
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object p1

    array-length p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS generation/playback stopped prematurely by stopTts(). Written "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 1420
    :cond_5
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->getSamples()[F

    move-result-object p1

    array-length p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS write finished unexpectedly. Written "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 1426
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iput-boolean p3, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1428
    invoke-direct {p4}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSpeechStart()V

    .line 1429
    invoke-direct {p4}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSpeechEnd()V

    .line 1433
    :goto_3
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/k2fsa/sherpa/onnx/Sherpa$$ExternalSyntheticLambda1;

    invoke-direct {p1, v4, p6}, Lcom/k2fsa/sherpa/onnx/Sherpa$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "Exception during TTS generation or playback"

    .line 1442
    move-object p2, p0

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1443
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/k2fsa/sherpa/onnx/Sherpa$$ExternalSyntheticLambda2;

    invoke-direct {p2, p6, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1446
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TTS generation/playback error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1448
    :goto_4
    iput-boolean v5, p4, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    return-void

    :goto_5
    iput-boolean v5, p4, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    throw p0
.end method

.method private static final generateVoice$lambda$11$lambda$10(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "$promise"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception occurred during TTS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "API_ERROR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final generateVoice$lambda$11$lambda$9(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "$playbackSuccessful"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1434
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1435
    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "AUDIO_ERROR"

    const-string v0, "TTS playback failed or was interrupted."

    .line 1437
    invoke-interface {p1, p0, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final getFileSizeFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;
        }
    .end annotation

    move-object/from16 v7, p2

    const-string v8, "SherpaOnnx"

    const-string v0, "_size"

    const-string v9, "Invalid size ("

    const-string v10, "Failed to query size for URI: "

    const-string v11, "Could not determine size from ContentResolver (no _size column or it\'s null) for URI: "

    const-string v12, "Permission denied querying size for URI: "

    const-string v13, "Could not query ContentResolver for URI (provider might be invalid or permission denied): "

    const-string v14, "Error querying ContentResolver for size for URI: "

    const/4 v1, 0x1

    const/4 v15, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2056
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 2057
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2058
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 2059
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2060
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 2079
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v3

    .line 2064
    :cond_0
    :try_start_2
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reported by ContentResolver for URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v15, v2, v15}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 2067
    :cond_1
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v15, v2, v15}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 2070
    :cond_2
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v15, v2, v15}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v15, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v15, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v15, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2076
    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v8, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2077
    new-instance v1, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    :goto_1
    const-string v1, "SecurityException querying ContentResolver for size"

    .line 2073
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v8, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    new-instance v1, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v15, :cond_3

    .line 2079
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private final initializeAec(I)V
    .locals 4

    const-string v0, "Failed to enable AcousticEchoCanceler, code: "

    const-string v1, "AcousticEchoCanceler.create returned null for session "

    .line 272
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v2

    const-string v3, "SherpaOnnx"

    if-nez v2, :cond_0

    const-string p1, "AcousticEchoCanceler not available on this device."

    .line 273
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAecInternal()V

    .line 278
    :try_start_0
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v2

    iput-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez v2, :cond_1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 283
    invoke-virtual {v2, p1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 284
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    const-string p1, "AcousticEchoCanceler enabled successfully."

    .line 285
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 287
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAecInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Error creating or enabling AEC"

    .line 291
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAecInternal()V

    :goto_2
    return-void
.end method

.method private final initializeAudioTrack()Z
    .locals 15

    const-string v0, "Failed to initialize AudioTrack, state: "

    const-string v1, "AudioTrack configuration error (buffer size: "

    const-string v2, "AudioTrack.getMinBufferSize failed: "

    const-string v3, "AudioTrack min buffer size: "

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    const/4 v5, 0x1

    const-string v6, "SherpaOnnx"

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v0, "AudioTrack already initialized."

    .line 147
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAudioTrackInternal()V

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->tts:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    const/4 v7, 0x0

    if-nez v4, :cond_1

    .line 152
    move-object v0, p0

    check-cast v0, Lcom/k2fsa/sherpa/onnx/Sherpa;

    const-string v0, "TTS must be initialized before AudioTrack."

    .line 153
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->sampleRate()I

    move-result v4

    const/4 v8, 0x4

    .line 163
    invoke-static {v4, v8, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    if-gtz v12, :cond_2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    return v7

    .line 169
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 172
    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v10

    .line 176
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 177
    invoke-virtual {v1, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1, v8}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v11

    .line 182
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    .line 184
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 191
    new-instance v1, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;

    invoke-direct {v1, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;-><init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    check-cast v1, Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    :cond_3
    const-string v0, "AudioTrack initialized successfully."

    .line 206
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_5

    .line 185
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to initialize audio output."

    .line 186
    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAudioTrackInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string v1, "Exception initializing AudioTrack"

    .line 209
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v6, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize audio output: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeAudioTrackInternal()V

    move v5, v7

    :goto_1
    return v5
.end method

.method private final initializeKws(Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)Z
    .locals 3

    const-string v0, "SherpaOnnx"

    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeKwsInternal()V

    .line 330
    new-instance v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)V

    iput-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->kws:Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

    const-string p1, "KWS Initialized."

    .line 331
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to initialize KWS"

    .line 334
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KWS Initialization failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeKwsInternal()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final initializeMicrophone()Z
    .locals 12

    const-string v0, "Microphone (AudioRecord) initialized successfully with session ID: "

    const-string v1, "Failed to initialize AudioRecord, state: "

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x1

    const-string v4, "SherpaOnnx"

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v0, "Microphone (AudioRecord) already initialized."

    .line 219
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-static {v2, v5}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    const-string v0, "RECORD_AUDIO permission not granted."

    .line 223
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    return v5

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeMicrophoneInternal()V

    const/16 v2, 0x10

    const/4 v6, 0x2

    const/16 v7, 0x3e80

    .line 230
    invoke-static {v7, v2, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    iput v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->minBufferSizeInBytes:I

    if-gtz v2, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRecord.getMinBufferSize failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Invalid microphone parameters (buffer size)."

    .line 233
    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    return v5

    :cond_2
    mul-int/lit8 v11, v2, 0x4

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AudioRecord minBufferSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " bytes, Using internal buffer: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " bytes"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    new-instance v2, Landroid/media/AudioRecord;

    const/4 v7, 0x1

    const/16 v8, 0x3e80

    const/16 v9, 0x10

    const/4 v10, 0x2

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    .line 250
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    if-eq v6, v3, :cond_3

    .line 251
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to initialize microphone."

    .line 252
    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeMicrophoneInternal()V

    return v5

    .line 258
    :cond_3
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeAec(I)V

    .line 260
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception initializing AudioRecord"

    .line 263
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v4, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize microphone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeMicrophoneInternal()V

    move v3, v5

    :goto_0
    return v3
.end method

.method private final initializeOfflineRecognizer(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)Z
    .locals 3

    const-string v0, "SherpaOnnx"

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeOfflineRecognizerInternal()V

    .line 315
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V

    iput-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOfflineRecognizer:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    const-string p1, "Offline STT Recognizer initialized."

    .line 316
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to initialize Offline STT Recognizer"

    .line 319
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offline STT Initialization failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeOfflineRecognizerInternal()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final initializeOnlineRecognizer(Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;)Z
    .locals 3

    const-string v0, "SherpaOnnx"

    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeOnlineRecognizerInternal()V

    .line 300
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;)V

    iput-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOnlineRecognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    const-string p1, "Online STT Recognizer initialized."

    .line 301
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to initialize Online STT Recognizer"

    .line 304
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Online STT Initialization failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeOnlineRecognizerInternal()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final initializeTts(Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;)Z
    .locals 3

    const-string v0, "SherpaOnnx"

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeTtsInternal()V

    .line 133
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineTts;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/k2fsa/sherpa/onnx/OfflineTts;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;)V

    iput-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->tts:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    const-string p1, "OfflineTts initialized successfully."

    .line 134
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeAudioTrack()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to initialize OfflineTts"

    .line 137
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTS Initialization failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeTtsInternal()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final initializeVad(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)Z
    .locals 3

    const-string v0, "SherpaOnnx"

    .line 344
    :try_start_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeVadInternal()V

    .line 345
    new-instance v1, Lcom/k2fsa/sherpa/onnx/Vad;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/k2fsa/sherpa/onnx/Vad;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V

    iput-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    const-string p1, "VAD Initialized."

    .line 346
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to initialize VAD"

    .line 349
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VAD Initialization failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeVadInternal()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isMicrophoneSttActive()Z
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private final joinFileFeederThread()V
    .locals 6

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 1165
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1167
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SherpaOnnx"

    if-nez v1, :cond_2

    const-string v0, "FileFeedingThread is not alive, no need to join."

    .line 1168
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    return-void

    :cond_2
    :try_start_0
    const-string v1, "Waiting for FileFeedingThread to join..."

    .line 1173
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1f4

    .line 1174
    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FileFeedingThread did not finish join in time."

    .line 1176
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "FileFeedingThread joined successfully."

    .line 1178
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1181
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "Interrupted while joining FileFeedingThread."

    .line 1182
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    return-void

    :goto_1
    iput-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    .line 1184
    throw v0
.end method

.method private final mapExceptionToCode(Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;)Ljava/lang/String;
    .locals 1

    .line 1670
    instance-of v0, p1, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;

    if-eqz v0, :cond_0

    const-string p1, "FILE_NOT_FOUND_ERROR"

    goto :goto_0

    .line 1671
    :cond_0
    instance-of v0, p1, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    if-eqz v0, :cond_1

    const-string p1, "INVALID_FORMAT_ERROR"

    goto :goto_0

    .line 1672
    :cond_1
    instance-of v0, p1, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;

    if-eqz v0, :cond_2

    const-string p1, "PERMISSION_ERROR"

    goto :goto_0

    .line 1673
    :cond_2
    instance-of p1, p1, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;

    const-string p1, "FILE_READ_ERROR"

    :goto_0
    return-object p1
.end method

.method private final onFileProcessingComplete()V
    .locals 2

    const-string v0, "SherpaOnnx"

    const-string v1, "Emitting FILE_PROCESSING_COMPLETE"

    .line 1310
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FILE_PROCESSING_COMPLETE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onKeywordDetected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "KEYWORD"

    .line 1304
    invoke-direct {p0, v0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onRecognisedPartialSpeech(Ljava/lang/String;)V
    .locals 2

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Emitting RECOGNISED_PARTIAL_SPEECH: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RECOGNISED_PARTIAL_SPEECH"

    invoke-direct {p0, v0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onRecognisedSpeech(Ljava/lang/String;)V
    .locals 2

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Emitting RECOGNISED_SPEECH: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RECOGNISED_SPEECH"

    invoke-direct {p0, v0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onSherpaError(Ljava/lang/String;)V
    .locals 2

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Emitting SHERPA_ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SHERPA_ERROR"

    invoke-direct {p0, v0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onSpeechEnd()V
    .locals 2

    const-string v0, "SPEECH_END"

    const/4 v1, 0x0

    .line 1308
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onSpeechStart()V
    .locals 2

    const-string v0, "SPEECH_START"

    const/4 v1, 0x0

    .line 1307
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onVAD()V
    .locals 2

    const-string v0, "VAD"

    const/4 v1, 0x0

    .line 1303
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->safeEmit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final readFromContentUri(Landroid/content/Context;Landroid/net/Uri;)[F
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, ") mismatch expected ("

    .line 1991
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reading from Content URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SherpaOnnx"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1994
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->getFileSizeFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v5

    .line 1995
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "toString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5, v6, v7}, Lcom/k2fsa/sherpa/onnx/Sherpa;->validateAudioSize(JLjava/lang/String;)V

    const/4 v7, 0x2

    int-to-long v8, v7

    .line 2001
    div-long v8, v5, v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    .line 2006
    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v10, v3

    check-cast v10, Ljava/io/InputStream;

    .line 2008
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    long-to-int v12, v5

    const/16 v13, 0x4000

    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v12, 0x2000

    new-array v12, v12, [B

    const-wide/16 v13, 0x0

    .line 2012
    :goto_0
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v7, -0x1

    const/4 v9, 0x0

    if-eq v15, v7, :cond_0

    .line 2013
    invoke-virtual {v11, v12, v9, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object v7, v10

    int-to-long v9, v15

    add-long/2addr v13, v9

    move-object v10, v7

    const/4 v7, 0x2

    goto :goto_0

    :cond_0
    cmp-long v7, v13, v5

    if-eqz v7, :cond_1

    .line 2018
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Actual bytes read ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ") differ from reported size ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Using actual bytes read."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (actual read)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v13, v14, v5}, Lcom/k2fsa/sherpa/onnx/Sherpa;->validateAudioSize(JLjava/lang/String;)V

    .line 2027
    :cond_1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 2029
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2030
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2032
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 2035
    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 2040
    new-array v2, v8, [F

    :goto_1
    if-ge v9, v8, :cond_2

    .line 2042
    invoke-virtual {v5, v9}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x47000000    # 32768.0f

    div-float/2addr v6, v7

    aput v6, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2045
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " samples from URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 2046
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 2036
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Buffer sample count ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") based on initial size query for URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ". Data size inconsistency likely."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal error: Buffer sample count ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") after reading URI. Data size inconsistency likely."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v2, v4, v5, v4}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2046
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 2048
    :cond_4
    new-instance v2, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to open InputStream for URI (null returned): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_5
    move v4, v7

    const/4 v3, 0x0

    .line 2003
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    const-string v2, "Calculated zero samples from URI size (data might be corrupt or empty)."

    invoke-direct {v0, v2, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final readFromFile(Ljava/io/File;)[F
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Internal error: Buffer sample count ("

    const-string v2, "File length mismatch (file.length()="

    .line 1936
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reading from File: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SherpaOnnx"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 1940
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1943
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1947
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 1948
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v9, "getPath(...)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v7, v8, v3}, Lcom/k2fsa/sherpa/onnx/Sherpa;->validateAudioSize(JLjava/lang/String;)V

    .line 1956
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v9, p1

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v10, v3

    check-cast v10, Ljava/io/FileInputStream;

    .line 1957
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    check-cast v10, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v11, v10

    check-cast v11, Ljava/nio/channels/FileChannel;

    .line 1958
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13

    cmp-long v12, v13, v7

    if-eqz v12, :cond_0

    .line 1960
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", channel.size()="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "). Using channel size."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " (channel)"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v13, v14, v2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->validateAudioSize(JLjava/lang/String;)V

    :cond_0
    int-to-long v7, v5

    .line 1964
    div-long v7, v13, v7

    long-to-int v2, v7

    if-eqz v2, :cond_3

    .line 1969
    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    move-wide v15, v13

    move-wide v13, v7

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 1970
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1972
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    .line 1973
    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    if-ne v8, v2, :cond_2

    .line 1977
    new-array v0, v2, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 1979
    invoke-virtual {v7, v5}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x47000000    # 32768.0f

    div-float/2addr v8, v11

    aput v8, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1982
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successfully read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " samples from file: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    :try_start_2
    invoke-static {v10, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1974
    :cond_2
    :try_start_3
    new-instance v4, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;

    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ") mismatch expected ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "). File might be corrupt."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v6, v5, v6}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 1966
    :cond_3
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    const-string v2, "Calculated zero samples from file size (file might be corrupt)."

    invoke-direct {v0, v2, v6, v5, v6}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1983
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-static {v10, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    move-object/from16 v9, p1

    .line 1944
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot read file (Permissions?): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, v5, v6}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_5
    move-object/from16 v9, p1

    .line 1941
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Path does not point to a file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, v5, v6}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_6
    move-object/from16 v9, p1

    .line 1938
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audio file does not exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, v5, v6}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final runSecondPassStt(Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
            "Ljava/util/List<",
            "[F>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Error releasing offline STT stream"

    const-string v1, ""

    const-string v2, "SherpaOnnx"

    if-nez p1, :cond_0

    .line 616
    move-object p1, p0

    check-cast p1, Lcom/k2fsa/sherpa/onnx/Sherpa;

    const-string p1, "Offline recognizer not available for second pass STT."

    .line 617
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 620
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "runSecondPassStt called with empty buffer list."

    .line 621
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 625
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, p2

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    array-length v6, v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Running STT second pass on "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chunks, total samples: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 628
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->combineSamples(Ljava/util/List;)[F

    move-result-object p2

    .line 629
    array-length v5, p2

    if-nez v5, :cond_3

    const-string p1, "Combined samples for second pass STT are empty."

    .line 630
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const/4 v5, 0x0

    .line 637
    :try_start_0
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->createStream()Lcom/k2fsa/sherpa/onnx/OfflineStream;

    move-result-object v5

    const/16 v6, 0x3e80

    .line 638
    invoke-virtual {v5, p2, v6}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->acceptWaveform([FI)V

    .line 639
    invoke-virtual {p1, v5}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->decode(Lcom/k2fsa/sherpa/onnx/OfflineStream;)V

    .line 640
    invoke-virtual {p1, v5}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->getResult(Lcom/k2fsa/sherpa/onnx/OfflineStream;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    move-result-object p1

    .line 641
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STT Second pass finished in "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "ms. Result: \'"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "\'"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    .line 649
    :try_start_1
    invoke-virtual {v5}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    move-object v1, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    const-string p2, "Error during STT second pass decoding"

    .line 645
    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v2, p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STT second pass failed: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_5

    .line 649
    :try_start_3
    invoke-virtual {v5}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-object v1

    :goto_3
    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    throw p1
.end method

.method private final safeEmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "SherpaOnnx"

    const-string v1, "Cannot emit event \'"

    .line 1292
    :try_start_0
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 1293
    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    if-eqz v2, :cond_1

    .line 1294
    invoke-interface {v2, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1295
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\', React context or instance not available."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception emitting event \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private final declared-synchronized startAudioProcessingIfNeeded()V
    .locals 11

    const-string v0, "AudioRecord failed to start recording. State: "

    const-string v1, "Failed to start audio processing: "

    monitor-enter p0

    :try_start_0
    const-string v2, "SherpaOnnx"

    const-string v3, "Attempting to start recording and processing."

    .line 1041
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1049
    :try_start_1
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeMicrophone()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v4, :cond_3

    .line 1053
    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    .line 1054
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    const-string v0, "SherpaOnnx"

    const-string v4, "AudioRecord started recording."

    .line 1057
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepProcessingAudio:Z

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1062
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    if-nez v4, :cond_0

    .line 1065
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;

    invoke-direct {v5, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;-><init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    check-cast v5, Ljava/lang/Runnable;

    const-string v6, "AudioReadingThread"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iput-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "SherpaOnnx"

    const-string v5, "Audio reading thread started."

    .line 1067
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v4

    move v5, v2

    move-object v6, v4

    move v4, v0

    goto/16 :goto_4

    :cond_0
    move v4, v2

    :goto_0
    :try_start_4
    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;

    if-nez v5, :cond_1

    .line 1071
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;

    invoke-direct {v6, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;-><init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    check-cast v6, Ljava/lang/Runnable;

    const-string v7, "AudioProcessingThread"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    iput-object v5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v5, "SherpaOnnx"

    const-string v6, "Audio processing thread started."

    .line 1073
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v0

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v6, v5

    move v5, v0

    move v0, v4

    goto :goto_3

    :cond_1
    move v5, v2

    :goto_1
    :try_start_6
    const-string v6, "SherpaOnnx"

    const-string v7, "Audio reading and processing threads started successfully. Feature count set to 1."

    .line 1078
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v5

    move-object v6, v5

    move v5, v2

    :goto_2
    move v10, v4

    move v4, v0

    move v0, v10

    goto :goto_4

    :catch_4
    move-exception v4

    move v5, v2

    move-object v6, v4

    move v4, v0

    move v0, v5

    goto :goto_4

    .line 1055
    :cond_2
    :try_start_7
    new-instance v6, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v6

    .line 1050
    :cond_3
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;

    const-string v4, "AudioRecord became null after init."

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1049
    :cond_4
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;

    const-string v4, "Microphone initialization failed."

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_5
    move-exception v4

    move v0, v2

    move v5, v0

    move-object v6, v4

    :goto_3
    move v4, v5

    :goto_4
    :try_start_8
    const-string v7, "SherpaOnnx"

    const-string v8, "Exception starting Audio processing"

    .line 1081
    move-object v9, v6

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepProcessingAudio:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 1085
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    .line 1086
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    if-eqz v4, :cond_7

    .line 1090
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeMicrophoneInternal()V

    goto :goto_5

    .line 1093
    :cond_7
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeMicrophoneInternal()V

    :goto_5
    iput-object v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1098
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized startProcessingThreadIfNeeded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "SherpaOnnx"

    const-string v1, "Processing thread already running."

    .line 1105
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "SherpaOnnx"

    const-string v2, "Starting processing thread for first feature (likely file feed)."

    .line 1110
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepProcessingAudio:Z

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1112
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 1113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;

    invoke-direct {v1, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;-><init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "AudioProcessingThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized stopAudioProcessingIfNeeded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SherpaOnnx"

    const-string v1, "Stopping ALL recording and processing threads as feature count reached zero or explicit cleanup."

    .line 1120
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepProcessingAudio:Z

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1127
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "SherpaOnnx"

    const-string v1, "AudioRecord stopped."

    .line 1128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SherpaOnnx"

    const-string v2, "Error stopping AudioRecord"

    .line 1129
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1133
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1136
    :cond_1
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->joinFileFeederThread()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x1f4

    .line 1139
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    :cond_2
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x3e8

    .line 1140
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    :cond_3
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-ne v0, v1, :cond_4

    const-string v0, "SherpaOnnx"

    const-string v2, "AudioReadingThread did not finish join in time."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-ne v0, v1, :cond_5

    const-string v0, "SherpaOnnx"

    const-string v1, "AudioProcessingThread did not finish join in time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1144
    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "SherpaOnnx"

    const-string v1, "Interrupted while joining audio threads."

    .line 1145
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeMicrophoneInternal()V

    const-string v0, "SherpaOnnx"

    const-string v1, "Clearing audio buffer queue."

    .line 1152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1153
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->processingThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    const-string v0, "SherpaOnnx"

    const-string v1, "Audio processing fully stopped and resources released."

    .line 1158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final stopTtsInternal()V
    .locals 5

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "Stopping TTS generation and playback."

    const-string v2, "SherpaOnnx"

    .line 1461
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_2

    .line 1467
    :try_start_0
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 1468
    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    .line 1469
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    const-string v1, "AudioTrack paused and flushed."

    .line 1470
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "Error stopping/flushing TTS AudioTrack"

    .line 1475
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iput v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->ttsTotalFramesWritten:I

    return-void
.end method

.method private final validateAudioSize(JLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-string v3, ")"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    int-to-long v6, v4

    .line 2089
    rem-long v8, p1, v6

    cmp-long v0, v8, v0

    const-string v1, "Data size ("

    if-nez v0, :cond_1

    .line 2092
    div-long v6, p1, v6

    long-to-int v0, v6

    if-eqz v0, :cond_0

    return-void

    .line 2093
    :cond_0
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bytes) results in zero samples ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v5, v4, v5}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 2090
    :cond_1
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bytes) is odd, cannot be 16-bit PCM ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v5, v4, v5}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 2087
    :cond_2
    new-instance p1, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Audio data is empty ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v5, v4, v5}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method


# virtual methods
.method public final addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->listenerCount:I

    return-void
.end method

.method public final cleanup()V
    .locals 4

    const-string v0, "Cleaning up Sherpa module resources..."

    const-string v1, "SherpaOnnx"

    .line 1841
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1843
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepFeedingFile:Z

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1846
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iput-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    iput-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    if-eqz v3, :cond_2

    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Forcing audio processing stop during cleanup. Was file active: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    goto :goto_1

    .line 1857
    :cond_2
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    .line 1861
    :goto_1
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeTtsInternal()V

    .line 1862
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeSttInternal()V

    .line 1863
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeKwsInternal()V

    .line 1864
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeVadInternal()V

    const-string v0, "Sherpa module cleanup complete."

    .line 1866
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final disposeKws(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Disposing KWS..."

    const-string v1, "SherpaOnnx"

    .line 1754
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    if-eqz v0, :cond_0

    const-string v0, "KWS was active during dispose call, stopping audio processing."

    .line 1756
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    .line 1758
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    .line 1760
    :cond_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeKwsInternal()V

    const-string v0, "KWS disposed."

    .line 1761
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1762
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final disposeStt(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Disposing STT..."

    const-string v1, "SherpaOnnx"

    .line 1681
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1682
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "STT feature (mic or file) was active during dispose call, stopping processing."

    .line 1684
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepFeedingFile:Z

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1692
    :cond_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    .line 1694
    :cond_1
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeSttInternal()V

    const-string v0, "STT disposed."

    .line 1695
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1696
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final disposeTts(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Disposing TTS..."

    const-string v1, "SherpaOnnx"

    .line 1490
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeTtsInternal()V

    const-string v0, "TTS disposed."

    .line 1492
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1493
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final disposeVad(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Disposing VAD..."

    const-string v1, "SherpaOnnx"

    .line 1822
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    if-eqz v0, :cond_0

    const-string v0, "VAD was active during dispose call, stopping audio processing."

    .line 1824
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    .line 1826
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    .line 1828
    :cond_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeVadInternal()V

    const-string v0, "VAD disposed."

    .line 1829
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1830
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final generateVoice(Ljava/lang/String;IFLcom/facebook/react/bridge/Promise;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1340
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SherpaOnnx"

    if-eqz v0, :cond_0

    const-string p1, "generateVoice called with empty text."

    .line 1341
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1342
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->tts:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    if-nez v4, :cond_1

    const-string p1, "NOT_INITIALIZED"

    const-string p2, "TTS is not initialized."

    .line 1345
    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->audioTrack:Landroid/media/AudioTrack;

    const-string v0, "AUDIO_ERROR"

    if-nez v6, :cond_2

    const-string p1, "AudioTrack is not ready for TTS playback."

    .line 1346
    invoke-interface {p4, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1348
    :cond_2
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const-string p1, "AudioTrack is not initialized."

    .line 1349
    invoke-interface {p4, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    if-eqz v2, :cond_4

    const-string p1, "BUSY_ERROR"

    const-string p2, "TTS is already generating voice."

    .line 1352
    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1356
    :cond_4
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_5

    .line 1358
    :try_start_0
    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to start AudioTrack playback"

    .line 1360
    move-object p3, p1

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {v1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to start audio playback: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    iput-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isGeneratingVoice:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->ttsTotalFramesWritten:I

    .line 1369
    new-instance v8, Ljava/lang/Thread;

    .line 1453
    new-instance v9, Lcom/k2fsa/sherpa/onnx/Sherpa$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/k2fsa/sherpa/onnx/Sherpa$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;IFLcom/k2fsa/sherpa/onnx/OfflineTts;Lcom/k2fsa/sherpa/onnx/Sherpa;Landroid/media/AudioTrack;Lcom/facebook/react/bridge/Promise;)V

    const-string p1, "TtsGenerationThread"

    .line 1369
    invoke-direct {v8, v9, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Sherpa"

    return-object v0
.end method

.method public final initKws(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "INIT_ERROR"

    const-string v1, "modelDir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "provider"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "initKws called."

    const-string v2, "SherpaOnnx"

    .line 1705
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createKwsConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "CONFIG_ERROR"

    const-string p2, "Failed to create KWS config or find model files."

    .line 1708
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1710
    :cond_0
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeKws(Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1711
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "KWS initialization failed."

    .line 1713
    invoke-interface {p3, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unexpected error in initKws"

    .line 1716
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected error during KWS initialization: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeKwsInternal()V

    :goto_0
    return-void
.end method

.method public final initStt(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcom/facebook/react/bridge/Promise;)V
    .locals 14
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p7

    move-object/from16 v10, p11

    const-string v11, "INIT_ERROR"

    const-string v1, "appDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "encoderFilename"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "decoderFilename"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tokensFilename"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "joinersFilename"

    move-object/from16 v6, p6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "provider"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "language"

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "initStt called."

    const-string v12, "SherpaOnnx"

    .line 1512
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :try_start_0
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "PERMISSION_ERROR"

    const-string v1, "RECORD_AUDIO permission not granted."

    .line 1516
    invoke-interface {v10, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v1, p1

    iput-boolean v1, v9, Lcom/k2fsa/sherpa/onnx/Sherpa;->runSecondPassStt:Z

    move/from16 v1, p9

    move/from16 v2, p10

    .line 1522
    invoke-direct {p0, v0, v7, v1, v2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createOnlineRecognizerConfig(Ljava/lang/String;Ljava/lang/String;FF)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "CONFIG_ERROR"

    if-nez v1, :cond_1

    :try_start_1
    const-string v0, "Failed to create Online STT config or find model files."

    .line 1523
    invoke-interface {v10, v13, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1524
    :cond_1
    invoke-direct {p0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeOnlineRecognizer(Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "Online STT initialization failed."

    .line 1525
    invoke-interface {v10, v11, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "Online STT Initialized successfully."

    .line 1527
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v9, Lcom/k2fsa/sherpa/onnx/Sherpa;->runSecondPassStt:Z

    if-eqz v1, :cond_5

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1532
    invoke-direct/range {v1 .. v8}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createOfflineRecognizerConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Failed to create Offline STT config or find model files."

    .line 1533
    invoke-interface {v10, v13, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1534
    :cond_3
    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeOfflineRecognizer(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Offline STT initialization failed."

    .line 1537
    invoke-interface {v10, v11, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "Offline STT Initialized successfully."

    .line 1540
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    .line 1543
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error in initStt"

    .line 1545
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v12, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1546
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error during STT initialization: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeSttInternal()V

    :goto_0
    return-void
.end method

.method public final initTts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "INIT_ERROR"

    const-string v1, "modelDir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "modelName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "provider"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "promise"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "initTts called."

    const-string v1, "SherpaOnnx"

    .line 1320
    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createTtsConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "CONFIG_ERROR"

    const-string p2, "Failed to create TTS config or find model files."

    .line 1323
    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1325
    :cond_0
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeTts(Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1326
    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "TTS initialization failed (see logs/error event)."

    .line 1329
    invoke-interface {p5, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unexpected error in initTts"

    .line 1332
    move-object p3, p1

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {v1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected error during TTS initialization: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeTtsInternal()V

    :goto_0
    return-void
.end method

.method public final initVad(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "INIT_ERROR"

    const-string v1, "modelDir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "provider"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "initVad called."

    const-string v2, "SherpaOnnx"

    .line 1772
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->createVadConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "CONFIG_ERROR"

    const-string p2, "Failed to create VAD config or find model file."

    .line 1775
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1777
    :cond_0
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeVad(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1778
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "VAD initialization failed."

    .line 1780
    invoke-interface {p3, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unexpected error in initVad"

    .line 1783
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1784
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected error during VAD initialization: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->disposeVadInternal()V

    :goto_0
    return-void
.end method

.method public final readAudioFileToFloatArray(Landroid/content/Context;Ljava/lang/String;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;,
            Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputPathOrUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to read pre-formatted (16kHz, 16-bit, mono PCM) audio from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "content"

    const/4 v4, 0x0

    .line 1889
    invoke-static {p2, v3, v4, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1896
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->readFromContentUri(Landroid/content/Context;Landroid/net/Uri;)[F

    move-result-object p1

    return-object p1

    .line 1899
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1901
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->readFromFile(Ljava/io/File;)[F

    move-result-object p1
    :try_end_0
    .catch Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected exception reading audio: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1929
    new-instance p2, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OutOfMemoryError reading large audio data from: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1926
    throw p1

    :catch_2
    move-exception p1

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IOException reading audio: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1923
    new-instance p2, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FileNotFoundException reading audio: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1920
    new-instance p2, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio file or URI not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SecurityException reading audio (Permissions?): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1917
    new-instance p2, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission denied reading audio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    .line 1913
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Audio read error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioReadException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    throw p1

    :catch_6
    move-exception p1

    .line 1910
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Audio permission error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    throw p1

    :catch_7
    move-exception p1

    .line 1907
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid audio format: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$InvalidAudioFormatException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    throw p1

    :catch_8
    move-exception p1

    .line 1904
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Audio file/URI not found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1905
    throw p1
.end method

.method public final removeListeners(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->listenerCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->listenerCount:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->listenerCount:I

    :cond_0
    return-void
.end method

.method public final startKeywordSpotting(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->kws:Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

    if-nez v0, :cond_0

    const-string v0, "NOT_INITIALIZED"

    const-string v1, "KWS not initialized."

    .line 1724
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    const/4 v1, 0x0

    const-string v2, "SherpaOnnx"

    if-eqz v0, :cond_1

    const-string v0, "KWS is already active."

    .line 1726
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1730
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "Cannot start KWS while file processing is active."

    .line 1731
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BUSY_ERROR"

    const-string v1, "Cannot use microphone while file is being processed."

    .line 1732
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "Starting KWS."

    .line 1734
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    .line 1736
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->startAudioProcessingIfNeeded()V

    .line 1737
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final startRecognisingAudioFile(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "File feeding thread started for "

    const-string v1, "filePath"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startRecognisingAudioFile called for path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SherpaOnnx"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->readingThread:Ljava/lang/Thread;

    const-string v3, "BUSY_ERROR"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1583
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v4, :cond_0

    const-string p1, "Cannot start file recognition while microphone processing is active."

    .line 1584
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Cannot process file while microphone is in use."

    .line 1585
    invoke-interface {p2, v3, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 1587
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v4, :cond_1

    const-string p1, "Cannot start file recognition while another file is already feeding."

    .line 1588
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Another file is already being processed."

    .line 1589
    invoke-interface {p2, v3, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOnlineRecognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOfflineRecognizer:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    if-eqz v1, :cond_4

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 1601
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-string v3, "getReactApplicationContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->readAudioFileToFloatArray(Landroid/content/Context;Ljava/lang/String;)[F

    move-result-object v1
    :try_end_0
    .catch Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1611
    new-instance v3, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;

    invoke-direct {v3, p1, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;-><init>(Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 1615
    new-instance v5, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;

    invoke-direct {v5, p1, p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;-><init>(Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1627
    :try_start_1
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->startProcessingThreadIfNeeded()V

    iput-boolean v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepFeedingFile:Z

    .line 1631
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;

    invoke-direct {v6, p0, v1, v3, v5}, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;-><init>(Lcom/k2fsa/sherpa/onnx/Sherpa;[FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Ljava/lang/Runnable;

    const-string v1, "FileFeedingThread"

    invoke-direct {v4, v6, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iput-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Resolving promise."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1634
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1637
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start processing/feeder threads for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1638
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start file processing thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->onSherpaError(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start processing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PROCESSING_ERROR"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error reading audio file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1607
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected error reading file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FILE_READ_ERROR"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    .line 1604
    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->mapExceptionToCode(Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Failed to read audio file."

    :cond_3
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "NOT_INITIALIZED"

    const-string v0, "STT Recognizers must be initialized first."

    .line 1596
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startRecognisingVoice(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    const-string v1, "SherpaOnnx"

    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "Cannot start microphone recognition while file processing is active."

    .line 1555
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BUSY_ERROR"

    const-string v1, "Cannot use microphone while file is being processed."

    .line 1556
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->sttOnlineRecognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v0, :cond_1

    const-string v0, "NOT_INITIALIZED"

    const-string v1, "STT Recognizers not initialized."

    .line 1561
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "Starting Microphone STT recognition."

    .line 1564
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->startAudioProcessingIfNeeded()V

    const/4 v0, 0x0

    .line 1566
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final startVAD(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v0, :cond_0

    const-string v0, "NOT_INITIALIZED"

    const-string v1, "VAD not initialized."

    .line 1791
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    const/4 v1, 0x0

    const-string v2, "SherpaOnnx"

    if-eqz v0, :cond_1

    const-string v0, "VAD is already active."

    .line 1793
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1797
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "Cannot start VAD while file processing is active."

    .line 1798
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BUSY_ERROR"

    const-string v1, "Cannot use microphone while file is being processed."

    .line 1799
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "Starting VAD."

    .line 1801
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    .line 1803
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->startAudioProcessingIfNeeded()V

    .line 1804
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final stopKeywordSpotting(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    const/4 v1, 0x0

    const-string v2, "SherpaOnnx"

    if-nez v0, :cond_0

    const-string v0, "KWS is not active."

    .line 1743
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "Stopping KWS."

    .line 1746
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isKeywordSpotting:Z

    .line 1748
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    .line 1749
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final stopRecognisingVoice(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1650
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SherpaOnnx"

    const-string v1, "stopRecognisingVoice called: Stopping active file recognition feeder."

    .line 1651
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->keepFeedingFile:Z

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->fileFeederThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1656
    :cond_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    const/4 v0, 0x0

    .line 1658
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final stopTts(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopTtsInternal()V

    const/4 v0, 0x0

    .line 1485
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final stopVAD(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    const/4 v1, 0x0

    const-string v2, "SherpaOnnx"

    if-nez v0, :cond_0

    const-string v0, "VAD is not active."

    .line 1810
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "Stopping VAD."

    .line 1813
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->isVAD:Z

    :try_start_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-eqz v0, :cond_1

    .line 1815
    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/Vad;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Error clearing VAD state on stop"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1816
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->stopAudioProcessingIfNeeded()V

    .line 1817
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
