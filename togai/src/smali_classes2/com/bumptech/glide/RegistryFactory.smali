.class final Lcom/bumptech/glide/RegistryFactory;
.super Ljava/lang/Object;
.source "RegistryFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAndInitRegistry(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)Lcom/bumptech/glide/Registry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/module/GlideModule;",
            ">;",
            "Lcom/bumptech/glide/module/AppGlideModule;",
            ")",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/GlideContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 126
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/GlideContext;->getExperiments()Lcom/bumptech/glide/GlideExperiments;

    move-result-object v3

    .line 128
    new-instance v4, Lcom/bumptech/glide/Registry;

    invoke-direct {v4}, Lcom/bumptech/glide/Registry;-><init>()V

    .line 129
    invoke-static {v2, v4, v0, v1, v3}, Lcom/bumptech/glide/RegistryFactory;->initializeDefaults(Landroid/content/Context;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/GlideExperiments;)V

    .line 130
    invoke-static {v2, p0, v4, p1, p2}, Lcom/bumptech/glide/RegistryFactory;->initializeModules(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)V

    return-object v4
.end method

.method private static initializeDefaults(Landroid/content/Context;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/GlideExperiments;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 140
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 144
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;-><init>()V

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v5

    .line 150
    new-instance v6, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    invoke-direct {v6, v0, v5, v2, v3}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 153
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->parcel(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v7

    .line 156
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-direct {v8, v9, v10, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 162
    const-class v9, Lcom/bumptech/glide/GlideBuilder$EnableImageDecoderForBitmaps;

    move-object/from16 v10, p4

    .line 163
    invoke-virtual {v10, v9}, Lcom/bumptech/glide/GlideExperiments;->isEnabled(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 164
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;-><init>()V

    .line 165
    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;-><init>()V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v10, v8}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 168
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v9, v8, v3}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 172
    :goto_0
    const-class v11, Ljava/io/InputStream;

    const-class v12, Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-static {v5, v3}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->streamDecoder(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v13

    const-string v14, "Animation"

    .line 172
    invoke-virtual {v1, v14, v11, v12, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 177
    const-class v11, Ljava/nio/ByteBuffer;

    const-class v12, Landroid/graphics/drawable/Drawable;

    .line 181
    invoke-static {v5, v3}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->byteBufferDecoder(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v13

    .line 177
    invoke-virtual {v1, v14, v11, v12, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 184
    new-instance v11, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;

    invoke-direct {v11, v0}, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v12, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 188
    new-instance v13, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v13}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    .line 189
    new-instance v15, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct {v15}, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    move-object/from16 p4, v15

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v16, v13

    .line 193
    const-class v13, Ljava/nio/ByteBuffer;

    move-object/from16 v17, v15

    new-instance v15, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    invoke-direct {v15}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>()V

    .line 194
    invoke-virtual {v1, v13, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v13

    const-class v15, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 195
    invoke-virtual {v13, v15, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v13, Ljava/nio/ByteBuffer;

    const-class v15, Landroid/graphics/Bitmap;

    move-object/from16 v18, v11

    const-string v11, "Bitmap"

    .line 197
    invoke-virtual {v0, v11, v13, v15, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v13, Ljava/io/InputStream;

    const-class v15, Landroid/graphics/Bitmap;

    .line 198
    invoke-virtual {v0, v11, v13, v15, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 200
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v13, Landroid/graphics/Bitmap;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;

    invoke-direct {v15, v8}, Lcom/bumptech/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    invoke-virtual {v1, v11, v0, v13, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 209
    :cond_1
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    const-class v8, Landroid/graphics/Bitmap;

    .line 213
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->asset(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v13

    .line 209
    invoke-virtual {v1, v11, v0, v8, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 216
    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v8, Landroid/graphics/Bitmap;

    .line 217
    invoke-virtual {v1, v11, v0, v8, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v8, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    .line 222
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v15

    invoke-virtual {v0, v8, v13, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v8, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;

    invoke-direct {v15}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;-><init>()V

    .line 223
    invoke-virtual {v0, v11, v8, v13, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v8, Landroid/graphics/Bitmap;

    .line 224
    invoke-virtual {v0, v8, v12}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v8, Ljava/nio/ByteBuffer;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v15, v4, v10}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    const-string v10, "BitmapDrawable"

    .line 226
    invoke-virtual {v0, v10, v8, v13, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v8, Ljava/io/InputStream;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v15, v4, v9}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 231
    invoke-virtual {v0, v10, v8, v13, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v8, Landroid/os/ParcelFileDescriptor;

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v13, v4, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 236
    invoke-virtual {v0, v10, v8, v9, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;

    invoke-direct {v8, v2, v12}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 241
    invoke-virtual {v0, v7, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Ljava/io/InputStream;

    const-class v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;

    invoke-direct {v9, v5, v6, v3}, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 243
    invoke-virtual {v0, v14, v7, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 248
    invoke-virtual {v0, v14, v5, v7, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;-><init>()V

    .line 250
    invoke-virtual {v0, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v6, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 254
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v7

    .line 253
    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v7, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 255
    invoke-virtual {v0, v11, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/graphics/drawable/Drawable;

    move-object/from16 v7, v18

    .line 261
    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;

    invoke-direct {v8, v7, v2}, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 262
    invoke-virtual {v0, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v5, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;-><init>()V

    .line 265
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    .line 266
    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 267
    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>()V

    .line 268
    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Ljava/io/File;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 269
    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    .line 271
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v5, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;

    invoke-direct {v5, v3}, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 273
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    .line 275
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$Factory;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    .line 282
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->inputStreamFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v0

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->assetFileDescriptorFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v3

    .line 287
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->drawableFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v5

    .line 288
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/io/InputStream;

    .line 289
    invoke-virtual {v1, v6, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    const-class v8, Ljava/io/InputStream;

    .line 290
    invoke-virtual {v6, v7, v8, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    .line 291
    invoke-virtual {v0, v6, v7, v3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v6, Ljava/lang/Integer;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    .line 293
    invoke-virtual {v0, v6, v7, v3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 297
    invoke-virtual {v0, v3, v6, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 298
    invoke-virtual {v0, v3, v6, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    .line 299
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/load/model/ResourceUriLoader;->newStreamFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    .line 303
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/load/model/ResourceUriLoader;->newAssetFileDescriptorFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v6

    .line 300
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 306
    new-instance v0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    invoke-direct {v0, v4}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(Landroid/content/res/Resources;)V

    .line 307
    new-instance v3, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 309
    new-instance v5, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v5, v4}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 311
    const-class v6, Ljava/lang/Integer;

    const-class v7, Landroid/net/Uri;

    .line 312
    invoke-virtual {v1, v6, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Landroid/net/Uri;

    .line 313
    invoke-virtual {v6, v7, v8, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v6, Ljava/lang/Integer;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    .line 314
    invoke-virtual {v0, v6, v7, v3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    .line 315
    invoke-virtual {v0, v6, v7, v3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    .line 316
    invoke-virtual {v0, v3, v6, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    .line 317
    invoke-virtual {v0, v3, v6, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 319
    const-class v0, Ljava/lang/String;

    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 320
    invoke-virtual {v1, v0, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 321
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;-><init>()V

    .line 322
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    .line 323
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;-><init>()V

    .line 324
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 327
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 331
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_3

    .line 334
    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;

    invoke-direct {v5, v7}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 336
    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;

    invoke-direct {v5, v7}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 341
    :cond_3
    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    move-object/from16 v6, v17

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 342
    invoke-virtual {v1, v0, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;

    invoke-direct {v8, v6}, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 343
    invoke-virtual {v0, v3, v5, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v8, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;

    invoke-direct {v8, v6}, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 347
    invoke-virtual {v0, v3, v5, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    .line 351
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    .line 352
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 354
    invoke-virtual {v0, v3, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    const-class v6, [B

    .line 355
    invoke-virtual {v0, v6, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    .line 356
    invoke-virtual {v0, v6, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/net/Uri;

    .line 357
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v7

    invoke-virtual {v0, v3, v5, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v7

    invoke-virtual {v0, v3, v5, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/drawable/UnitDrawableDecoder;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/drawable/UnitDrawableDecoder;-><init>()V

    .line 359
    invoke-virtual {v0, v3, v5, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;

    invoke-direct {v7, v4}, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;)V

    .line 361
    invoke-virtual {v0, v3, v5, v7}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/graphics/Bitmap;

    move-object/from16 v5, v16

    .line 362
    invoke-virtual {v0, v3, v6, v5}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;

    move-object/from16 v8, p4

    invoke-direct {v7, v2, v5, v8}, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 363
    invoke-virtual {v0, v3, v6, v7}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 368
    invoke-virtual {v0, v3, v6, v8}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    .line 372
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->byteBuffer(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    .line 373
    const-class v2, Ljava/nio/ByteBuffer;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 374
    const-class v2, Ljava/nio/ByteBuffer;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v5, v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    return-void
.end method

.method private static initializeModules(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/Registry;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/module/GlideModule;",
            ">;",
            "Lcom/bumptech/glide/module/AppGlideModule;",
            ")V"
        }
    .end annotation

    .line 387
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/module/GlideModule;

    .line 389
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/bumptech/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 391
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    if-eqz p4, :cond_1

    .line 401
    invoke-virtual {p4, p0, p1, p2}, Lcom/bumptech/glide/module/AppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    :cond_1
    return-void
.end method

.method static lazilyCreateAndInitializeRegistry(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/module/GlideModule;",
            ">;",
            "Lcom/bumptech/glide/module/AppGlideModule;",
            ")",
            "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
            "Lcom/bumptech/glide/Registry;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/bumptech/glide/RegistryFactory$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/RegistryFactory$1;-><init>(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)V

    return-object v0
.end method
