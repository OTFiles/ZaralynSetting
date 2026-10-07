.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 191
    const-string v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "skipComments"    # Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 169
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 170
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 172
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 173
    return-void
.end method

.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 362
    .local v1, "gotEscape":Z
    const/4 v2, 0x0

    .line 364
    .local v2, "gotCR":Z
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-lt v3, p2, :cond_0

    .line 390
    .end local v3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 365
    .restart local v3
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 366
    .local v4, "c":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_1

    .line 369
    const/4 v2, 0x0

    .line 370
    goto :goto_1

    .line 373
    :cond_1
    const/4 v2, 0x0

    .line 374
    if-nez v1, :cond_4

    .line 376
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 377
    const/4 v1, 0x1

    goto :goto_1

    .line 378
    :cond_2
    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 379
    const/4 v2, 0x1

    goto :goto_1

    .line 381
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 386
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    const/4 v1, 0x0

    .line 364
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .end local v4
    goto :goto_0
.end method

.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 247
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 248
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    .line 251
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 252
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    .line 256
    :cond_1
    const/4 v0, 0x0

    .line 258
    .local v0, "filter":Z
    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 262
    .local v2, "c":C
    :goto_0
    const/16 v3, 0xd

    const/16 v4, 0x5c

    const/16 v5, 0x28

    const/4 v6, 0x1

    if-eq v2, v5, :cond_d

    .line 302
    const/16 v1, 0x22

    if-ne v2, v1, :cond_7

    .line 303
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v5, v6

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v5, "start":I
    :goto_1
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v7, v8, :cond_6

    .line 304
    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 305
    if-ne v2, v4, :cond_2

    .line 306
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v6

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 307
    const/4 v0, 0x1

    goto :goto_3

    .line 308
    :cond_2
    if-ne v2, v3, :cond_3

    .line 309
    const/4 v0, 0x1

    goto :goto_3

    .line 310
    :cond_3
    if-ne v2, v1, :cond_5

    .line 311
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v6

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 314
    if-eqz v0, :cond_4

    .line 315
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v6

    invoke-static {v1, v5, v3}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    goto :goto_2

    .line 317
    .end local v1
    :cond_4
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v6

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 319
    .restart local v1
    :goto_2
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 303
    .end local v1
    :cond_5
    :goto_3
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v6

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_1

    .line 322
    :cond_6
    new-instance v1, Ljavax/mail/internet/ParseException;

    const-string v3, "Unbalanced quoted string"

    invoke-direct {v1, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    .end local v5
    :cond_7
    const/16 v3, 0x20

    if-lt v2, v3, :cond_c

    const/16 v4, 0x7f

    if-ge v2, v4, :cond_c

    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_8

    goto :goto_6

    .line 334
    :cond_8
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v7, "start":I
    :goto_4
    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v8, v9, :cond_9

    goto :goto_5

    .line 335
    :cond_9
    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 338
    if-lt v2, v3, :cond_b

    if-ge v2, v4, :cond_b

    if-eq v2, v5, :cond_b

    if-eq v2, v3, :cond_b

    .line 339
    if-eq v2, v1, :cond_b

    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_a

    .line 340
    goto :goto_5

    .line 334
    :cond_a
    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v8, v6

    iput v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_4

    .line 342
    :cond_b
    :goto_5
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 327
    .end local v7
    :cond_c
    :goto_6
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v6

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 328
    new-array v1, v6, [C

    .line 329
    .local v1, "ch":[C
    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 330
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v2, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 265
    .end local v1
    :cond_d
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v6

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .restart local v7
    const/4 v8, 0x1

    .line 266
    .local v8, "nesting":I
    :goto_7
    if-lez v8, :cond_13

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v10, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v9, v10, :cond_e

    goto :goto_9

    .line 268
    :cond_e
    iget-object v9, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v10, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 269
    if-ne v2, v4, :cond_f

    .line 270
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v9, v6

    iput v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 271
    const/4 v0, 0x1

    goto :goto_8

    .line 272
    :cond_f
    if-ne v2, v3, :cond_10

    .line 273
    const/4 v0, 0x1

    goto :goto_8

    .line 274
    :cond_10
    if-ne v2, v5, :cond_11

    .line 275
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 276
    :cond_11
    const/16 v9, 0x29

    if-ne v2, v9, :cond_12

    .line 277
    add-int/lit8 v8, v8, -0x1

    .line 267
    :cond_12
    :goto_8
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v9, v6

    iput v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_7

    .line 279
    :cond_13
    :goto_9
    if-nez v8, :cond_17

    .line 282
    iget-boolean v3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v3, :cond_15

    .line 286
    if-eqz v0, :cond_14

    .line 287
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v6

    invoke-static {v1, v7, v3}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    goto :goto_a

    .line 289
    .end local v1
    :cond_14
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v6

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 291
    .restart local v1
    :goto_a
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v4, -0x3

    invoke-direct {v3, v4, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 295
    .end local v1
    :cond_15
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v3

    if-ne v3, v1, :cond_16

    .line 296
    sget-object v1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v1

    .line 297
    :cond_16
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .end local v7
    .end local v8
    goto/16 :goto_0

    .line 280
    .restart local v7
    .restart local v8
    :cond_17
    new-instance v1, Ljavax/mail/internet/ParseException;

    const-string v3, "Unbalanced comments"

    invoke-direct {v1, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private skipWhiteSpace()I
    .locals 3

    .line 348
    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 352
    const/4 v0, -0x4

    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    .line 350
    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    .line 351
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return v0

    .line 348
    :cond_1
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .end local v1
    goto :goto_0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .line 237
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 206
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 207
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 208
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    .line 209
    return-object v0
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 224
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 225
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 226
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    .line 227
    return-object v0
.end method
