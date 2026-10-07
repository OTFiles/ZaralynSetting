.class public final Lorg/apache/harmony/awt/datatransfer/DataProxy;
.super Ljava/lang/Object;
.source "DataProxy.java"

# interfaces
.implements Ljava/awt/datatransfer/Transferable;


# static fields
.field public static final charsetTextClasses:[Ljava/lang/Class;

.field public static final unicodeTextClasses:[Ljava/lang/Class;


# instance fields
.field private final data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

.field private final flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/io/Reader;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljava/nio/CharBuffer;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, [C

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 62
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->unicodeTextClasses:[Ljava/lang/Class;

    .line 65
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [B

    aput-object v1, v0, v2

    const-class v1, Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/InputStream;

    aput-object v1, v0, v4

    .line 64
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->charsetTextClasses:[Ljava/lang/Class;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DataProvider;)V
    .locals 1
    .param p1, "data"    # Lorg/apache/harmony/awt/datatransfer/DataProvider;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    .line 72
    invoke-static {}, Ljava/awt/datatransfer/SystemFlavorMap;->getDefaultFlavorMap()Ljava/awt/datatransfer/FlavorMap;

    move-result-object v0

    check-cast v0, Ljava/awt/datatransfer/SystemFlavorMap;

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    .line 73
    return-void
.end method

.method private createBufferedImage(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Ljava/awt/image/BufferedImage;
    .locals 25
    .param p1, "b"    # Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    .line 272
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 273
    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    if-lez v2, :cond_a

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 277
    :cond_0
    const/4 v2, 0x0

    .line 278
    .local v2, "cm":Ljava/awt/image/ColorModel;
    const/4 v3, 0x0

    .line 280
    .local v3, "wr":Ljava/awt/image/WritableRaster;
    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v5, 0x20

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v4, v4, [I

    if-eqz v4, :cond_2

    .line 281
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 282
    return-object v1

    .line 284
    :cond_1
    new-array v15, v9, [I

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v4, v15, v7

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v4, v15, v10

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v4, v15, v8

    .line 285
    .local v15, "masks":[I
    iget-object v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v4, [I

    .line 286
    .local v4, "buffer":[I
    new-instance v5, Ljava/awt/image/DirectColorModel;

    iget v8, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    iget v9, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    iget v10, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    invoke-direct {v5, v6, v8, v9, v10}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    move-object v2, v5

    .line 288
    new-instance v11, Ljava/awt/image/DataBufferInt;

    array-length v5, v4

    invoke-direct {v11, v4, v5}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    .line 289
    iget v12, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v13, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v14, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    .line 290
    const/16 v16, 0x0

    .line 287
    invoke-static/range {v11 .. v16}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    goto/16 :goto_2

    .line 292
    .end local v4
    .end local v15
    :cond_2
    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    if-ne v4, v6, :cond_5

    iget-object v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v4, v4, [B

    if-eqz v4, :cond_5

    .line 293
    new-array v13, v9, [I

    fill-array-data v13, :array_0

    .line 295
    .local v13, "bits":[I
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    new-array v4, v9, [I

    aput v10, v4, v10

    aput v8, v4, v8

    .line 300
    .local v4, "offsets":[I
    .local v23, "offsets":[I
    :goto_0
    move-object/from16 v23, v4

    goto :goto_1

    .line 297
    .end local v4
    .end local v23
    :cond_3
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 298
    new-array v4, v9, [I

    aput v8, v4, v7

    aput v10, v4, v10

    goto :goto_0

    .line 300
    .restart local v23
    :goto_1
    nop

    .line 302
    iget-object v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v4, [B

    .line 303
    .local v4, "buffer":[B
    new-instance v5, Ljava/awt/image/ComponentColorModel;

    .line 304
    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v12

    .line 305
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 306
    const/16 v16, 0x1

    .line 307
    const/16 v17, 0x0

    .line 303
    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    move-object v2, v5

    .line 310
    new-instance v5, Ljava/awt/image/DataBufferByte;

    array-length v6, v4

    invoke-direct {v5, v4, v6}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 311
    iget v6, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v8, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v9, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/16 v22, 0x3

    const/16 v24, 0x0

    .line 309
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-static/range {v18 .. v24}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    goto :goto_2

    .line 300
    .end local v4
    .end local v23
    :cond_4
    return-object v1

    .line 313
    .end local v13
    :cond_5
    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_6

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_7

    .line 314
    :cond_6
    iget-object v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v4, v4, [S

    if-eqz v4, :cond_7

    .line 315
    new-array v15, v9, [I

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v4, v15, v7

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v4, v15, v10

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v4, v15, v8

    .line 316
    .restart local v15
    iget-object v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v4, [S

    .line 317
    .local v4, "buffer":[S
    new-instance v5, Ljava/awt/image/DirectColorModel;

    iget v6, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    iget v8, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    iget v9, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    iget v10, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    invoke-direct {v5, v6, v8, v9, v10}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    move-object v2, v5

    .line 319
    new-instance v11, Ljava/awt/image/DataBufferUShort;

    array-length v5, v4

    invoke-direct {v11, v4, v5}, Ljava/awt/image/DataBufferUShort;-><init>([SI)V

    .line 320
    iget v12, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v13, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v14, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    .line 321
    const/16 v16, 0x0

    .line 318
    invoke-static/range {v11 .. v16}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    .line 324
    .end local v4
    .end local v15
    :cond_7
    :goto_2
    if-eqz v2, :cond_9

    if-nez v3, :cond_8

    goto :goto_3

    .line 327
    :cond_8
    new-instance v4, Ljava/awt/image/BufferedImage;

    invoke-direct {v4, v2, v3, v7, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v4

    .line 325
    :cond_9
    :goto_3
    return-object v1

    .line 274
    .end local v2
    .end local v3
    :cond_a
    :goto_4
    return-object v1

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method private getCharset(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;

    .line 215
    const-string v0, "charset"

    invoke-virtual {p1, v0}, Ljava/awt/datatransfer/DataFlavor;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileList(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "application/x-java-file-list"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getFileList()[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 156
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v0
    :cond_1
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private getHTML(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "text/html"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getHTML()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v0
    :cond_1
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private getImage(Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/Image;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "image/x-java-image"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v0

    .line 256
    .local v0, "bitmap":Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->createBufferedImage(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    .end local v0
    :cond_1
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private getPlainText(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "text/plain"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getText()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 143
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0
    :cond_1
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private getSerializedObject(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 6
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 196
    invoke-static {p1}, Ljava/awt/datatransfer/SystemFlavorMap;->encodeDataFlavor(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "nativeFormat":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1, v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getSerializedObject(Ljava/lang/Class;)[B

    move-result-object v1

    .line 202
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    .line 206
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 208
    .local v2, "str":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    .end local v2
    .end local v3
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "awt.4F"

    invoke-static {v3}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v1
    :cond_1
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1
.end method

.method private getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 221
    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassReader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 226
    :cond_1
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassCharBuffer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0

    .line 229
    :cond_2
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 231
    .local v0, "chars":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 232
    return-object v0

    .line 234
    .end local v0
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getCharset(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [B

    if-ne v1, v2, :cond_4

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 237
    .local v1, "bytes":[B
    return-object v1

    .line 239
    .end local v1
    :cond_4
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassByteBuffer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 241
    .restart local v1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 243
    .end local v1
    :cond_5
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassInputStream()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 245
    .restart local v1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2

    .line 247
    .end local v1
    :cond_6
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p2}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1
.end method

.method private getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 4
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "application/x-java-url"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 184
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    return-object v1

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 191
    :cond_1
    new-instance v2, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v2, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v2

    .line 182
    .end local v1
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    .end local v0
    :cond_3
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2
    .param p1, "b"    # Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    .line 268
    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/high16 v1, 0xff0000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2
    .param p1, "b"    # Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    .line 264
    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/high16 v1, 0xff0000

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDataProvider()Lorg/apache/harmony/awt/datatransfer/DataProvider;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    return-object v0
.end method

.method public getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "flavor"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getHTML(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    const-string v1, "text/uri-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getPlainText(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorJavaFileListType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getFileList(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 95
    :cond_3
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorSerializedObjectType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getSerializedObject(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 98
    :cond_4
    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataProvider;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p1, v1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 101
    :cond_5
    const-string v1, "image/x-java-image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    const-class v1, Ljava/awt/Image;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getImage(Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/Image;

    move-result-object v1

    return-object v1

    .line 106
    :cond_6
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1
.end method

.method public getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 7

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/awt/datatransfer/DataFlavor;>;"
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getNativeFormats()[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "natives":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 122
    .end local v2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/awt/datatransfer/DataFlavor;

    return-object v2

    .line 114
    .restart local v2
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/awt/datatransfer/SystemFlavorMap;->getFlavorsForNative(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 115
    .local v3, "flavors":Ljava/util/List;, "Ljava/util/List<Ljava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/awt/datatransfer/DataFlavor;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    .end local v3
    .end local v4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .restart local v3
    .restart local v4
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/awt/datatransfer/DataFlavor;

    .line 117
    .local v5, "f":Ljava/awt/datatransfer/DataFlavor;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5
    goto :goto_1
.end method

.method public isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 3
    .param p1, "flavor"    # Ljava/awt/datatransfer/DataFlavor;

    .line 126
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 127
    .local v0, "flavors":[Ljava/awt/datatransfer/DataFlavor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 132
    .end local v1
    const/4 v1, 0x0

    return v1

    .line 128
    .restart local v1
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v2, 0x1

    return v2

    .line 127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
