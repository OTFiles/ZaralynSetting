.class public Lcom/android/settings/gifmanager/GifOpenHelper;
.super Ljava/lang/Object;
.source "GifOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;
    }
.end annotation


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frameindex:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lastImage:Landroid/graphics/Bitmap;

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->loopCount:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameindex:I

    .line 70
    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->block:[B

    .line 71
    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    .line 74
    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->dispose:I

    .line 76
    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastDispose:I

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transparency:Z

    .line 78
    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->delay:I

    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 26

    .line 255
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 256
    .local v1, "NullCode":I
    iget v2, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->iw:I

    iget v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->ih:I

    mul-int/2addr v2, v3

    .line 259
    .local v2, "npix":I
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixels:[B

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixels:[B

    array-length v3, v3

    if-ge v3, v2, :cond_1

    .line 260
    :cond_0
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixels:[B

    .line 262
    :cond_1
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->prefix:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_2

    .line 263
    new-array v3, v4, [S

    iput-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->prefix:[S

    .line 265
    :cond_2
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->suffix:[B

    if-nez v3, :cond_3

    .line 266
    new-array v3, v4, [B

    iput-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->suffix:[B

    .line 268
    :cond_3
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelStack:[B

    if-nez v3, :cond_4

    .line 269
    const/16 v3, 0x1001

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelStack:[B

    .line 272
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v3

    .line 273
    .local v3, "data_size":I
    const/4 v5, 0x1

    shl-int v6, v5, v3

    .line 274
    .local v6, "clear":I
    add-int/lit8 v7, v6, 0x1

    .line 275
    .local v7, "end_of_information":I
    add-int/lit8 v8, v6, 0x2

    .line 276
    .local v8, "available":I
    move v9, v1

    .line 277
    .local v9, "old_code":I
    add-int/lit8 v10, v3, 0x1

    .line 278
    .local v10, "code_size":I
    shl-int v11, v5, v10

    sub-int/2addr v11, v5

    .line 279
    .local v11, "code_mask":I
    const/4 v12, 0x0

    move v13, v12

    .local v13, "code":I
    :goto_0
    if-ge v13, v6, :cond_5

    .line 280
    iget-object v14, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->prefix:[S

    aput-short v12, v14, v13

    .line 281
    iget-object v14, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->suffix:[B

    int-to-byte v15, v13

    aput-byte v15, v14, v13

    .line 279
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 285
    :cond_5
    move v14, v12

    .local v14, "bi":I
    move v15, v12

    .local v15, "pi":I
    move/from16 v16, v12

    .local v16, "top":I
    move/from16 v17, v12

    .local v17, "first":I
    move/from16 v18, v12

    .local v18, "count":I
    move/from16 v19, v12

    .local v19, "bits":I
    move/from16 v20, v12

    .line 286
    .local v20, "datum":I
    move/from16 v4, v17

    move/from16 v17, v15

    move v15, v14

    move v14, v8

    move v8, v12

    move v12, v9

    move/from16 v9, v19

    .end local v19
    .local v4, "first":I
    .local v8, "i":I
    .local v9, "bits":I
    .local v12, "old_code":I
    .local v14, "available":I
    .local v15, "bi":I
    .local v17, "pi":I
    :goto_1
    if-ge v8, v2, :cond_13

    .line 287
    if-nez v16, :cond_12

    .line 288
    if-ge v9, v10, :cond_8

    .line 290
    if-nez v18, :cond_7

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readBlock()I

    move-result v18

    .line 293
    if-gtz v18, :cond_6

    .line 294
    nop

    .line 358
    move/from16 v21, v1

    move/from16 v22, v3

    goto/16 :goto_7

    .line 296
    :cond_6
    const/4 v15, 0x0

    .line 298
    :cond_7
    iget-object v5, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->block:[B

    aget-byte v5, v5, v15

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v9

    add-int v20, v20, v5

    .line 299
    add-int/lit8 v9, v9, 0x8

    .line 300
    const/4 v5, 0x1

    add-int/2addr v15, v5

    .line 301
    add-int/lit8 v18, v18, -0x1

    .line 302
    goto/16 :goto_6

    .line 305
    :cond_8
    and-int v13, v20, v11

    .line 306
    shr-int v20, v20, v10

    .line 307
    sub-int/2addr v9, v10

    .line 310
    if-gt v13, v14, :cond_11

    if-ne v13, v7, :cond_9

    .line 311
    nop

    .line 358
    move/from16 v21, v1

    move/from16 v22, v3

    move/from16 v23, v4

    goto/16 :goto_4

    .line 313
    :cond_9
    if-ne v13, v6, :cond_a

    .line 315
    add-int/lit8 v10, v3, 0x1

    .line 316
    const/4 v5, 0x1

    shl-int v19, v5, v10

    add-int/lit8 v11, v19, -0x1

    .line 317
    add-int/lit8 v14, v6, 0x2

    .line 318
    move v12, v1

    .line 319
    goto :goto_1

    .line 321
    :cond_a
    const/4 v5, 0x1

    if-ne v12, v1, :cond_b

    .line 322
    iget-object v5, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelStack:[B

    add-int/lit8 v19, v16, 0x1

    .local v19, "top":I
    move/from16 v21, v1

    iget-object v1, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->suffix:[B

    .end local v1
    .local v21, "NullCode":I
    aget-byte v1, v1, v13

    aput-byte v1, v5, v16

    .line 323
    .end local v16
    move v12, v13

    .line 324
    move v4, v13

    .line 325
    nop

    .line 286
    move/from16 v16, v19

    move/from16 v1, v21

    goto/16 :goto_6

    .line 327
    .end local v19
    .end local v21
    .restart local v1
    .restart local v16
    :cond_b
    move/from16 v21, v1

    .end local v1
    .restart local v21
    move v1, v13

    .line 328
    .local v1, "in_code":I
    if-ne v13, v14, :cond_c

    .line 329
    iget-object v5, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelStack:[B

    add-int/lit8 v19, v16, 0x1

    .restart local v19
    move/from16 v22, v3

    int-to-byte v3, v4

    .end local v3
    .local v22, "data_size":I
    aput-byte v3, v5, v16

    .line 330
    .end local v16
    move v3, v12

    .line 332
    .end local v13
    .local v3, "code":I
    move v13, v3

    move/from16 v16, v19

    goto :goto_2

    .end local v19
    .end local v22
    .local v3, "data_size":I
    .restart local v13
    .restart local v16
    :cond_c
    move/from16 v22, v3

    .end local v3
    .restart local v22
    :goto_2
    if-le v13, v6, :cond_d

    .line 333
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelStack:[B

    add-int/lit8 v5, v16, 0x1

    .local v5, "top":I
    move/from16 v23, v4

    iget-object v4, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->suffix:[B

    .end local v4
    .local v23, "first":I
    aget-byte v4, v4, v13

    aput-byte v4, v3, v16

    .line 334
    .end local v16
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->prefix:[S

    aget-short v13, v3, v13

    .line 332
    move/from16 v16, v5

    move/from16 v4, v23

    goto :goto_2

    .line 336
    .end local v5
    .end local v23
    .restart local v4
    .restart local v16
    :cond_d
    move/from16 v23, v4

    .end local v4
    .restart local v23
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->suffix:[B

    aget-byte v3, v3, v13

    and-int/lit16 v4, v3, 0xff

    .line 338
    .end local v23
    .restart local v4
    const/16 v3, 0x1000

    if-lt v14, v3, :cond_e

    .line 339
    goto :goto_7

    .line 341
    :cond_e
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelStack:[B

    add-int/lit8 v5, v16, 0x1

    .restart local v5
    move/from16 v24, v5

    int-to-byte v5, v4

    .end local v5
    .local v24, "top":I
    aput-byte v5, v3, v16

    .line 342
    .end local v16
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->prefix:[S

    int-to-short v5, v12

    aput-short v5, v3, v14

    .line 343
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->suffix:[B

    int-to-byte v5, v4

    aput-byte v5, v3, v14

    .line 344
    add-int/lit8 v14, v14, 0x1

    .line 345
    and-int v3, v14, v11

    if-nez v3, :cond_f

    const/16 v3, 0x1000

    if-ge v14, v3, :cond_10

    .line 347
    add-int/lit8 v10, v10, 0x1

    .line 348
    add-int/2addr v11, v14

    goto :goto_3

    .line 350
    :cond_f
    const/16 v3, 0x1000

    .line 354
    .end local v12
    .local v1, "old_code":I
    :cond_10
    :goto_3
    move v12, v1

    move/from16 v16, v24

    goto :goto_5

    .line 358
    .end local v21
    .end local v22
    .end local v24
    .local v1, "NullCode":I
    .restart local v3
    .restart local v12
    .restart local v16
    :cond_11
    move/from16 v21, v1

    move/from16 v22, v3

    move/from16 v23, v4

    .end local v1
    .end local v3
    .end local v4
    .restart local v21
    .restart local v22
    .restart local v23
    :goto_4
    move/from16 v4, v23

    goto :goto_7

    .line 354
    .end local v21
    .end local v22
    .end local v23
    .restart local v1
    .restart local v3
    .restart local v4
    :cond_12
    move/from16 v21, v1

    move/from16 v22, v3

    move/from16 v23, v4

    const/16 v3, 0x1000

    .end local v1
    .end local v3
    .restart local v21
    .restart local v22
    :goto_5
    add-int/lit8 v16, v16, -0x1

    .line 355
    iget-object v1, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixels:[B

    add-int/lit8 v5, v17, 0x1

    .local v5, "pi":I
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelStack:[B

    aget-byte v3, v3, v16

    aput-byte v3, v1, v17

    .line 356
    .end local v17
    add-int/lit8 v8, v8, 0x1

    .line 286
    move/from16 v17, v5

    move/from16 v1, v21

    move/from16 v3, v22

    .end local v5
    .end local v21
    .end local v22
    .restart local v1
    .restart local v3
    .restart local v17
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 358
    :cond_13
    move/from16 v21, v1

    move/from16 v22, v3

    move/from16 v23, v4

    .end local v1
    .end local v3
    .restart local v21
    .restart local v22
    :goto_7
    move/from16 v1, v17

    .end local v8
    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_14

    .line 359
    iget-object v3, v0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixels:[B

    const/4 v5, 0x0

    aput-byte v5, v3, v1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 361
    :cond_14
    return-void
.end method

.method protected err()Z
    .locals 1

    .line 364
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDelay(I)I
    .locals 1
    .param p1, "n"    # I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->delay:I

    .line 111
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;

    iget v0, v0, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;->delay:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->delay:I

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "im":Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;

    iget-object v0, v1, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 215
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/gifmanager/GifOpenHelper;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    return v0
.end method

.method public init()V
    .locals 1

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    .line 370
    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    .line 371
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frames:Ljava/util/Vector;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gct:[I

    .line 373
    iput-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lct:[I

    .line 374
    return-void
.end method

.method public nextBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 219
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameindex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameindex:I

    .line 220
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameindex:I

    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameindex:I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frames:Ljava/util/Vector;

    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameindex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;

    iget-object v0, v0, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected read()I
    .locals 3

    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "curByte":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    .line 383
    .end local v1
    :goto_0
    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->init()V

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iput-object p1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->in:Ljava/io/InputStream;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readHeader()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->err()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readContents()V

    .line 239
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    if-gez v0, :cond_1

    .line 240
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    goto :goto_0

    .line 244
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    .line 247
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 250
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    .end local v0
    :goto_1
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    return v0
.end method

.method protected readBlock()I
    .locals 5

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "n":I
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    if-lez v1, :cond_2

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "count":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    if-ge v0, v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->block:[B

    iget v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 394
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 395
    goto :goto_1

    .line 397
    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    .line 401
    .end local v1
    :cond_1
    :goto_1
    goto :goto_2

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    .end local v1
    :goto_2
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 403
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    .line 406
    :cond_2
    return v0
.end method

.method protected readColorTable(I)[I
    .locals 12
    .param p1, "ncolors"    # I

    .line 411
    const/4 v0, 0x3

    mul-int/2addr v0, p1

    .line 412
    .local v0, "nbytes":I
    const/4 v1, 0x0

    .line 413
    .local v1, "tab":[I
    new-array v2, v0, [B

    .line 414
    .local v2, "c":[B
    const/4 v3, 0x0

    move v4, v3

    .line 416
    .local v4, "n":I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 419
    goto :goto_0

    .line 417
    :catch_0
    move-exception v5

    .line 418
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    .end local v5
    :goto_0
    if-ge v4, v0, :cond_0

    .line 421
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    goto :goto_2

    .line 423
    :cond_0
    const/16 v5, 0x100

    new-array v1, v5, [I

    .line 424
    const/4 v5, 0x0

    .line 425
    .local v5, "i":I
    nop

    .line 426
    .local v3, "j":I
    :goto_1
    if-ge v5, p1, :cond_1

    .line 427
    add-int/lit8 v6, v3, 0x1

    .local v6, "j":I
    aget-byte v3, v2, v3

    .end local v3
    and-int/lit16 v3, v3, 0xff

    .line 428
    .local v3, "r":I
    add-int/lit8 v7, v6, 0x1

    .local v7, "j":I
    aget-byte v6, v2, v6

    .end local v6
    and-int/lit16 v6, v6, 0xff

    .line 429
    .local v6, "g":I
    add-int/lit8 v8, v7, 0x1

    .local v8, "j":I
    aget-byte v7, v2, v7

    .end local v7
    and-int/lit16 v7, v7, 0xff

    .line 430
    .local v7, "b":I
    add-int/lit8 v9, v5, 0x1

    .local v9, "i":I
    const/high16 v10, -0x1000000

    shl-int/lit8 v11, v3, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v7

    aput v10, v1, v5

    .line 431
    .end local v3
    .end local v5
    .end local v6
    .end local v7
    nop

    .line 425
    move v3, v8

    move v5, v9

    goto :goto_1

    .line 433
    .end local v8
    .end local v9
    :cond_1
    :goto_2
    return-object v1
.end method

.method protected readContents()V
    .locals 7

    .line 439
    const/4 v0, 0x0

    move v1, v0

    .line 440
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->err()Z

    move-result v2

    if-nez v2, :cond_8

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v2

    .line 442
    .local v2, "code":I
    if-eqz v2, :cond_7

    const/16 v3, 0x21

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    .line 477
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    .end local v2
    goto :goto_2

    .line 471
    .restart local v2
    :cond_0
    const/4 v1, 0x1

    .line 472
    goto :goto_2

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readImage()V

    .line 445
    goto :goto_2

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v2

    .line 448
    const/16 v3, 0xf9

    if-eq v2, v3, :cond_6

    const/16 v3, 0xff

    if-eq v2, v3, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->skip()V

    .line 468
    goto :goto_2

    .line 454
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readBlock()I

    .line 455
    const-string v3, ""

    .line 456
    .local v3, "app":Ljava/lang/String;
    move-object v4, v3

    move v3, v0

    .local v3, "i":I
    .local v4, "app":Ljava/lang/String;
    :goto_1
    const/16 v5, 0xb

    if-ge v3, v5, :cond_4

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->block:[B

    aget-byte v6, v6, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 459
    .end local v3
    :cond_4
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readNetscapeExt()V

    goto :goto_2

    .line 462
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->skip()V

    .line 464
    goto :goto_2

    .line 450
    .end local v4
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readGraphicControlExt()V

    .line 451
    goto :goto_2

    .line 475
    :cond_7
    nop

    .line 479
    .end local v2
    :goto_2
    goto :goto_0

    .line 480
    :cond_8
    return-void
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v0

    .line 485
    .local v0, "packed":I
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->dispose:I

    .line 486
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 487
    iput v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->dispose:I

    .line 489
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transparency:Z

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->delay:I

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v1

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transIndex:I

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    .line 493
    return-void
.end method

.method protected readHeader()V
    .locals 4

    .line 497
    const-string v0, ""

    .line 498
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v1
    :cond_0
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    .line 503
    return-void

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readLSD()V

    .line 506
    iget-boolean v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gctFlag:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->err()Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gctSize:I

    invoke-virtual {p0, v1}, Lcom/android/settings/gifmanager/GifOpenHelper;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gct:[I

    .line 508
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gct:[I

    iget v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->bgIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->bgColor:I

    .line 510
    :cond_2
    return-void
.end method

.method protected readImage()V
    .locals 6

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readShort()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->ix:I

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readShort()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->iy:I

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readShort()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->iw:I

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readShort()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->ih:I

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v0

    .line 524
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lctFlag:Z

    .line 528
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->interlace:Z

    .line 531
    const/4 v1, 0x2

    and-int/lit8 v4, v0, 0x7

    shl-int/2addr v1, v4

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lctSize:I

    .line 532
    iget-boolean v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lctFlag:Z

    if-eqz v1, :cond_2

    .line 533
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lctSize:I

    invoke-virtual {p0, v1}, Lcom/android/settings/gifmanager/GifOpenHelper;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lct:[I

    .line 534
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lct:[I

    iput-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->act:[I

    goto :goto_2

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gct:[I

    iput-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->act:[I

    .line 537
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->bgIndex:I

    iget v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transIndex:I

    if-ne v1, v4, :cond_3

    .line 538
    iput v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->bgColor:I

    .line 541
    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 542
    .local v1, "save":I
    iget-boolean v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transparency:Z

    if-eqz v4, :cond_4

    .line 543
    iget-object v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->act:[I

    iget v5, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transIndex:I

    aget v1, v4, v5

    .line 544
    iget-object v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->act:[I

    iget v5, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transIndex:I

    aput v2, v4, v5

    .line 546
    :cond_4
    iget-object v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->act:[I

    if-nez v2, :cond_5

    .line 547
    iput v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->status:I

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->err()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 550
    return-void

    .line 552
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->decodeImageData()V

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->skip()V

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 555
    return-void

    .line 557
    :cond_7
    iget v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    .line 559
    iget v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    iget v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->image:Landroid/graphics/Bitmap;

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->setPixels()V

    .line 562
    iget-object v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frames:Ljava/util/Vector;

    new-instance v3, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;

    iget-object v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->delay:I

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;-><init>(Lcom/android/settings/gifmanager/GifOpenHelper;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 564
    iget-boolean v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transparency:Z

    if-eqz v2, :cond_8

    .line 565
    iget-object v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->act:[I

    iget v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transIndex:I

    aput v1, v2, v3

    .line 567
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->resetFrame()V

    .line 568
    return-void
.end method

.method protected readLSD()V
    .locals 3

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readShort()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readShort()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->height:I

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v0

    .line 577
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gctFlag:Z

    .line 580
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->gctSize:I

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v1

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->bgIndex:I

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v1

    iput v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixelAspect:I

    .line 583
    return-void
.end method

.method protected readNetscapeExt()V
    .locals 3

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readBlock()I

    .line 588
    iget-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->block:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->block:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 591
    .local v0, "b1":I
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->block:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 592
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->loopCount:I

    .line 594
    .end local v0
    .end local v1
    :cond_1
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 1

    .line 604
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->dispose:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastDispose:I

    .line 605
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->ix:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lrx:I

    .line 606
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->iy:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lry:I

    .line 607
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->iw:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lrw:I

    .line 608
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->ih:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lrh:I

    .line 609
    iget-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastImage:Landroid/graphics/Bitmap;

    .line 610
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->bgColor:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastBgColor:I

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->dispose:I

    .line 612
    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transparency:Z

    .line 613
    iput v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->delay:I

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lct:[I

    .line 615
    return-void
.end method

.method protected setPixels()V
    .locals 12

    .line 130
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 132
    .local v0, "dest":[I
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastDispose:I

    const/4 v9, 0x0

    if-lez v1, :cond_4

    .line 133
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastDispose:I

    const/4 v2, 0x3

    const/4 v10, 0x2

    if-ne v1, v2, :cond_1

    .line 135
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->frameCount:I

    sub-int/2addr v1, v10

    .line 136
    .local v1, "n":I
    if-lez v1, :cond_0

    .line 137
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/gifmanager/GifOpenHelper;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 139
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastImage:Landroid/graphics/Bitmap;

    .line 142
    .end local v1
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    iget v8, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->height:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 145
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastDispose:I

    if-ne v1, v10, :cond_4

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "c":I
    iget-boolean v2, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->transparency:Z

    if-nez v2, :cond_2

    .line 149
    iget v1, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lastBgColor:I

    .line 151
    :cond_2
    move v2, v9

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lrh:I

    if-ge v2, v3, :cond_4

    .line 152
    iget v3, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lry:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lrx:I

    add-int/2addr v3, v4

    .line 153
    .local v3, "n1":I
    iget v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->lrw:I

    add-int/2addr v4, v3

    .line 154
    .local v4, "n2":I
    move v5, v3

    .local v5, "k":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 155
    aput v1, v0, v5

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 151
    .end local v3
    .end local v4
    .end local v5
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    .end local v1
    .end local v2
    :cond_4
    const/4 v1, 0x1

    .line 164
    .local v1, "pass":I
    const/16 v2, 0x8

    .line 165
    .local v2, "inc":I
    const/4 v3, 0x0

    .line 166
    .local v3, "iline":I
    nop

    .local v9, "i":I
    :goto_3
    move v4, v9

    .end local v9
    .local v4, "i":I
    iget v5, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->ih:I

    if-ge v4, v5, :cond_a

    .line 167
    move v5, v4

    .line 168
    .local v5, "line":I
    iget-boolean v6, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->interlace:Z

    if-eqz v6, :cond_6

    .line 169
    iget v6, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->ih:I

    if-lt v3, v6, :cond_5

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 171
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 180
    :pswitch_0    # 0x4
    const/4 v3, 0x1

    .line 181
    const/4 v2, 0x2

    goto :goto_4

    .line 176
    :pswitch_1    # 0x3
    const/4 v3, 0x2

    .line 177
    const/4 v2, 0x4

    .line 178
    goto :goto_4

    .line 173
    :pswitch_2    # 0x2
    const/4 v3, 0x4

    .line 174
    nop

    .line 184
    :cond_5
    :goto_4
    move v5, v3

    .line 185
    add-int/2addr v3, v2

    .line 187
    :cond_6
    iget v6, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->iy:I

    add-int/2addr v5, v6

    .line 188
    iget v6, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->height:I

    if-ge v5, v6, :cond_9

    .line 189
    iget v6, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    mul-int/2addr v6, v5

    .line 190
    .local v6, "k":I
    iget v7, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->ix:I

    add-int/2addr v7, v6

    .line 191
    .local v7, "dx":I
    iget v8, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->iw:I

    add-int/2addr v8, v7

    .line 192
    .local v8, "dlim":I
    iget v9, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    add-int/2addr v9, v6

    if-ge v9, v8, :cond_7

    .line 193
    iget v9, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    add-int v8, v6, v9

    .line 195
    :cond_7
    iget v9, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->iw:I

    mul-int/2addr v9, v4

    .line 196
    .local v9, "sx":I
    :goto_5
    if-ge v7, v8, :cond_9

    .line 198
    iget-object v10, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->pixels:[B

    add-int/lit8 v11, v9, 0x1

    .local v11, "sx":I
    aget-byte v9, v10, v9

    .end local v9
    and-int/lit16 v9, v9, 0xff

    .line 199
    .local v9, "index":I
    iget-object v10, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->act:[I

    aget v10, v10, v9

    .line 200
    .local v10, "c":I
    if-eqz v10, :cond_8

    .line 201
    aput v10, v0, v7

    .line 203
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 204
    .end local v9
    .end local v10
    nop

    .line 195
    move v9, v11

    goto :goto_5

    .line 166
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v11
    :cond_9
    add-int/lit8 v9, v4, 0x1

    .end local v4
    .local v9, "i":I
    goto :goto_3

    .line 207
    .end local v9
    :cond_a
    iget v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->width:I

    iget v5, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->image:Landroid/graphics/Bitmap;

    .line 208
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->readBlock()I

    .line 623
    iget v0, p0, Lcom/android/settings/gifmanager/GifOpenHelper;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifOpenHelper;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    :cond_1
    return-void
.end method
