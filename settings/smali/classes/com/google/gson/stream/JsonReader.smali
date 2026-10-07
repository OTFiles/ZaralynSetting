.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final NON_EXECUTE_PREFIX:[C


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1593
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1616
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v0, v2

    .line 283
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-eqz p1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1415
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    .line 1418
    return-void

    .line 1416
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1575
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1576
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1578
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    return-void

    .line 1582
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1583
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 1584
    return-void

    .line 1582
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1589
    .end local v0
    :cond_2
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1590
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 6
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1283
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1284
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1285
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1286
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1288
    :cond_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1291
    :goto_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1293
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 1294
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1297
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v1, :cond_2

    aget-char v1, v0, v3

    const v5, 0xfeff

    if-ne v1, v5, :cond_2

    .line 1298
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1299
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1300
    add-int/lit8 p1, p1, 0x1

    .line 1303
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, p1, :cond_1

    .line 1304
    return v4

    .line 1307
    :cond_3
    return v3
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    sparse-switch p1, :sswitch_data_0

    .line 769
    const/4 v0, 0x1

    return v0

    .line 755
    :sswitch_0    # 0x2f 0x3b 0x3d 0x5c 0x23
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 767
    :sswitch_1    # 0xa 0xc 0xd 0x20 0x2c 0x3a 0x5b 0x5d 0x7b 0x7d 0x9
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1

    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 9
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1334
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1335
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1337
    .local v2, "l":I
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1338
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1339
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1340
    nop

    .line 1406
    if-nez p1, :cond_0

    .line 1410
    const/4 v3, -0x1

    return v3

    .line 1407
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of input at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1342
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1343
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1346
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1347
    .local v1, "c":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 1348
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1349
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1350
    goto/16 :goto_2

    .line 1351
    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    .line 1352
    goto :goto_2

    .line 1355
    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9

    .line 1356
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1357
    const/4 v6, 0x2

    if-ne v4, v2, :cond_5

    .line 1358
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1359
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    .line 1360
    .local v7, "charsLoaded":Z
    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1361
    if-nez v7, :cond_5

    .line 1362
    return v1

    .line 1366
    .end local v7
    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1367
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v7, v0, v7

    .line 1368
    .local v7, "peek":C
    const/16 v8, 0x2a

    if-eq v7, v8, :cond_7

    if-eq v7, v5, :cond_6

    .line 1388
    return v1

    .line 1381
    :cond_6
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1382
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1383
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1384
    .end local v4
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1385
    nop

    .line 1335
    .end local v3
    .end local v7
    .local v1, "p":I
    :goto_1
    move v1, v3

    goto/16 :goto_0

    .line 1371
    .local v1, "c":I
    .restart local v4
    .restart local v7
    :cond_7
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1372
    const-string v3, "*/"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1375
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v6

    .line 1376
    .end local v4
    .restart local v3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1377
    goto :goto_1

    .line 1373
    .end local v3
    .restart local v4
    :cond_8
    const-string v3, "Unterminated comment"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1390
    .end local v7
    :cond_9
    const/16 v3, 0x23

    if-ne v1, v3, :cond_a

    .line 1391
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1397
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1398
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1399
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1400
    .end local v4
    .restart local v3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1405
    .end local v1
    goto :goto_1

    .line 1402
    .end local v3
    .restart local v1
    .restart local v4
    :cond_a
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1403
    return v1

    .line 1335
    .end local v1
    :cond_b
    :goto_2
    move v1, v4

    goto/16 :goto_0
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 995
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 997
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 998
    .local v2, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1000
    .local v3, "l":I
    move v4, v3

    move v3, v2

    .line 1001
    .local v2, "start":I
    .local v3, "p":I
    .local v4, "l":I
    :goto_1
    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 1002
    add-int/lit8 v6, v3, 0x1

    .local v6, "p":I
    aget-char v3, v0, v3

    .line 1004
    .local v3, "c":I
    if-ne v3, p1, :cond_0

    .line 1005
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1006
    sub-int v7, v6, v2

    sub-int/2addr v7, v5

    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1008
    :cond_0
    const/16 v7, 0x5c

    if-ne v3, v7, :cond_1

    .line 1009
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1010
    sub-int v7, v6, v2

    sub-int/2addr v7, v5

    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1011
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1013
    .end local v6
    .local v5, "p":I
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1014
    move v2, v5

    .line 1019
    move v3, v5

    goto :goto_2

    .line 1015
    .end local v5
    .restart local v6
    :cond_1
    const/16 v7, 0xa

    if-ne v3, v7, :cond_2

    .line 1016
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1017
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1019
    .end local v3
    :cond_2
    move v3, v6

    .end local v6
    .local v3, "p":I
    :goto_2
    goto :goto_1

    .line 1021
    :cond_3
    sub-int v6, v3, v2

    invoke-virtual {v1, v0, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1022
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1023
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1026
    .end local v2
    .end local v3
    .end local v4
    goto :goto_0

    .line 1024
    .restart local v2
    .restart local v3
    .restart local v4
    :cond_4
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1039
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_1

    .line 1040
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    :sswitch_0    # 0x2f 0x3b 0x3d 0x5c 0x23
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1058
    :sswitch_1    # 0xa 0xc 0xd 0x20 0x2c 0x3a 0x5b 0x5d 0x7b 0x7d 0x9
    goto :goto_1

    .line 1063
    :cond_1
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1064
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1065
    goto :goto_0

    .line 1072
    :cond_2
    if-nez v0, :cond_3

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 1075
    :cond_3
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1076
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1077
    const/4 v1, 0x0

    .line 1078
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1079
    nop

    .line 1084
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 1085
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .local v2, "result":Ljava/lang/String;
    goto :goto_2

    .line 1087
    .end local v2
    :cond_5
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    .restart local v2
    :goto_2
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1091
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1

    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 607
    .local v0, "c":C
    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 611
    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 615
    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 620
    :cond_2
    return v1

    .line 616
    :cond_3
    :goto_0
    const-string v2, "null"

    .line 617
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 618
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    goto :goto_3

    .line 612
    .end local v2
    .end local v3
    :cond_4
    :goto_1
    const-string v2, "false"

    .line 613
    .restart local v2
    const-string v3, "FALSE"

    .line 614
    .restart local v3
    const/4 v4, 0x6

    goto :goto_3

    .line 608
    .end local v2
    .end local v3
    :cond_5
    :goto_2
    const-string v2, "true"

    .line 609
    .restart local v2
    const-string v3, "TRUE"

    .line 610
    .restart local v3
    const/4 v4, 0x5

    .line 620
    .local v4, "peeking":I
    :goto_3
    nop

    .line 624
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 625
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_8

    .line 626
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 627
    return v1

    .line 629
    :cond_6
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v6

    aget-char v0, v7, v8

    .line 630
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    .line 631
    return v1

    .line 625
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 635
    .end local v6
    :cond_8
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_9

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 636
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 637
    return v1

    .line 641
    :cond_a
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 642
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4
.end method

.method private peekNumber()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 648
    .local v1, "buffer":[C
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 649
    .local v2, "p":I
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 651
    .local v3, "l":I
    const-wide/16 v4, 0x0

    .line 652
    .local v4, "value":J
    const/4 v6, 0x0

    .line 653
    .local v6, "negative":Z
    const/4 v7, 0x1

    .line 654
    .local v7, "fitsInLong":Z
    const/4 v8, 0x0

    .line 656
    .local v8, "last":I
    const/4 v9, 0x0

    move-wide v10, v4

    move v4, v3

    move v3, v2

    move v2, v9

    .line 660
    .local v2, "i":I
    .local v3, "p":I
    .local v4, "l":I
    .local v10, "value":J
    :goto_0
    add-int v5, v3, v2

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-ne v5, v4, :cond_2

    .line 661
    array-length v5, v1

    if-ne v2, v5, :cond_0

    .line 664
    return v9

    .line 666
    :cond_0
    add-int/lit8 v5, v2, 0x1

    invoke-direct {v0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 667
    nop

    .line 735
    move-wide/from16 v16, v10

    goto/16 :goto_5

    .line 669
    :cond_1
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 670
    iget v4, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 673
    :cond_2
    add-int v5, v3, v2

    aget-char v5, v1, v5

    .line 674
    .local v5, "c":C
    const/16 v14, 0x2b

    const/4 v15, 0x5

    if-eq v5, v14, :cond_1b

    const/16 v14, 0x45

    if-eq v5, v14, :cond_18

    const/16 v14, 0x65

    if-eq v5, v14, :cond_18

    packed-switch v5, :pswitch_data_0

    .line 709
    const/16 v14, 0x30

    if-lt v5, v14, :cond_d

    const/16 v14, 0x39

    if-le v5, v14, :cond_3

    .line 710
    move-wide/from16 v16, v10

    goto :goto_4

    .line 715
    :cond_3
    const/4 v12, 0x1

    if-eq v8, v12, :cond_c

    if-nez v8, :cond_4

    .line 716
    move-wide/from16 v16, v10

    goto :goto_3

    .line 718
    :cond_4
    if-ne v8, v13, :cond_8

    .line 719
    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-nez v13, :cond_5

    .line 720
    return v9

    .line 722
    :cond_5
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v10

    add-int/lit8 v15, v5, -0x30

    move-wide/from16 v16, v10

    int-to-long v9, v15

    .end local v10
    .local v16, "value":J
    sub-long/2addr v13, v9

    .line 723
    .local v13, "newValue":J
    const-wide v9, -0xcccccccccccccccL

    cmp-long v11, v16, v9

    if-gtz v11, :cond_7

    cmp-long v9, v16, v9

    if-nez v9, :cond_6

    cmp-long v9, v13, v16

    if-gez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    nop

    :cond_7
    :goto_1
    and-int/2addr v7, v12

    .line 725
    move-wide v9, v13

    .line 726
    .end local v13
    .end local v16
    .local v9, "value":J
    goto/16 :goto_b

    .end local v9
    .restart local v10
    :cond_8
    move-wide/from16 v16, v10

    .end local v10
    .restart local v16
    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 727
    const/4 v8, 0x4

    .line 659
    .end local v5
    .end local v16
    .restart local v10
    :cond_9
    :goto_2
    move-wide/from16 v10, v16

    goto/16 :goto_c

    .line 728
    .end local v10
    .restart local v5
    .restart local v16
    :cond_a
    if-eq v8, v15, :cond_b

    const/4 v9, 0x6

    if-ne v8, v9, :cond_9

    .line 729
    :cond_b
    const/4 v5, 0x7

    .line 659
    .end local v8
    .local v5, "last":I
    move v8, v5

    goto :goto_2

    .line 716
    .end local v16
    .local v5, "c":C
    .restart local v8
    .restart local v10
    :cond_c
    move-wide/from16 v16, v10

    .end local v10
    .restart local v16
    :goto_3
    add-int/lit8 v9, v5, -0x30

    neg-int v9, v9

    int-to-long v9, v9

    .line 717
    .end local v16
    .restart local v9
    const/4 v8, 0x2

    goto/16 :goto_b

    .line 710
    .end local v9
    .restart local v10
    :cond_d
    move-wide/from16 v16, v10

    .end local v10
    .restart local v16
    :goto_4
    invoke-direct {v0, v5}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v9

    if-nez v9, :cond_14

    .line 711
    nop

    .line 735
    .end local v5
    :goto_5
    if-ne v8, v13, :cond_11

    if-eqz v7, :cond_11

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v5, v16, v9

    if-nez v5, :cond_f

    if-eqz v6, :cond_e

    goto :goto_6

    .line 739
    :cond_e
    move-wide/from16 v9, v16

    goto :goto_8

    .line 736
    :cond_f
    :goto_6
    if-eqz v6, :cond_10

    move-wide/from16 v9, v16

    move-wide v11, v9

    goto :goto_7

    :cond_10
    move-wide/from16 v9, v16

    neg-long v11, v9

    .end local v16
    .restart local v9
    :goto_7
    iput-wide v11, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 737
    iget v5, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 738
    const/16 v5, 0xf

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    .line 739
    .end local v9
    .restart local v16
    :cond_11
    move-wide/from16 v9, v16

    .end local v16
    .restart local v9
    :goto_8
    if-eq v8, v13, :cond_13

    if-eq v8, v12, :cond_13

    const/4 v5, 0x7

    if-ne v8, v5, :cond_12

    goto :goto_9

    .line 744
    :cond_12
    const/4 v11, 0x0

    return v11

    .line 741
    :cond_13
    :goto_9
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 742
    const/16 v5, 0x10

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    .line 713
    .end local v9
    .restart local v5
    .restart local v16
    :cond_14
    move-wide/from16 v9, v16

    const/4 v11, 0x0

    .end local v16
    .restart local v9
    return v11

    .line 702
    .end local v9
    .restart local v10
    :pswitch_0    # 0x2e
    move-wide/from16 v18, v10

    move v11, v9

    move-wide/from16 v9, v18

    .end local v10
    .restart local v9
    if-ne v8, v13, :cond_15

    .line 703
    const/4 v8, 0x3

    .line 704
    goto :goto_b

    .line 706
    :cond_15
    return v11

    .line 676
    .end local v9
    .restart local v10
    :pswitch_1    # 0x2d
    move-wide v9, v10

    .end local v10
    .restart local v9
    if-nez v8, :cond_16

    .line 677
    const/4 v6, 0x1

    .line 678
    const/4 v8, 0x1

    .line 679
    goto :goto_b

    .line 680
    :cond_16
    if-ne v8, v15, :cond_17

    .line 681
    const/4 v8, 0x6

    .line 682
    goto :goto_b

    .line 684
    :cond_17
    const/4 v11, 0x0

    return v11

    .line 695
    .end local v9
    .restart local v10
    :cond_18
    move-wide/from16 v18, v10

    move v11, v9

    move-wide/from16 v9, v18

    .end local v10
    .restart local v9
    if-eq v8, v13, :cond_1a

    if-ne v8, v12, :cond_19

    goto :goto_a

    .line 699
    :cond_19
    return v11

    .line 696
    :cond_1a
    :goto_a
    const/4 v8, 0x5

    .line 697
    goto :goto_b

    .line 687
    .end local v9
    .restart local v10
    :cond_1b
    move-wide v9, v10

    .end local v10
    .restart local v9
    if-ne v8, v15, :cond_1c

    .line 688
    const/4 v8, 0x6

    .line 689
    nop

    .line 659
    .end local v5
    .end local v9
    .restart local v10
    :goto_b
    move-wide v10, v9

    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 656
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 691
    .end local v10
    .restart local v5
    .restart local v9
    :cond_1c
    const/4 v11, 0x0

    return v11

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_1    # 0x2d
        :pswitch_0    # 0x2e
    .end packed-switch
.end method

.method private push(I)V
    .locals 6
    .param p1, "newTop"    # I

    .line 1262
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1263
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1264
    .local v0, "newStack":[I
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1265
    .local v1, "newPathIndices":[I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1266
    .local v2, "newPathNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1267
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1270
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1271
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1273
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1274
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1505
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1506
    :cond_0
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1509
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1510
    .local v0, "escaped":C
    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    const/16 v2, 0x62

    if-eq v0, v2, :cond_b

    const/16 v2, 0x66

    if-eq v0, v2, :cond_a

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_9

    const/16 v3, 0x72

    if-eq v0, v3, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1512
    :pswitch_0    # 0x75
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v3, v5, :cond_3

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1513
    :cond_2
    const-string v1, "Unterminated escape sequence"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1516
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 1517
    .local v3, "result":C
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v5, "i":I
    add-int/lit8 v6, v5, 0x4

    .local v6, "end":I
    :goto_2
    if-ge v5, v6, :cond_7

    .line 1518
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v7, v7, v5

    .line 1519
    .local v7, "c":C
    shl-int/lit8 v8, v3, 0x4

    int-to-char v3, v8

    .line 1520
    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-gt v7, v8, :cond_4

    .line 1521
    add-int/lit8 v8, v7, -0x30

    add-int/2addr v8, v3

    int-to-char v3, v8

    goto :goto_3

    .line 1522
    :cond_4
    const/16 v8, 0x61

    if-lt v7, v8, :cond_5

    if-gt v7, v2, :cond_5

    .line 1523
    add-int/lit8 v8, v7, -0x61

    add-int/2addr v8, v1

    add-int/2addr v8, v3

    int-to-char v3, v8

    goto :goto_3

    .line 1524
    :cond_5
    const/16 v8, 0x41

    if-lt v7, v8, :cond_6

    const/16 v8, 0x46

    if-gt v7, v8, :cond_6

    .line 1525
    add-int/lit8 v8, v7, -0x41

    add-int/2addr v8, v1

    add-int/2addr v8, v3

    int-to-char v3, v8

    .line 1517
    .end local v7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1527
    .restart local v7
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v10, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v8, v9, v10, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1530
    .end local v5
    .end local v6
    .end local v7
    :cond_7
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1531
    return v3

    .line 1534
    .end local v3
    :pswitch_1    # 0x74
    const/16 v1, 0x9    # '\t'

    return v1

    .line 1543
    :cond_8
    const/16 v1, 0xd    # '\r'

    return v1

    .line 1540
    :cond_9
    return v1

    .line 1546
    :cond_a
    const/16 v1, 0xc    # '\f'

    return v1

    .line 1537
    :cond_b
    const/16 v1, 0x8    # '\b'

    return v1

    .line 1549
    :cond_c
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1550
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1557
    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1    # 0x74
        :pswitch_0    # 0x75
    .end packed-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1098
    .local v0, "buffer":[C
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1099
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1101
    .local v2, "l":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1102
    add-int/lit8 v4, v1, 0x1

    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1103
    .local v1, "c":I
    if-ne v1, p1, :cond_0

    .line 1104
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1105
    return-void

    .line 1106
    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 1107
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1108
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1109
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1110
    .end local v4
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1115
    move v1, v3

    goto :goto_2

    .line 1111
    .end local v3
    .restart local v4
    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1112
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1113
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1115
    .end local v1
    :cond_2
    move v1, v4

    .end local v4
    .local v1, "p":I
    :goto_2
    goto :goto_1

    .line 1116
    :cond_3
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1117
    .end local v1
    .end local v2
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1118
    :cond_4
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1443
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1456
    :cond_0
    return v2

    .line 1444
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 1445
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1446
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1447
    goto :goto_3

    .line 1449
    :cond_2
    nop

    .local v2, "c":I
    :goto_2
    move v0, v2

    .end local v2
    .local v0, "c":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1450
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1451
    nop

    .line 1443
    .end local v0
    :goto_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1449
    .restart local v0
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .end local v0
    .restart local v2
    goto :goto_2

    .line 1454
    .end local v2
    :cond_4
    return v3
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1426
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1428
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1429
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1430
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1431
    goto :goto_1

    .line 1432
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1433
    nop

    .line 1436
    .end local v0
    :cond_2
    :goto_1
    return-void

    .line 1435
    :cond_3
    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    :cond_0
    const/4 v0, 0x0

    .line 1124
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1131
    :sswitch_0    # 0x2f 0x3b 0x3d 0x5c 0x23
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1143
    :sswitch_1    # 0xa 0xc 0xd 0x20 0x2c 0x3a 0x5b 0x5d 0x7b 0x7d 0x9
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1144
    return-void

    .line 1147
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1148
    .end local v0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1

    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1566
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 345
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v1, v2, v3

    .line 348
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 353
    return-void

    .line 350
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 380
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 383
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 384
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 385
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 390
    return-void

    .line 387
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1215
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 1216
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1217
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1218
    return-void
.end method

.method doPeek()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 467
    .local v0, "peekStack":I
    const/16 v1, 0x27

    const/16 v3, 0x22

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/16 v6, 0x5d

    const/4 v7, 0x7

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v0, v2, :cond_0

    .line 468
    iget-object v12, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v13, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v13, v2

    aput v11, v12, v13

    goto/16 :goto_1

    .line 469
    :cond_0
    if-ne v0, v11, :cond_4

    .line 471
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    .line 472
    .local v12, "c":I
    if-eq v12, v9, :cond_3

    if-eq v12, v8, :cond_2

    if-ne v12, v6, :cond_1

    .line 474
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    .line 480
    :cond_1
    const-string v1, "Unterminated array"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 476
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 478
    :cond_3
    nop

    .line 482
    .end local v12
    goto/16 :goto_1

    :cond_4
    const/4 v12, 0x5

    if-eq v0, v5, :cond_1b

    if-ne v0, v12, :cond_5

    goto/16 :goto_3

    .line 520
    :cond_5
    if-ne v0, v10, :cond_a

    .line 521
    iget-object v13, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v14, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v14, v2

    aput v12, v13, v14

    .line 523
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    .line 524
    .restart local v12
    const/16 v13, 0x3a

    if-eq v12, v13, :cond_8

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_7

    .line 528
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 529
    iget v13, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v14, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v13, v14, :cond_6

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_6
    iget-object v13, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v14, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v13, v13, v14

    const/16 v14, 0x3e

    if-ne v13, v14, :cond_9

    .line 530
    iget v13, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v13, v2

    iput v13, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 534
    :cond_7
    const-string v1, "Expected \':\'"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 526
    :cond_8
    nop

    .line 536
    .end local v12
    :cond_9
    :goto_0
    goto :goto_1

    :cond_a
    const/4 v12, 0x6

    if-ne v0, v12, :cond_c

    .line 537
    iget-boolean v12, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v12, :cond_b

    .line 538
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 540
    :cond_b
    iget-object v12, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v13, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v13, v2

    aput v7, v12, v13

    goto :goto_1

    .line 541
    :cond_c
    if-ne v0, v7, :cond_e

    .line 542
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    .line 543
    .restart local v12
    const/4 v13, -0x1

    if-ne v12, v13, :cond_d

    .line 544
    const/16 v1, 0x11

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 546
    :cond_d
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 547
    iget v13, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v13, v2

    iput v13, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 549
    .end local v12
    goto :goto_1

    :cond_e
    if-eq v0, v4, :cond_1a

    .line 553
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    .line 554
    .restart local v12
    if-eq v12, v3, :cond_19

    if-eq v12, v1, :cond_18

    if-eq v12, v9, :cond_15

    if-eq v12, v8, :cond_15

    const/16 v1, 0x5b

    if-eq v12, v1, :cond_14

    if-eq v12, v6, :cond_13

    const/16 v1, 0x7b

    if-eq v12, v1, :cond_12

    .line 580
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 583
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v1

    .line 584
    .local v1, "result":I
    if-eqz v1, :cond_f

    .line 585
    return v1

    .line 588
    :cond_f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v1

    .line 589
    if-eqz v1, :cond_10

    .line 590
    return v1

    .line 593
    :cond_10
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 597
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 598
    const/16 v2, 0xa

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v2

    .line 594
    :cond_11
    const-string v2, "Expected value"

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 578
    .end local v1
    :cond_12
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v2

    .line 556
    :cond_13
    if-ne v0, v2, :cond_15

    .line 557
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    .line 576
    :cond_14
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    .line 563
    :cond_15
    if-eq v0, v2, :cond_17

    if-ne v0, v11, :cond_16

    goto :goto_2

    .line 568
    :cond_16
    const-string v1, "Unexpected value"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 564
    :cond_17
    :goto_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 565
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 566
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    .line 571
    :cond_18
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 572
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4

    .line 574
    :cond_19
    const/16 v1, 0x9

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 550
    .end local v12
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_1b
    :goto_3
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v5, v2

    aput v10, v4, v5

    .line 485
    const/16 v4, 0x7d

    if-ne v0, v12, :cond_1f

    .line 486
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 487
    .local v5, "c":I
    if-eq v5, v9, :cond_1e

    if-eq v5, v8, :cond_1d

    if-ne v5, v4, :cond_1c

    .line 489
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v11

    .line 495
    :cond_1c
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 491
    :cond_1d
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 493
    :cond_1e
    nop

    .line 498
    .end local v5
    :cond_1f
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 499
    .restart local v5
    if-eq v5, v3, :cond_24

    if-eq v5, v1, :cond_23

    if-eq v5, v4, :cond_21

    .line 512
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 513
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 514
    int-to-char v1, v5

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 515
    const/16 v1, 0xe

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 517
    :cond_20
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 506
    :cond_21
    if-eq v0, v12, :cond_22

    .line 507
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v11

    .line 509
    :cond_22
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 503
    :cond_23
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 504
    const/16 v1, 0xc

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 501
    :cond_24
    const/16 v1, 0xd

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 361
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 364
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 365
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 366
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 367
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 372
    return-void

    .line 369
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 398
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 401
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 402
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 403
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 404
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 405
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 410
    return-void

    .line 407
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getColumnNumber()I
    .locals 2

    .line 1315
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getLineNumber()I
    .locals 1

    .line 1311
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1470
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1471
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1480
    :pswitch_0    # 0x4 0x5 0x3
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1481
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 1482
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1474
    :pswitch_1    # 0x2 0x1
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1475
    nop

    .line 1470
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1492
    .end local v1
    .end local v2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 417
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 420
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isLenient()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 847
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 850
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 851
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 852
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 853
    return v3

    .line 854
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 855
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 856
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v4, v3

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 857
    return v2

    .line 859
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 895
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 899
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 900
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 901
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 902
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v1, v1

    return-wide v1

    .line 905
    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    .line 906
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 907
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    .line 908
    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    .line 910
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 911
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 912
    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 913
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a double but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 917
    :goto_2
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 918
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 919
    .local v3, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 920
    :cond_8
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " at line "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " column "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " path "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 923
    :cond_9
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 924
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 925
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 926
    return-wide v3
.end method

.method public nextInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1163
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1168
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1169
    iget-wide v3, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v1, v3

    .line 1170
    .local v1, "result":I
    iget-wide v3, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v5, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1174
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1175
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1176
    return v1

    .line 1171
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected an int but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1179
    .end local v1
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1180
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1181
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    .line 1182
    :cond_3
    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 1193
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected an int but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1183
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    const/16 v1, 0x27

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1185
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1186
    .restart local v1
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1187
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 1188
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1189
    .end local v1
    :catch_0
    move-exception v1

    .line 1191
    nop

    .line 1197
    :goto_2
    const/16 v1, 0xb

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1198
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1199
    .local v3, "asDouble":D
    double-to-int v1, v3

    .line 1200
    .restart local v1
    int-to-double v5, v1

    cmpl-double v5, v5, v3

    if-nez v5, :cond_7

    .line 1204
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1205
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1206
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v2, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v5

    .line 1207
    return v1

    .line 1201
    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextLong()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 941
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 945
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 946
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 947
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 948
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v1

    .line 951
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 952
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 953
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    .line 954
    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 965
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a long but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 955
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    const/16 v1, 0x27

    goto :goto_1

    :cond_5
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 958
    .local v3, "result":J
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 959
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v5

    .line 960
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 961
    .end local v3
    :catch_0
    move-exception v1

    .line 963
    nop

    .line 969
    :goto_2
    const/16 v1, 0xb

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 970
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 971
    .local v3, "asDouble":D
    double-to-long v5, v3

    .line 972
    .local v5, "result":J
    long-to-double v7, v5

    cmpl-double v1, v7, v3

    if-nez v1, :cond_6

    .line 976
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 977
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 978
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v7, v1, v2

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v2

    .line 979
    return-wide v5

    .line 973
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at line "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " column "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " path "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 782
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 786
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 787
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 788
    .end local v1
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 789
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 790
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 791
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 794
    .restart local v1
    :goto_1
    nop

    .line 796
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 797
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 798
    return-object v1

    .line 793
    .end local v1
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 872
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 875
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 876
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 877
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 882
    return-void

    .line 879
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 811
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 815
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 816
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 817
    .end local v1
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 818
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 819
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 820
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 821
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 822
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 823
    .restart local v1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 824
    .end local v1
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 825
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 826
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 827
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 828
    .restart local v1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 831
    :goto_1
    nop

    .line 833
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 834
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 835
    return-object v1

    .line 830
    .end local v1
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 428
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 432
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 461
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 459
    :pswitch_0    # 0x11
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 457
    :pswitch_1    # 0x10 0xf
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 444
    :pswitch_2    # 0xd 0xe 0xc
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 454
    :pswitch_3    # 0x9 0xa 0xb 0x8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 449
    :pswitch_4    # 0x7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 447
    :pswitch_5    # 0x6 0x5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 440
    :pswitch_6    # 0x4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 438
    :pswitch_7    # 0x3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 436
    :pswitch_8    # 0x2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 434
    :pswitch_9    # 0x1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9    # 0x1
        :pswitch_8    # 0x2
        :pswitch_7    # 0x3
        :pswitch_6    # 0x4
        :pswitch_5    # 0x5
        :pswitch_5    # 0x6
        :pswitch_4    # 0x7
        :pswitch_3    # 0x8
        :pswitch_3    # 0x9
        :pswitch_3    # 0xa
        :pswitch_3    # 0xb
        :pswitch_2    # 0xc
        :pswitch_2    # 0xd
        :pswitch_2    # 0xe
        :pswitch_1    # 0xf
        :pswitch_1    # 0x10
        :pswitch_0    # 0x11
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1226
    const/4 v0, 0x0

    move v1, v0

    .line 1228
    .local v1, "count":I
    :cond_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1229
    .local v2, "p":I
    if-nez v2, :cond_1

    .line 1230
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1233
    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1234
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1235
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1236
    :cond_2
    if-ne v2, v4, :cond_3

    .line 1237
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1238
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1239
    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1240
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1241
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1242
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1243
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1244
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1245
    :cond_5
    const/16 v3, 0xe

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    goto :goto_2

    .line 1247
    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    goto :goto_1

    .line 1249
    :cond_7
    const/16 v3, 0x9

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    goto :goto_0

    .line 1251
    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    .line 1252
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_3

    .line 1250
    :cond_9
    :goto_0
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_3

    .line 1248
    :cond_a
    :goto_1
    const/16 v3, 0x27

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_3

    .line 1246
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 1254
    :cond_c
    :goto_3
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1255
    .end local v2
    if-nez v1, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 1258
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    const-string v3, "null"

    aput-object v3, v0, v2

    .line 1259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
